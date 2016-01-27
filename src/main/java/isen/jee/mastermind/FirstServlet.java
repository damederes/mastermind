package isen.jee.mastermind;

import java.io.IOException;

import javax.enterprise.context.SessionScoped;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = "/g/*")
public class FirstServlet extends HttpServlet{

	
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String couleur1 = request.getParameter("couleur1");
		String couleur2 = request.getParameter("couleur2");
		String couleur3 = request.getParameter("couleur3");
		String couleur4 = request.getParameter("couleur4");


		request.setAttribute("couleur1", couleur1);
		request.setAttribute("couleur2", couleur2);
		request.setAttribute("couleur3", couleur3);
		request.setAttribute("couleur4", couleur4);

		Piece pion1 = new Piece();
		Piece pion2 = new Piece();
		Piece pion3 = new Piece();
		Piece pion4 = new Piece();
		
		request.getAttribute("couleur1");
		request.getAttribute("couleur2");
		request.getAttribute("couleur3");
		request.getAttribute("couleur4");
		
		pion1.setColor(couleur1);
		pion2.setColor(couleur2);
		pion3.setColor(couleur3);
		pion4.setColor(couleur4);
		
		request.setAttribute("pion1", pion1);
		request.setAttribute("pion2", pion2);
		request.setAttribute("pion3", pion3);
		request.setAttribute("pion4", pion4);
		
		

		//partie de Nico
		
		HttpSession session = request.getSession();
		
		Combination newTry = new Combination();
		Combination randomCombination = new Combination();
		
		if (session.getAttribute("randomCombination") == null){
			randomCombination.createCombination();
			session.setAttribute("randomCombination", randomCombination);
			
		}
		else{
			randomCombination = (Combination)request.getSession().getAttribute("randomCombination");
		}
		
		
		String[] colors = new String[4]; 
		colors[0] = couleur1;
		colors[1] = couleur2;
		colors[2] = couleur3;
		colors[3] = couleur4;
		newTry.createCombination(colors);
		newTry.compareCombination(randomCombination);
		response.getWriter().println(randomCombination.combinationArray[0].getColor());
		response.getWriter().println(randomCombination.combinationArray[1].getColor());
		response.getWriter().println(randomCombination.combinationArray[2].getColor());
		response.getWriter().println(randomCombination.combinationArray[3].getColor());
		response.getWriter().println(newTry.combinationArray[0].getColor());
		response.getWriter().println(newTry.combinationArray[1].getColor());
		response.getWriter().println(newTry.combinationArray[2].getColor());
		response.getWriter().println(newTry.combinationArray[3].getColor());
		response.getWriter().print(newTry.responseArray[0]);
		response.getWriter().print(newTry.responseArray[1]);
		
		//response.getWriter().println(couleur1);	
		
		
		this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);

		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String couleur1 = request.getParameter("couleur1");
		request.setAttribute("couleur1", couleur1);
		this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);
		//doGet(request, response);
	}
	
}
