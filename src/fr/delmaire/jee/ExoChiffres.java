package fr.delmaire.jee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExoChiffres
 */
public class ExoChiffres extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExoChiffres() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombreString = request.getParameter("nombre");
		int nombre = Integer.parseInt(nombreString);
		String moduloString = request.getParameter("mod");
		int modulo = Integer.parseInt(moduloString);
		
		request.setAttribute("nombre",nombre);
		request.setAttribute("mod",modulo);
		
		this.getServletContext()
		.getRequestDispatcher("/WEB-INF/nombres.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
