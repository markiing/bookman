<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <div class="col-md-12 col-xl-12 col-lg-12 col-sm-12">
        <div class="logo">
            bookman.com
        </div>
    </div>
</div>
<div class="submenu">
    <div class="col-md-2 col-lg-2 col-sm-12 col-xl-2 col-12">
        <p class="categories-label">Categorias</p>
    </div>
</div>
<div class="row col-md-2 col-lg-2 col-sm-12 col-xl-2 col-12 categories-details" style="display:none">
    <c:forEach items="${genres}" var="g">
        <div class="categorie">
            <a href="#">${g.genre}</a>
        </div>
        <div class="divider"></div>
    </c:forEach>
</div>