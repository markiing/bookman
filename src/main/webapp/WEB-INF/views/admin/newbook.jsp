<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:template_admin>
    <jsp:attribute name="cssFragment">
        <style>
            .closebtn {
                cursor: pointer;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="jsFragment">
        <script>
            $('.closebtn').click(function () {
                $('.alertmessage').toggle("slow", function () {
                });
            })
        </script>
    </jsp:attribute>
    <jsp:body>
        <h3>Cadastrar Livro</h3>
        <hr>
        <c:if test="${not empty message}">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12 alert alert-${classe} alertmessage"
                 style="text-align: center;">
                    ${message}
                <span class="closebtn" style="float:right; display:block">x</span>
            </div>
        </c:if>
        <br>
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12">
                <form class="form" action="<c:url value="/admin/new/book/register"/>" method="POST">
                    <div class="row">
                        <div class="col-md-2 col-lg-2 col-xl-2 col-12">
                            <label for="isbn">ISBN</label>
                            <input id="isbn" class="form-control" type="text" name="isbn"/>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-6 col-12">
                            <label for="title">Título do Livro</label>
                            <input id="title" class="form-control" type="text" name="title"/>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-12">
                            <label for="quantity">Qtd. Estq.</label>
                            <input id="quantity" class="form-control" type="text" name="quantity"/>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-12">
                            <label for="yearPublished">Ano de Publicação</label>
                            <input id="yearPublished" class="form-control" type="text" name="yearPublished"/>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-3 col-lg-3 col-xl-3 col-12">
                            <label for="genre">Gênero</label>
                            <select class="form-control" name="g" id="genre">
                                <c:forEach var="genre" items="${genres}">
                                    <option value="${genre.code}">${genre.genre}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-12">
                            <label for="price">Preço</label>
                            <input type="text" id="price" class="form-control" name="price">
                        </div>
                        <div class="col-md-2 col-lg-2 col-xl-2 col-12">
                            <label for="pageQuantity">Qtd. Pagina</label>
                            <input type="text" class="form-control" id="pageQuantity" name="pageQuantity"/>
                        </div>
                        <div class="col-md-5 col-lg-5 col-xl-5 col-12">
                            <label for="urlFolder">Link da imagem</label>
                            <input type="text" name="urlFolder" id="urlFolder" class="form-control">
                        </div>


                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12 col-12">
                            <label for="sinopsis">Sinópse do Livro</label>
                            <textarea id="sinopsis" name="sinopsis" class="form-control"></textarea>
                        </div>
                    </div>

                    <br>
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xs-12 col-12">
                            <button type="submit" class="btn btn-info" style="float:right">Salvar Livro</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </jsp:body>
</t:template_admin>