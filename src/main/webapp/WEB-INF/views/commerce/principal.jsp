<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template_commerce>
    <jsp:attribute name="cssFragment">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commerce/bookshelf.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commerce/slideshow.css">
    </jsp:attribute>

    <jsp:attribute name="jsFragment">

        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jssor.slider-26.3.0.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slideshow.js"></script>
        <script>

            $(document).ready(function () {
                $.each($('.price'), function(key, value) {
                   var s = (formataDinheiro(parseFloat(value.innerText)));
                   value.innerText = s;
                });
            });
        </script>
        <script type="text/javascript">jssor_1_slider_init();</script>
    </jsp:attribute>
    <jsp:body>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" style="margin-top: 3em;">
                <div id="jssor_1"
                     style="position:relative;margin:0 auto;left:0px;width:1300px;height:500px;overflow:hidden;visibility:hidden;">
                    <!-- Loading Screen -->
                    <div data-u="loading" class="jssorl-009-spin"
                         style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                        <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;"
                             src="${pageContext.request.contextPath}/resources/img/spin.svg"/>
                    </div>
                    <div data-u="slides"
                         style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:500px;overflow:hidden;">
                        <div>
                            <img data-u="image" src="${pageContext.request.contextPath}/resources/img/imagemBOOK1.png"/>
                        </div>
                        <div>
                            <img data-u="image" src="${pageContext.request.contextPath}/resources/img/imagemBOOK2.png"/>
                        </div>
                        <div>
                            <img data-u="image" src="${pageContext.request.contextPath}/resources/img/imagemBOOK3.png"/>
                        </div>
                    </div>
                    <!-- Bullet Navigator -->
                    <div data-u="navigator" class="jssorb032" style="position:absolute;bottom:12px;right:12px;"
                         data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
                        <div data-u="prototype" class="i" style="width:16px;height:16px;">
                            <svg viewbox="0 0 16000 16000"
                                 style="position:absolute;top:0;left:0;width:100%;height:100%;">
                                <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                            </svg>
                        </div>
                    </div>
                    <!-- Arrow Navigator -->
                    <div data-u="arrowleft" class="jssora051" style="width:65px;height:65px;top:0px;left:25px;"
                         data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                            <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
                        </svg>
                    </div>
                    <div data-u="arrowright" class="jssora051" style="width:65px;height:65px;top:0px;right:25px;"
                         data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                            <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        <h3>Lançamentos quentinhos para você</h3>
        <hr>
        <div class="row books">
            <c:forEach items="${bookNews}" var="book">
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
            <script>console.log("Fim de Carregamento")</script>
        </div>

        <h3>Mais vendidos</h3>
        <hr>
        <div class="row books">
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/131859/1/131859181G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    38.00
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/120095/7/120095770G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    35.00
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/132342/2/132342299G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    35.30
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/119882/2/119882282G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    29.90
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/131859/1/131859181G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    33.00
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template_commerce>