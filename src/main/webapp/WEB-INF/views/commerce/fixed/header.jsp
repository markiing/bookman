<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6">
        <div class="logo">
            bookman.com
        </div>
    </div>
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6">
        <button type="button" class="btn btn-info" style="display: block;float:right;margin-right: 1.5em;margin-top: .6em" onclick="openNav()">&#9776; Categorias</button>
    </div>
</div>
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <c:forEach items="${genres}" var="genre">
        <a href="<c:url value="/commerce/filter/genre/${genre.code}"/>">${genre.genre}</a>
    </c:forEach>
</div>