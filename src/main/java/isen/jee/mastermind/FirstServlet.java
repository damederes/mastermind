package isen.jee.mastermind;

import java.io.IOException;

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
		HttpSession session = request.getSession();
		Game game;
		String[][] couleurs;
		Integer[][] result;
		
		System.out.println("cnksdlqmcnejkm");
		
		String refresh = request.getParameter("refresh");
		
		
		System.out.println(refresh);
		if (refresh=="true"){
			session.removeAttribute("game");
		}
		System.out.println("passe");
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
		
		if (session.getAttribute("result") == null){
			result = new Integer[10][2];
			session.setAttribute("result", result);
			
		}
		else{
			result = (Integer[][])request.getSession().getAttribute("result");
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

			}
		}
		

		request.setAttribute("couleur1", couleur1);
		request.setAttribute("couleur2", couleur2);
		request.setAttribute("couleur3", couleur3);
		request.setAttribute("couleur4", couleur4);
		

		Combination newTry = new Combination(couleur1,couleur2,couleur3,couleur4);
		game.testNewCombination(newTry);
		result[game.numberOfTry][0]=game.result[0];
		result[game.numberOfTry][1]=game.result[1];
		request.setAttribute("status", game.endingStatus());
		request.setAttribute("couleurs", couleurs);
		request.setAttribute("result", result);
		
		this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);

		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String couleur1 = request.getParameter("couleur1");
		request.setAttribute("couleur1", couleur1);
		//this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);
		//doGet(request, response);
	}
	
}
