<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:template_admin>
    <jsp:attribute name="jsFragment">
          <script>
              $('.closebtn').click(function () {
                  $('.alertmessage').toggle("slow", function () {
                  });
              })
          </script>
    </jsp:attribute>
    <jsp:body>
        <h3>Livros Cadastrados</h3>
        <hr>
        <c:if test="${not empty message}">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12 alert alert-${classe} alertmessage"
                 style="text-align: center;">
                    ${message}
                <span class="closebtn" style="float:right; display:block">x</span>
            </div>
        </c:if>
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xl-12 col-12">
                <div class="row">
                    <c:forEach items="${booksRegistereds}" var="book">
                        <div class="col-md-3 col-lg-3 col-xl-3 col-3" style="margin-bottom: 10px">
                            <img src="${book.urlFolder}" alt="IMG" style="cursor: pointer" data-toggle="modal"
                                 data-target="#${book.isbn}"/>
                        </div>

                        <!-- Modal -->
                        <div id="${book.isbn}" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">${book.title}</h4>
                                    </div>
                                    <div class="modal-body">

                                        <form class="form" action="<c:url value="/admin/book/update"/> ">
                                            <div class="row">
                                                <div class="col-md-6 col-xl-6 col-lg-6 col-12 col-sm-12">
                                                    <label for="title">Título</label>
                                                    <input type="text" id="title" name="title" class="form-control" value="${book.title}"/>
                                                </div>
                                                <div class="col-md-6 col-xl-6 col-lg-6 col-12 col-sm-12">
                                                    <label for="isbn">ISBN</label>
                                                    <input type="text" id="isbn" name="isbn" class="form-control" readonly  value="${book.isbn}"/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-3 col-xl-3 col-lg-3 col-3 col-sm-3">
                                                    <label for="yearPublished">Publicação</label>
                                                    <input type="text" id="yearPublished" name="yearPublished" class="form-control" value="${book.yearPublished}"/>
                                                </div>
                                                <div class="col-md-3 col-xl-3 col-lg-3 col-3 col-sm-3">
                                                    <label for="qtdEstoque">Qtd. Estq.</label>
                                                    <input type="text" id="qtdEstoque" name="quantity" class="form-control"  value="${book.quantity}"/>
                                                </div>
                                                <div class="col-md-3 col-xl-3 col-lg-3 col-3 col-sm-3">
                                                    <label for="pageQuantity">Qtd. Pagina.</label>
                                                    <input type="text" id="pageQuantity" name="quantity" class="form-control"  value="${book.pageQuantity}"/>
                                                </div>
                                                <div class="col-md-3 col-xl-3 col-lg-3 col-3 col-sm-3">
                                                    <label for="price">Preço</label>
                                                    <input type="text" id="price" name="price" class="form-control"  value="${book.price}"/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12 col-lg-12 col-12 col-sm-12">
                                                    <label for="folderUrl">Link da Imagem</label>
                                                    <input type="text" id="folderUrl" name="urlFolder" class="form-control" value="${book.urlFolder}"/>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12 col-lg-12 col-12 col-sm-12">
                                                    <label for="sinopsis">Sinópse</label>
                                                    <textarea type="text" style="resize: none" id="sinopsis" name="sinopsis" class="form-control" value="${book.sinopsis}">${book.sinopsis}</textarea>
                                                </div>
                                            </div>


                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-warning" name="operation" value="update">Alterar Informações</button>
                                        <button type="submit" class="btn btn-danger" name="operation" value="delete">Deletar Livro</button>
                                    </div>
                                </div>
                                </form>

                            </div>
                        </div>

                    </c:forEach>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template_admin>