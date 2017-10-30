<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="cssFragment" fragment="true" %>
<%@attribute name="jsFragment" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <jsp:invoke fragment="cssFragment"/>
</head>
<body>

<header id="header" class="fixed-top">
    <jsp:include page="../views/commerce/fixed/header.jsp"/>
</header>


<section class="container">
    <jsp:doBody/>
</section>

<footer id="footer" class="fixed-bottom">
    <jsp:include page="../views/commerce/fixed/footer.jsp"/>
</footer>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<jsp:invoke fragment="jsFragment"/>
</body>
</html>