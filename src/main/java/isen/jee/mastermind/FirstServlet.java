package isen.jee.mastermind;

import java.io.IOException;

import javax.enterprise.context.SessionScoped;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import isen.jee.mastermind.Combination.Colors;


@WebServlet(urlPatterns = "/g/*")
public class FirstServlet extends HttpServlet{

	
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Game game;
		String[][] couleurs;
		if (session.getAttribute("game") == null){
			game = new Game();
			session.setAttribute("game", game);
			
		}
		else{
			game = (Game)request.getSession().getAttribute("game");
		}
		
		if (session.getAttribute("couleurs") == null){
			 couleurs=new String[10][4];
			 session.setAttribute("couleurs", couleurs);
			
			
		}
		else{
			couleurs = (String[][])request.getSession().getAttribute("couleurs");
		}
		
		
		String couleur1 = request.getParameter("couleur1");
		String couleur2 = request.getParameter("couleur2");
		String couleur3 = request.getParameter("couleur3");
		String couleur4 = request.getParameter("couleur4");

		if (game.numberOfTry>8){
		}
		else {
			for (int i = 1; i < 5; i++){

				couleurs[game.numberOfTry+1][i-1] = request.getParameter("couleur"+i);
				System.out.println(couleurs[0][0]);
				System.out.println(game.numberOfTry);
			}
		}
		

		request.setAttribute("couleurs", couleurs);
		request.setAttribute("result", game.result);


		
		Combination combination = new Combination(couleur1, couleur2, couleur3, couleur4);
		request.setAttribute("couleur1", couleur1);
		request.setAttribute("couleur2", couleur2);
		request.setAttribute("couleur3", couleur3);
		request.setAttribute("couleur4", couleur4);
		

		//partie de Nico

		Combination newTry = new Combination(couleur1,couleur2,couleur3,couleur4);
		game.testNewCombination(newTry);

		
		
		this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);

		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String couleur1 = request.getParameter("couleur1");
		request.setAttribute("couleur1", couleur1);
		//this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);
		//doGet(request, response);
	}
	
}
