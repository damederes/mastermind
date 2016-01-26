package isen.jee.mastermind;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/g/*")
public class FirstServlet extends HttpServlet{

	
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//this.getServletContext().getRequestDispatcher("/game.jsp").forward(request, response);
		
		String couleur1 = request.getParameter("couleur1");
		String couleur2 = request.getParameter("couleur2");
		String couleur3 = request.getParameter("couleur3");
		String couleur4 = request.getParameter("couleur4");
		
		
		
		request.setAttribute("couleur1", couleur1);
		request.setAttribute("couleur2", couleur2);
		request.setAttribute("couleur3", couleur3);
		request.setAttribute("couleur4", couleur4);
		Combination newTry = new Combination();
		String[] colors = new String[4]; 
		colors[0] = couleur1;
		colors[1] = couleur2;
		colors[2] = couleur3;
		colors[3] = couleur4;
		newTry.createCombination(colors);
		newTry.compareCombination(newTry);
		response.getWriter().print(newTry.responseArray[0]);
		
		//response.getWriter().println(couleur1);	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
