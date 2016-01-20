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
            <h2 class="ui dividing header">Memory</h2>
            <div class="introduction">
                <p>Bienvenue à ce jeu de mastermind </p>
            </div>
        </div>
    </div>

    <div class="main container">
        <div class="ui two column middle aligned relaxed grid">
            <div class="column">
                <div id="board" class="ui four column padded grid">
<%--                 <c:forEach items ="${game.cards}" var="card"> --%>
<%--                 	<c:choose> --%>
<%--                 		<c:when test="${card.side==RECTO}"> --%>
<%--                 			<div class="column"><a href="?piece=${card.index}" class="ui icon massive button"></a></div> --%>
<%--                 		</c:when> --%>
<%--                 		<c:otherwise> --%>
<%--                 			<div class="column disabled"><a href="" class="ui icon massive ${card.cssColor} button"></a></div> --%>
<%--                 		</c:otherwise> --%>
<%--                 	</c:choose> --%>
<%--                 </c:forEach> --%>
						

                        <div class="two wide column"><a href="?piece=1" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=2" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=3" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=4" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=5" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=6" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=7" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=8" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=9" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=10" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=11" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=12" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=13" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=14" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=15" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=16" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=17" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=18" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=19" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=20" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=21" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=22" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=23" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=24" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=25" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=26" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=27" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=28" class="circular ui icon massive blue button"></a></div>
                        <div class="two wide column"><a href="?piece=29" class="circular ui icon massive red button"></a></div>
                        <div class="two wide column"><a href="?piece=30" class="circular ui icon massive yellow button"></a></div>
                        <div class="two wide column"><a href="?piece=31" class="circular ui icon massive green button"></a></div>
                        <div class="two wide column"><a href="?piece=32" class="circular ui icon massive blue button"></a></div>
                       
                </div>    
            </div>
	   </div>
    </div>
</body>

</html>