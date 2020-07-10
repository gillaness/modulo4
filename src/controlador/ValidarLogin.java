package controlador;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.apache.commons.codec.digest.DigestUtils;

import dao.UserDao;
import modelo.User;

/**
 * Servlet implementation class ValidarUsuario
 */
@WebServlet("/ValidarLogin")
public class ValidarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidarLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String login = request.getParameter("user");
		String clave = request.getParameter("pass");
		UserDao userdao = new UserDao();
		User user = new User();
		
		String mensaje = "";
		
		if (login.trim().length() == 0 || login == null || clave.trim().length() == 0 || clave == null) {
			mensaje = "Debe ingresar usuario y clave";
		}
		else {
			user = userdao.obtenerUsuarioByLogin(login);
			if (user == null || user.getId() == "") {
				mensaje = "El usuario ingresado no existe en la base de datos";
			}
			else {
				
				try {
				    
				    String myHash = DigestUtils.md5Hex(clave).toUpperCase();
				    
				    if (myHash.equals(user.getPassword()) == false) {
				    	mensaje = "La clave ingresada no es correcta ";
				    }
				    /*else {
				    	mensaje = "Los datos son correctos";
				    }*/
				}
				catch(Exception e) {
					System.out.println(e);
					mensaje = "Ocurrió un error al ingresar al portal";
				}
				
				
			}
		}
		
		if (mensaje.trim().length() > 0 || mensaje.trim() != "") {
			request.setAttribute("lmensaje", mensaje);
			request.getRequestDispatcher("Login.jsp").forward(request, response);			
		}
		
		else if (user.getPerfil() == 1) {
			HttpSession sesiones = (HttpSession)request.getSession(); //sesion de administrador
			sesiones.setAttribute("Admin", user); // seteo de atributos de la sesion
			request.setAttribute("User", user);
			
			response.sendRedirect(request.getContextPath() + "/Administrador");

			
		}else if (user.getPerfil() == 2) {
			HttpSession sesiones = request.getSession(); //sesion de profesional
			sesiones.setAttribute("Profesional", user); // seteo de atributos de la sesion
			request.setAttribute("User", user);
			
			response.sendRedirect(request.getContextPath() + "/Profesional");
		
		}else if (user.getPerfil() == 3) {
			HttpSession sesiones = request.getSession(); //sesion de cliente
			sesiones.setAttribute("Cliente", user); // seteo de atributos de la sesion
			request.setAttribute("User", user);
			
			response.sendRedirect(request.getContextPath() + "/Cliente");
		}
	}

}
