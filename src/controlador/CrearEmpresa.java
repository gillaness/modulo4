package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EmpresaDao;
import modelo.Empresa;
import modelo.User;

/**
 * Servlet implementation class CrearEmpreas
 */
@WebServlet("/CrearEmpresa")
public class CrearEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearEmpresa() {
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
			request.getRequestDispatcher("CrearEmpresa.jsp").forward(request, response);
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
			String rutEmpresa = request.getParameter("rute");
			String nombreEmpresa = request.getParameter("empresa");
			String direccion = request.getParameter("direccion");
			String contacto = request.getParameter("contacto");
			String telefono = request.getParameter("telefono");
			String email = request.getParameter("correo");
			
			Empresa empresa = new Empresa(rutEmpresa, nombreEmpresa, direccion, contacto, telefono, email );
			
			EmpresaDao empresadao = new EmpresaDao();
			
			boolean crear = empresadao.crearEmpresa(empresa);
			
			String mensaje = "";
			
			if(crear)
				mensaje = "Empresa creada exitosamente";
			else
				mensaje = "Error al crear la empresa";
			
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("CrearEmpresa.jsp").forward(request, response);
		}
		
	}

}
