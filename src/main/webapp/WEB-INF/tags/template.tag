<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="cssFragment" fragment="true" %>
<%@attribute name="jsFragment" fragment="true" %>
<html lang="PT">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <jsp:invoke fragment="cssFragment"/>
</head>
<body>
    <div id="header">
        <img class="img-fluid" src="https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png" width="100">
        <h1>Bem Vindo ;D</h1>
    </div>
    <div class="container">
        <jsp:doBody/>
    </div>
    <div id="pagefooter">
        <p id="copyright">TEMPLATE DESENVOLVIDO POR MARCUS CARTAGENES &copy; 2017</p>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"/>
    <jsp:invoke fragment="jsFragment"/>
</body>
</html>