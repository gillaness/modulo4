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
 * Servlet implementation class ListadoUsers
 */
@WebServlet("/ListadoUsers")
public class ListadoUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListadoUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones= (HttpSession) request.getSession(); 
		User suser= (User) sesiones.getAttribute("Admin");
		
		if (suser == null || suser.getId().trim() == "" ) {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			UserDao userdao = new UserDao();
			List<User> lusuarios = new ArrayList<User>();
			
			lusuarios = userdao.mostrarUser();
			
			request.setAttribute("listausers", lusuarios);
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
