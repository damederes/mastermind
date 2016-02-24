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
<<<<<<< HEAD
				
			</c:forEach>
			</div>
			

=======
				<c:if test = "${game.numberOfTry > 7}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[8][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${  result[8][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[8][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 6}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[7][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[7][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[7][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 5}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[6][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[6][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[6][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 4}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[5][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[5][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[5][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 3}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[4][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[4][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[4][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 2}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[3][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[3][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[3][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 1}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[2][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[2][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[2][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 0}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[1][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[1][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[1][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > -1}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[0][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien placée : ${ result[0][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal placée : ${ result[0][1] }</div></div>
					</div>
				</c:if>
			</div>
>>>>>>> 7a68556f80be5c995d96971b3c534e36d578f9c3

</body>

</html>