<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template_commerce>
    <jsp:attribute name="cssFragment">
        <style>
            .bookimage {
                height: 20em;
            }

            .bookdetails {
                height: 20em;
                padding: 3em;
                background-color: #f7f7f7;
            }

            .title {
                text-align: center;
            }

            .book-folder, p {
                margin-left: auto;
                margin-right: auto;
                display: block;
                text-align: center;
            }

            .interresting {
                margin-left: auto;
                margin-right: auto;
                display: block;
                margin-left: 8em;
            }

            .bookprice {
                font-weight: bolder;
                color: #27ae60;
            }
            .success{
                background-color: rgba(0, 200, 0,.6);
                width: 80%;
                padding: .2em;
                text-align: center;
                margin:0px auto;
                margin-top: -.9em;
                margin-bottom: .2em;
                border: 1px solid green;
                border-radius: 3px;
            }
        </style>
    </jsp:attribute>
    <jsp:attribute name="jsFragment">
        <script>
            var b = false;
            $('.interresting').click(function () {
                $('#form-auth').slideToggle("slow", function () {
                    if (b) {
                        b = false;
                        $('.master').css({'margin-bottom': '0px'})
                        $('.interresting').attr('input', 'button')
                        $('.interresting').text('Aguarde...')
                        $('.interresting').attr('disabled','true')
                    } else {
                        b = true;
                        $('.interresting').text('Comprar')
                        $('.interresting').attr('type', 'submit')
                        $('.master').css({'margin-bottom': '10em'});
                    }
                });
            })
            $(document).ready(function () {
                $('.bookprice').text(formataDinheiro(${bookDetails.price}))
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="master" style="margin-top: 7em;">
            <c:if test="${not empty message}">
                <div class="row">
                    <div class="col-md-12 col-12 col-lg-12 col-sm-12 success">
                            ${message}
                    </div>
                </div>
            </c:if>
            <div class="row">
                <div class="col-md-12 col-12 col-lg-12 col-sm-12 col-lg-12 title">
                    <h3>${bookDetails.title}</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-4 col-md-4 col-sm-12 col-xl-4 bookimage">
                    <img class="book-folder" src="${bookDetails.urlFolder}">
                    <p class="bookprice"></p>
                    <form action="<c:url value="/commerce/purchase"/>" method="post">
                        <div id="form-auth" style="display: none">
                            <input type="text" style="display: none" name="isbn" value="${bookDetails.isbn}">
                            <input type="text" name="matricula" class="form-control" placeholder="Matricula"><br>
                            <input type="password" name="senha" class="form-control" placeholder="Senha">
                        </div>
                        <br>
                        <button type="button" class="btn btn-success interresting">Comprar</button>
                    </form>
                </div>

                <div class="col-12 col-lg-8 col-md-8 col-sm-12 col-xl-8 bookdetails">
                    <div class="details-1">
                        <div class="row col-12 col-lg-12 col-md-12 col-sm-12">
                            <p style="float:left">Genero: <strong>${bookDetails.genre.genre}</strong></p>
                            <p style="float:right">Ano de Publicação: <strong>${bookDetails.yearPublished}</strong></p>
                        </div>
                        <div class="row col-12 col-lg-12 col-md-12 col-sm-12">
                            <p style="float:left">ISBN: <strong>${bookDetails.isbn}</strong></p>
                            <p style="float:right">Quantidade de Paginas: <strong>${bookDetails.pageQuantity}</strong>
                            </p>
                        </div>
                    </div>
                    <strong>Sinópse</strong>
                    <hr>
                    <p style="float:left; text-align: justify">
                            ${bookDetails.sinopsis}
                    </p>
                </div>
            </div>
        </div>
        <div style="height: 100px"></div>
    </jsp:body>
</t:template_commerce>