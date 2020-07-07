package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccidenteDao;
import modelo.Accidente;
import modelo.User;

/**
 * Servlet implementation class CrearRegistroAccidente
 */
@WebServlet("/CrearRegistroAccidente")
public class CrearRegistroAccidente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearRegistroAccidente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Cliente");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("ReportarAccidente.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Cliente");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}else {
			
			String descripcionAccidente = request.getParameter("detalleaccidente");
			String fechaAccidente = request.getParameter("fechaaccidente");
			String horaAccidente = request.getParameter("horaaccidente");
			String areaAccidente = request.getParameter("area");
			int tipoAccidente = Integer.parseInt(request.getParameter("tipo"));
			String nombreAccidentado = request.getParameter("accidentado");
			String idUser = request.getParameter("idUser");
			int idEmpresa = Integer.parseInt(request.getParameter("idEmpresa"));

			
			Accidente accidente = new Accidente(descripcionAccidente, fechaAccidente, horaAccidente, areaAccidente, tipoAccidente, idUser, idEmpresa, nombreAccidentado);
			
			AccidenteDao accidentedao = new AccidenteDao();
			
			boolean crear = accidentedao.crearRegistro(accidente);
			
			String mensaje = "";
			
			if(crear)
				mensaje = "Registro Creado exitosamente";
			else
				mensaje = "Error al crear el registro";
			
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("ReportarAccidente.jsp").forward(request, response);
		}
	}

}
