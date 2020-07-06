package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
 * Servlet implementation class ModificarUser
 */
@WebServlet("/ModificarUser")
public class ModificarUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Admin");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			UserDao userdao = new UserDao();
			List<User> lusuarios = new ArrayList<User>();
			
			lusuarios = userdao.mostrarUser();
			
			request.setAttribute("listausers", lusuarios);
			request.getRequestDispatcher("EditarUsuario.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("userId");
		String nombre = request.getParameter("nombre");
		String password = DigestUtils.md5Hex(request.getParameter("password")).toUpperCase();
		int perfil = Integer.parseInt(request.getParameter("perfil"));
		
		User user = new User(id, nombre, password,perfil);
		
		UserDao userdao = new UserDao();
		
		boolean editar = userdao.editarUser(user);
		
		String mensaje ="";
		
		if(editar)
			mensaje = "Se han actualizado los datos del usuario";
		else
			mensaje = "No se actualizaron los datos del usuario";
		
		request.setAttribute("datos", user);
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("EditarUsuario.jsp").forward(request, response);
	}

}
