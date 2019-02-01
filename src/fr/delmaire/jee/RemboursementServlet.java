package fr.delmaire.jee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RemboursementServlet
 */
public class RemboursementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemboursementServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// les paramètres de la requête
		String nom = request.getParameter("nom");
		System.out.println("nom: " + nom);
		String prenom = request.getParameter("prenom");
		String date = request.getParameter("date");
		String sommeString = request.getParameter("somme");
	// transformer une chaine de caractères en nombre
		double somme = Double.parseDouble(sommeString);
		
		// transmettre les variables à la jsp
		request.setAttribute("nom", nom);
		request.setAttribute("prenom", prenom);
		request.setAttribute("somme", somme);
		request.setAttribute("date", date);
		
		this.getServletContext()
		.getRequestDispatcher("/WEB-INF/remboursement.jsp")
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
