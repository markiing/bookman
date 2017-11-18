<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/img/logo3.png"
                 style="width: 230px;margin-top: -4.6em; z-index: 0" class="fixed-top">
        </div>
    </div>
    <div class="col-md-6 col-xl-6 col-lg-6 col-sm-6 col-6 mx-auto">
        <button class="btn btn-danger exit btn-lg">Sair</button>
    </div>
</div>
<!-- Sidebar -->
<div id="wrapper">
    <div id="sidebar-wrapper">
        <nav id="spy">
            <ul class="sidebar-nav nav">
                <li class="sidebar-brand">
                    <a href="#home"><span class="fa fa-home solo"></span></a>
                </li>

                <li>
                    <a href="<c:url value="/admin/new/book"/>" data-scroll>
                        <span class="fa fa-anchor solo">Novo Livro</span>
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/admin/registeredBooks"/> " data-scroll>
                        <span class="fa fa-anchor solo">Gerenciar Livros</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>