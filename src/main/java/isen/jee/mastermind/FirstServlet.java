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
		if (session.getAttribute("game") == null){
			game = new Game();
			session.setAttribute("game", game);
			
		}
		else{
			game = (Game)request.getSession().getAttribute("game");
		}
		
		
		String[][] couleurs=new String[10][4];
		
		String couleur1 = request.getParameter("couleur1");
		String couleur2 = request.getParameter("couleur2");
		String couleur3 = request.getParameter("couleur3");
		String couleur4 = request.getParameter("couleur4");

		for (int i = 1; i < 5; i++){
			couleurs[game.numberOfTry][i-1] = request.getParameter("couleur"+i);
			
		}
		/*
		couleurs[0][0]=request.getParameter("couleur1");
		couleurs[0][1]=request.getParameter("couleur2");
		couleurs[0][2]=request.getParameter("couleur3");
		couleurs[0][3]=request.getParameter("couleur4");*/

		request.setAttribute("couleurs", couleurs);
		
//		request.setAttribute("couleur1", couleur1);
//		request.setAttribute("couleur2", couleur2);
//		request.setAttribute("couleur3", couleur3);
//		request.setAttribute("couleur4", couleur4);

		

		
		Combination combination = new Combination(couleur1, couleur2, couleur3, couleur4);
		request.setAttribute("couleur1", couleur1);
		request.setAttribute("couleur2", couleur2);
		request.setAttribute("couleur3", couleur3);
		request.setAttribute("couleur4", couleur4);
		

		//partie de Nico

		Combination newTry = new Combination(couleur1,couleur2,couleur3,couleur4);
		game.testNewCombination(newTry);
	
		
		
		
		
		String string1 = game.referenceCombination.colors[0].toString();
		String string2 = game.referenceCombination.colors[1].toString();
		String string3 = game.referenceCombination.colors[2].toString();
		String string4 = game.referenceCombination.colors[3].toString();
		String string5 = newTry.colors[0].toString();
		String string6 = newTry.colors[1].toString();
		String string7 = newTry.colors[2].toString();
		String string8 = newTry.colors[3].toString();
		Integer string9 = game.result[0];
		Integer string10 = game.result[1];
		Boolean string11 = game.isEnded();
		
		request.setAttribute("string1", string1);
		request.setAttribute("string2", string2);
		request.setAttribute("string3", string3);
		request.setAttribute("string4", string4);
		request.setAttribute("string5", string5);
		request.setAttribute("string6", string6);
		request.setAttribute("string7", string7);
		request.setAttribute("string8", string8);
		request.setAttribute("string9", string9);
		request.setAttribute("string10", string10);
		request.setAttribute("string11", string11);
		

		
		
		this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);

		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String couleur1 = request.getParameter("couleur1");
		request.setAttribute("couleur1", couleur1);
		//this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);
		//doGet(request, response);
	}
	
}
