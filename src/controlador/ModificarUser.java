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

//import org.apache.commons.codec.digest.DigestUtils;

import dao.EmpresaDao;
import dao.UserDao;
import modelo.Empresa;
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
			
			EmpresaDao empresadao = new EmpresaDao();
			List<Empresa> lempresas = new ArrayList<Empresa>();
			
			lempresas = empresadao.mostrar();
			
			
			
			String userId = request.getParameter("id");
			
			UserDao userdao = new UserDao();
			User user = new User();
			user = userdao.obtenerPorId(userId);

			
			request.setAttribute("datos", user);
			request.setAttribute("listaempresas", lempresas);

			request.getRequestDispatcher("EditarUsuario.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Admin");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			
			EmpresaDao empresadao = new EmpresaDao();
			List<Empresa> lempresas = new ArrayList<Empresa>();
			
			lempresas = empresadao.mostrar();
			
			
			String id = request.getParameter("userId");
			String nombre = request.getParameter("nombre");
		//	String password = request.getParameter("password").toUpperCase();
			int perfil = Integer.parseInt(request.getParameter("perfil"));
			int empresa = Integer.parseInt(request.getParameter("empresa"));
			
			User user = new User(id, nombre, perfil, empresa);
			
			UserDao userdao = new UserDao();
			
			boolean editar = userdao.editar(user);
			
			String mensaje ="";
			
			if(editar)
				mensaje = "Se han actualizado los datos del usuario";
			else
				mensaje = "No se actualizaron los datos del usuario";
			
			request.setAttribute("listaempresas", lempresas);
			request.setAttribute("mensaje", mensaje);
			request.setAttribute("datos", user);
			request.getRequestDispatcher("EditarUsuario.jsp").forward(request, response);
		}
		
	}

}
