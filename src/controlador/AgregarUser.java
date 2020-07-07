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

import dao.EmpresaDao;
import dao.UserDao;
import modelo.Empresa;
import modelo.User;

/**
 * Servlet implementation class CrearUser
 */
@WebServlet("/AgregarUser")
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
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Admin");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else {
			
			EmpresaDao empresadao = new EmpresaDao();
			List<Empresa> lempresas = new ArrayList<Empresa>();
			
			lempresas = empresadao.mostrarEmpresa();
			request.setAttribute("listaempresas", lempresas);
			
			request.getRequestDispatcher("CrearUsuario.jsp").forward(request, response);
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
		}else {

			String id = request.getParameter("rut");
			String nombre = request.getParameter("nombre");
			String password = DigestUtils.md5Hex(request.getParameter("pass")).toUpperCase();
			int perfil = Integer.parseInt(request.getParameter("perfil"));
			int empresa = Integer.parseInt(request.getParameter("empresa"));
			
			User usuario = new User(id,nombre,password,perfil, empresa);
			
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

}
