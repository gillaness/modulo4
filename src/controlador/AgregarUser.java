package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import dao.UserDao;
import modelo.User;

/**
 * Servlet implementation class CrearUser
 */
@WebServlet("/CrearUser")
public class AgregarUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("CrearUsuario.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("rut");
		String nombre = request.getParameter("nombre");
		String password = DigestUtils.md5Hex(request.getParameter("pass")).toUpperCase();
		int perfil = Integer.parseInt(request.getParameter("perfil"));
		
		User usuario = new User(id,nombre,password,perfil);
		
		UserDao usuariodao = new UserDao();
		
		boolean agregar = usuariodao.crearUser(usuario);
		
		String mensaje = "";
		
		if(agregar)
			mensaje = "Usuario agregado exitosamente";
		else
			mensaje = "Error al crear el usuario";
		
		request.setAttribute("cumensaje", mensaje);
		request.getRequestDispatcher("CrearUsuario.jsp").forward(request, response);
	}

}
