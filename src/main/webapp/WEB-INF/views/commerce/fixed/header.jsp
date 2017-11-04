<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6">
        <div class="logo">
            bookman.com
        </div>
    </div>
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6">
        <button type="button" class="btn btn-info" style="display: block;float:right;margin-right: 1.5em;margin-top: .6em" onclick="openNav()">&#9776; Categorias</button>
        <a href="<c:url value="/commerce"/>" class="btn btn-info" style="display: block;float:right;margin-right: 1.5em;margin-top: .6em">Home</a>
    </div>
</div>
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <c:forEach items="${genres}" var="genre">
        <a href="<c:url value="/commerce/filter/genre/${genre.code}"/>">${genre.genre}</a>
        <hr/>
    </c:forEach>
</div>


<c:if test="${not empty error}">
    <div class="row">
        <div class="col-md-9 col-xl-9 col-lg-9 col-sm-9 col-9 error">
            ${error}
            <span style="font-size: 1em; font-weight: bolder; float: right;" class="closeMessage">x</span>
        </div>
    </div>
</c:if>