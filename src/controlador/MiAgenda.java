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
import modelo.Agenda;
import modelo.User;

/**
 * Servlet implementation class MiAgenda
 */
@WebServlet("/MiAgenda")
public class MiAgenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiAgenda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones= (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Profesional");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			
			String userId = suser.getId();
			
			AgendaDao agendadao = new AgendaDao();
			List<Agenda> lagenda = new ArrayList<Agenda>();
			
			lagenda = agendadao.mostrarAgendaPorProfesional(userId);
			
			request.setAttribute("listaagenda", lagenda);
			request.getRequestDispatcher("VerAgenda.jsp").forward(request, response);
					
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
