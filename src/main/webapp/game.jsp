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
                <p>Bienvenue � ce jeu de mastermind </p>
            </div>
        </div>
        <div class="column"><a href= "?refresh=true" class="ui icon  resetButton button">nouvelle partie</a></div>
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

   			<label>Pion 1</label>
       		<select name="couleur1" id="couleur" >
        	   <option value="red">rouge</option>
        	   <option value="yellow">jaune</option>
        	   <option value="green">vert</option>
        	   <option value="blue">bleu</option>
        	   <option value="orange">orange</option>
        	   <option value="white">blanc</option>
        	   <option value="purple">violet</option>
        	   <option value="black">noir</option>
       		</select>
			
			<label>Pion 2</label>
       		<select name="couleur2" id="couleur">
        	   <option value="red">rouge</option>
        	   <option value="yellow">jaune</option>
        	   <option value="green">vert</option>
        	   <option value="blue">bleu</option>
        	   <option value="orange">orange</option>
        	   <option value="white">blanc</option>
        	   <option value="purple">violet</option>
        	   <option value="black">noir</option>
       		</select>

   			<label>Pion 3</label>
       		<select name="couleur3" id="couleur">
        	   <option value="red">rouge</option>
        	   <option value="yellow">jaune</option>
        	   <option value="green">vert</option>
        	   <option value="blue">bleu</option>
        	   <option value="orange">orange</option>
        	   <option value="white">blanc</option>
        	   <option value="purple">violet</option>
        	   <option value="black">noir</option>
       		</select>

   			<label>Pion 4</label>
       		<select name="couleur4" id="couleur">
         	   <option value="red">rouge</option>
        	   <option value="yellow">jaune</option>
        	   <option value="green">vert</option>
        	   <option value="blue">bleu</option>
        	   <option value="orange">orange</option>
        	   <option value="white">blanc</option>
        	   <option value="purple">violet</option>
        	   <option value="black">noir</option>
       		</select>
   			</p>
   		<input type="submit" value="Envoyer" >
	</form>
    </c:if>
	</div>
			<c:choose >
				<c:when test="${status =='gagn�' }">			
					<div class="ui finalResult label"> F�licitations tu as gagn� !!!</div>						
				</c:when>
				
				<c:when test="${status == 'perdu' }">
					<div class="ui finalResult label"> Malheureusement tu as perdu !!</div>
				</c:when>
				
			</c:choose>
			
			<div id="board" class="ui six column grid">
				<c:if test = "${game.numberOfTry > 8}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[9][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[9][3] } button"></a></div>
					<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[9][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[9][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 7}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[8][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[8][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${  result[8][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[8][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 6}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[7][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[7][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[7][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[7][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 5}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[6][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[6][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[6][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[6][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 4}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[5][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[5][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[5][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[5][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 3}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[4][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[4][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[4][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[4][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 2}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[3][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[3][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[3][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[3][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 1}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[2][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[2][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[2][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[2][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > 0}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[1][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[1][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[1][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[1][1] }</div></div>
					</div>
				</c:if>
				<c:if test = "${game.numberOfTry > -1}" >
                	<div class="column"><a class="ui icon massive ${ couleurs[0][0] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][1] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][2] } button"></a></div>
                	<div class="column"><a class="ui icon massive ${ couleurs[0][3] } button"></a></div>
                	<div class="results">
	                	<div class="column"><div class="ui result label">bonne couleur bien plac�e : ${ result[0][0] }</div></div>
	                	<div class="column"><div class="ui result label">bonne couleur mal plac�e : ${ result[0][1] }</div></div>
					</div>
				</c:if>
			</div>
<%-- 
	<div id="board" class="ui six column grid">
	
                <div class="column"><a href="" class="ui icon massive ${ couleurs[0][0] } button"></a></div>
                <div class="column"><a href="" class="ui icon massive ${ couleurs[0][1] } button"></a></div>
                <div class="column"><a href="" class="ui icon massive ${ couleurs[0][2] } button"></a></div>
                <div class="column"><a href="" class="ui icon massive ${ couleurs[0][3] } button"></a></div>
				<div class="column"><a href="" id="result"  class="ui icon massive white button">bonne couleur bien plac�e : ${ result[0] }</a></div>
                <div id = "resultbutton" class="column"><a href="" id="result"  class="ui icon massive white button">bonne couleur mal plac�e : ${ result[1] }</a></div>
				
				

	</div>	 --%>
		
	
	<p><c:out value = "${string1 }"/> </p>
	<p><c:out value = "${string2 }"/> </p>
	<p><c:out value = "${string3 }"/> </p>
	<p><c:out value = "${string4 }"/> </p>
	<p><c:out value = "${string5 }"/> </p>
	<p><c:out value = "${string6 }"/> </p>
	<p><c:out value = "${string7 }"/> </p>
	<p><c:out value = "${string8 }"/> </p>
	<p><c:out value = "${string9 }"/> </p>
	<p><c:out value = "${string10 }"/> </p>
	<p><c:out value = "${string11 }"/> </p>
		
	
</body>

</html>