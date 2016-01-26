<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
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
    </div>
	
	<div>
	<form method="get" action="FirstServlet">
   		<p>
   			<label for="pays">Pion 1</label>
       		<select name="couleur1" id="couleur">
        	   <option value="red">rouge</option>
        	   <option value="yellow">jaune</option>
        	   <option value="green">vert</option>
        	   <option value="blue">bleu</option>
        	   <option value="orange">orange</option>
        	   <option value="white">blanc</option>
        	   <option value="purple">violet</option>
        	   <option value="black">noir</option>
       		</select>
			
			<label for="pays">Pion 2</label>
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

   			<label for="pays">Pion 3</label>
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

   			<label for="pays">Pion 4</label>
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
	</div>
	<div id="board" class="ui four column grid">

				String couleur = (String) request.getAttribute("couleur1");
				
                <div class="column"><a href="" class="ui icon massive ${couleur1} button"></a></div>
            
				<div class="column"><a href="?pion=1" class="ui icon massive red button"></a></div>
                <div class="column"><a href="?pion=2" class="ui icon massive orange button"></a></div>
                <div class="column"><a href="?pion=3" class="ui icon massive purple button"></a></div>
                <div class="column"><a href="?pion=4" class="ui icon massive blue button"></a></div>
	
	</div>
</body>

</html>