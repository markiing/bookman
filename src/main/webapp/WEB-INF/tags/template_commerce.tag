<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="cssFragment" fragment="true" %>
<%@attribute name="jsFragment" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<html lang="PT-BR">
<head>
    <title>Bookman Commerce</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <jsp:invoke fragment="cssFragment"/>
</head>
<body>

    <header id="header" class="fixed-top">
        <jsp:include page="../commerce/fixed/header.jsp"/>
    </header>


    <section class="container content">
        <jsp:doBody/>
    </section>

    <footer id="footer" class="fixed-bottom">
        <jsp:include page="../commerce/fixed/footer.jsp"/>
    </footer>


    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
    <script>
        $('.categories-label').click(function () {
            $('.categories-details').slideToggle("slow", function () {})
        });
    </script>
    <script>
        function formataDinheiro(n) {
            var s = "R$ " + n.toFixed(2).replace('.', ',').replace(/(\d)(?=(\d{3})+\,)/g, "$1.");
            return s;
        }
        $(document).ready(function(){
            $('.your-class').slick({settingname: setting-value});
        });
    </script>
    <jsp:invoke fragment="jsFragment"/>
</body>
</html>