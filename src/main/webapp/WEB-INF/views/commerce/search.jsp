<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template_commerce>
    <jsp:attribute name="cssFragment">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commerce/bookshelf.css"/>
    </jsp:attribute>

    <jsp:attribute name="jsFragment">

        <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/js/jssor.slider-26.3.0.min.js"></script>
        <script>
            $(document).ready(function () {
                $.each($('.price'), function(key, value) {
                    var s = (formataDinheiro(parseFloat(value.innerText)));
                    value.innerText = s;
                });
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <br><br>
        <h3>${filterMessage}</h3>
        <hr>
        <div class="row books">
            <c:forEach items="${books}" var="book">
                <div class="book">
                    <div class="folder">
                        <img src="${book.urlFolder}" alt="IMG"/>
                    </div>
                    <div class="bookname">
                            ${book.title}
                    </div>
                    <div class="price">
                            ${book.price}
                    </div>
                    <div class="button-buy">
                        <a href="<c:url value="/commerce/details/${book.isbn}"/>" class="btn btn-success">Comprar</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </jsp:body>
</t:template_commerce>