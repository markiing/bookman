<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <title>Painel Administrativo</title>
</head>
<body>
<div class="container">
    <div class="card card-container">
        <img id="profile-img" class="profile-img-card" src="${pageContext.request.contextPath}/resources/img/logo3.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">
                    ${error}
            </div>
        </c:if>
        <form class="form-signin" method="post" action="<c:url value="/login/auth"/> ">
            <span id="reauth-email" class="reauth-email"></span>
            <input type="text" name="matricula" id="inputEmail" class="form-control" placeholder="Matrícula" required autofocus>
            <input type="password" id="inputPassword" name="senha" class="form-control" placeholder="Senha" required>
            <div id="remember" class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me"> Lembrar meu usuário
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Entrar</button>
        </form><!-- /form -->
    </div><!-- /card-container -->
</div><!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
