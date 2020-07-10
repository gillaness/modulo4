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

import dao.AgendaDao;
import dao.EmpresaDao;
import modelo.Agenda;
import modelo.Empresa;
import modelo.User;

/**
 * Servlet implementation class CrearAgenda
 */
@WebServlet("/CrearAgenda")
public class CrearAgenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearAgenda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Profesional");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else {
			
			EmpresaDao empresadao = new EmpresaDao();
			List<Empresa> lempresas = new ArrayList<Empresa>();
			
			lempresas = empresadao.mostrar();
			request.setAttribute("listaempresas", lempresas);
			
			request.getRequestDispatcher("CrearAgenda.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				HttpSession sesiones = (HttpSession) request.getSession(); 
				User suser= (User) sesiones.getAttribute("Profesional");
				
				if (suser == null || suser.getId().trim() == "" ) {
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}else {
					
					EmpresaDao empresadao = new EmpresaDao();
					List<Empresa> lempresas = new ArrayList<Empresa>();
					
					lempresas = empresadao.mostrar();
					request.setAttribute("listaempresas", lempresas);

					String idUsuario = request.getParameter("idUser");
					String estatus = "Pendiente";
					int rutEmpresa = Integer.parseInt(request.getParameter("empresa"));
					String fechaVisita = request.getParameter("fecha");
					String horaVisita = request.getParameter("hora");
					int tipoVisita = Integer.parseInt(request.getParameter("tipo"));
					
					Agenda agenda = new Agenda(idUsuario, rutEmpresa, fechaVisita, horaVisita, tipoVisita, estatus);
					
					AgendaDao agendadao = new AgendaDao();
					
					boolean agregar = agendadao.crear(agenda);
					
					String mensaje = "";
					
					if(agregar)
						mensaje = "Agenda creada exitosamente";
					else
						mensaje = "Error al crear agenda";
					
					request.setAttribute("mensaje", mensaje);
					request.getRequestDispatcher("CrearAgenda.jsp").forward(request, response);
				}

	}
}