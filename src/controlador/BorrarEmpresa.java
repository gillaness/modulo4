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

import dao.EmpresaDao;
import modelo.Empresa;
import modelo.User;

/**
 * Servlet implementation class BorrarEmpresa
 */
@WebServlet("/BorrarEmpresa")
public class BorrarEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrarEmpresa() {
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
			String rutEmpresa = request.getParameter("rut");
			Empresa empresa = new Empresa();
			empresa.setRutEmpresa(rutEmpresa);
			
			EmpresaDao empresadao = new EmpresaDao();
			boolean eliminar = empresadao.eliminarEmpresa(empresa);

			List<Empresa> listadoeliminar = new ArrayList<Empresa>();
			listadoeliminar = empresadao.mostrarEmpresa();
			
			String mensaje = "";
			
			if (eliminar)
				mensaje = "La empresa ha sido eliminado exitosamente";
			else
				mensaje = "Ocurrió un problema al eliminar la empresa";
			
			request.setAttribute("mensaje", mensaje);
			request.setAttribute("listaempresas", listadoeliminar);
			request.getRequestDispatcher("VerEmpresas.jsp").forward(request, response);
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
