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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">    <jsp:invoke fragment="cssFragment"/>
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>    <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
    <script>
        $('.categories-label').click(function () {
            $('.categories-details').slideToggle("slow", function () {})
        });
    </script>
    <script>
        var activeEl = 2;
        $(function() {
            var items = $('.btn-nav');
            $( items[activeEl] ).addClass('active');
            $( ".btn-nav" ).click(function() {
                $( items[activeEl] ).removeClass('active');
                $( this ).addClass('active');
                activeEl = $( ".btn-nav" ).index( this );
            });
        });
    </script>
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
        }
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