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

import dao.UserDao;
import modelo.User;

/**
 * Servlet implementation class BorrarUsuario
 */
@WebServlet("/BorrarUsuario")
public class BorrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrarUsuario() {
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
		}else {
			String userid = request.getParameter("id");
			User user = new User();
			user.setId(userid);
			
			UserDao userdao = new UserDao();
			boolean elimino = userdao.eliminarUsuario(user);

			List<User> listadoeliminar = new ArrayList<User>();
			listadoeliminar = userdao.mostrarUser();
			
			String mensaje = "";
			
			if (elimino)
				mensaje = "El usuario ha sido eliminado exitosamente";
			else
				mensaje = "Ocurrió un problema al eliminar el usuario";
			
			request.setAttribute("mensaje", mensaje);
			request.setAttribute("listausers", listadoeliminar);
			request.getRequestDispatcher("VerUsuarios.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
