<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="cssFragment" fragment="true" %>
<%@attribute name="jsFragment" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html lang="PT-BR">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Área Administrativa</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/footer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <jsp:invoke fragment="cssFragment"/>
</head>
<body>

<header id="header" class="fixed-top">
    <jsp:include page="../admin/fixed/header.jsp"/>
</header>


<section class="container admin-content">
    <jsp:doBody/>
</section>

<footer id="footer" class="fixed-bottom">
    <jsp:include page="../admin/fixed/footer.jsp"/>
</footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<jsp:invoke fragment="jsFragment"/>
</body>
</html>