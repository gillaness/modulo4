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
 * Servlet implementation class ModificarEmpresa
 */
@WebServlet("/ModificarEmpresa")
public class ModificarEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarEmpresa() {
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
			String rutEmpresa = request.getParameter("rut");
			
			EmpresaDao empresadao = new EmpresaDao();
			Empresa empresa = new Empresa();
			empresa = empresadao.obtenerId(rutEmpresa);
			
			request.setAttribute("datos", empresa);
			request.getRequestDispatcher("EditarEmpresa.jsp").forward(request, response);
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
			String idEmpresa = request.getParameter("rute");
			String nombreEmpresa = request.getParameter("empresa");
			String direccion = request.getParameter("direccion");
			String contacto = request.getParameter("contacto");
			String telefono = request.getParameter("telefono");
			String email = request.getParameter("correo");
			
			Empresa empresa = new Empresa(idEmpresa, nombreEmpresa, direccion, contacto, telefono, email);
			
			EmpresaDao empresadao = new EmpresaDao();
			
			boolean editar = empresadao.editar(empresa);
			
			String mensaje ="";
			
			if(editar)
				mensaje = "Se han actualizado los datos de la empresa";
			else
				mensaje = "No se actualizaron los datos de la empresa";
			
			request.setAttribute("mensaje", mensaje);
			request.setAttribute("datos", empresa);
			request.getRequestDispatcher("EditarEmpresa.jsp").forward(request, response);
		}
	}

}
