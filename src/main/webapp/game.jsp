<%@page import="isen.jee.mastermind.Combination.Colors"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="isen.jee.mastermind.Game" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/semantic.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body id="example" class="site">
    <div class="ui fixed inverted main menu">
        <div class="container">
            <a class="launch item"><i class="content icon"></i></a>
            <div class="title item">
                <b>Mastermind Nicolas et Jean </b>
            </div>
        </div>
    </div>

    <div id="header" class="header segment">
        <div class="container">
            <h2 class="ui dividing header">Mastermind</h2>
            <div class="introduction">
                <p>Bienvenue à ce jeu de mastermind </p>
            </div>
        </div>
        <div class="column"><a href= "?refresh=1" class="ui icon  resetButton button">nouvelle partie</a></div>
    </div>
	
	<%
	
	String[][] couleurs = (String[][]) session.getAttribute("couleurs");
	Integer[][] result = (Integer[][]) session.getAttribute("result");
	Game game = (Game)session.getAttribute("game");
	String status = (String)session.getAttribute("status");

	%>

	<div>
	<c:if test = "${(game.numberOfTry < 9 || game.numberOfTry == null) && (status == '0'|| status == null)}">
	<form method="get" action="FirstServlet">

   		<p>
   		<c:forEach var="i" begin="1" end="4">
   			<label>Pion ${i}</label>
       		<select name="couleur${i}" id="couleur" >
        	   <option value="red" ${(couleurs[game.numberOfTry][i-1] == "red") ? "selected" : ""}>rouge</option>
        	   <option value="yellow" ${(couleurs[game.numberOfTry][i-1] == "yellow") ? "selected" : ""}>jaune</option>
        	   <option value="green" ${(couleurs[game.numberOfTry][i-1] == "green") ? "selected" : ""}>vert</option>
        	   <option value="blue" ${(couleurs[game.numberOfTry][i-1] == "blue") ? "selected" : ""}>bleu</option>
        	   <option value="orange" ${(couleurs[game.numberOfTry][i-1] == "orange") ? "selected" : ""}>orange</option>
        	   <option value="white" ${(couleurs[game.numberOfTry][i-1] == "white") ? "selected" : ""}>blanc</option>
        	   <option value="purple" ${(couleurs[game.numberOfTry][i-1] == "purple") ? "selected" : ""}>violet</option>
        	   <option value="black" ${(couleurs[game.numberOfTry][i-1] == "black") ? "selected" : ""}>noir</option>
       		</select>
   		</c:forEach>

   			
   			</p>
   		<input type="submit" value="Envoyer" >
	</form>
    </c:if>
	</div>
			<c:choose >
				<c:when test="${status =='gagne' }">			
					<div class="ui finalResult label"> Félicitations tu as gagné !!!</div>						
				</c:when>
				
				<c:when test="${status == 'perdu' }">
					<div class="ui finalResult label"> Malheureusement tu as perdu !!</div>
				</c:when>
				
			</c:choose>
			
			<div id="board" class="ui six column grid">
			<c:forEach var="i" begin="0" end="9">
				<c:if test = "${game.numberOfTry > 8-i}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[9-i][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9-i][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9-i][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9-i][3] } button"></a></div>
					<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[9-i][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[9-i][1] }</div></div>
					</div>
				</c:if>

				
			</c:forEach>
			</div>
			


</body>

</html>