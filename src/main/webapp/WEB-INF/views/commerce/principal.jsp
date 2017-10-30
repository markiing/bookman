<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template_commerce>
    <jsp:attribute name="cssFragment">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commerce/bookshelf.css"/>
        <style>
            /* jssor slider loading skin spin css */
            .jssorl-009-spin img {
                animation-name: jssorl-009-spin;
                animation-duration: 1.6s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-009-spin {
                from {
                    transform: rotate(0deg);
                }

                to {
                    transform: rotate(360deg);
                }
            }

            .jssorb032 {
                position: absolute;
            }

            .jssorb032 .i {
                position: absolute;
                cursor: pointer;
            }

            .jssorb032 .i .b {
                fill: #fff;
                fill-opacity: 0.7;
                stroke: #000;
                stroke-width: 1200;
                stroke-miterlimit: 10;
                stroke-opacity: 0.25;
            }

            .jssorb032 .i:hover .b {
                fill: #000;
                fill-opacity: .6;
                stroke: #fff;
                stroke-opacity: .35;
            }

            .jssorb032 .iav .b {
                fill: #000;
                fill-opacity: 1;
                stroke: #fff;
                stroke-opacity: .35;
            }

            .jssorb032 .i.idn {
                opacity: .3;
            }

            .jssora051 {
                display: block;
                position: absolute;
                cursor: pointer;
            }

            .jssora051 .a {
                fill: none;
                stroke: #fff;
                stroke-width: 360;
                stroke-miterlimit: 10;
            }

            .jssora051:hover {
                opacity: .8;
            }

            .jssora051.jssora051dn {
                opacity: .5;
            }

            .jssora051.jssora051ds {
                opacity: .3;
                pointer-events: none;
            }
        </style>
    </jsp:attribute>

    <jsp:attribute name="jsFragment">
        <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/js/jssor.slider-26.3.0.min.js"></script>
        <script type="text/javascript">
            jssor_1_slider_init = function () {

                var jssor_1_SlideoTransitions = [
                    [{b: -1, d: 1, o: -0.7}],
                    [{b: 900, d: 2000, x: -379, e: {x: 7}}],
                    [{b: 900, d: 2000, x: -379, e: {x: 7}}],
                    [{b: -1, d: 1, o: -1, sX: 2, sY: 2}, {
                        b: 0,
                        d: 900,
                        x: -171,
                        y: -341,
                        o: 1,
                        sX: -2,
                        sY: -2,
                        e: {x: 3, y: 3, sX: 3, sY: 3}
                    }, {b: 900, d: 1600, x: -283, o: -1, e: {x: 16}}]
                ];

                var jssor_1_options = {
                    $AutoPlay: 1,
                    $SlideDuration: 800,
                    $SlideEasing: $Jease$.$OutQuint,
                    $Align: 0,
                    $CaptionSliderOptions: {
                        $Class: $JssorCaptionSlideo$,
                        $Transitions: jssor_1_SlideoTransitions
                    },
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $BulletNavigatorOptions: {
                        $Class: $JssorBulletNavigator$
                    }
                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*#region responsive code begin*/

                var MAX_WIDTH = 3000;

                function ScaleSlider() {
                    var containerElement = jssor_1_slider.$Elmt.parentNode;
                    var containerWidth = containerElement.clientWidth;

                    if (containerWidth) {

                        var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                        jssor_1_slider.$ScaleWidth(expectedWidth);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }

                ScaleSlider();

                $Jssor$.$AddEvent(window, "load", ScaleSlider);
                $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                /*#endregion responsive code end*/
            };
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
                            <img data-u="image" src="${pageContext.request.contextPath}/resources/img/001.jpg"/>
                            <div data-u="caption" data-t="0"
                                 style="position:absolute;top:120px;left:75px;width:470px;height:220px;z-index:0;">
                                <img style="position:absolute;top:0px;left:0px;width:470px;height:220px;z-index:0;"
                                     src="${pageContext.request.contextPath}/resources/img/c-phone-horizontal.png"/>
                                <div style="position:absolute;top:4px;left:45px;width:379px;height:213px;z-index:0;overflow:hidden;">
                                    <img data-u="caption" data-t="1"
                                         style="position:absolute;top:0px;left:0px;width:379px;height:213px;z-index:0;"
                                         src="${pageContext.request.contextPath}/resources/img/c-slide-1.jpg"/>
                                    <img data-u="caption" data-t="2"
                                         style="position:absolute;top:0px;left:379px;width:379px;height:213px;z-index:0;"
                                         src="${pageContext.request.contextPath}/resources/img/c-slide-3.jpg"/>
                                </div>
                                <img style="position:absolute;top:4px;left:45px;width:379px;height:213px;z-index:0;"
                                     src="${pageContext.request.contextPath}/resources/img/c-navigator-horizontal.png"/>
                                <img data-u="caption" data-t="3"
                                     style="position:absolute;top:476px;left:454px;width:63px;height:77px;z-index:0;"
                                     src="${pageContext.request.contextPath}/resources/img/hand.png"/>
                            </div>
                        </div>
                        <div>
                            <img data-u="image"
                                 src="http://www.newmathteacher.net/images/post-image/post-image-1300x500-03.jpg"/>
                        </div>
                        <div>
                            <img data-u="image" src="${pageContext.request.contextPath}/resources/img/003.jpg"/>
                            <div style="position:absolute;top:30px;left:30px;width:480px;height:130px;z-index:0;background-color:rgba(255,188,5,0.8);font-size:40px;color:#000000;line-height:1.5;padding:5px 5px 5px 5px;box-sizing:border-box;">
                                TOUCH SWIPE
                                <br/>
                                RESPONSIVE SLIDER
                            </div>
                            <div style="position:absolute;top:300px;left:30px;width:480px;height:130px;z-index:0;background-color:rgba(255,188,5,0.8);font-size:30px;color:#000000;line-height:1.27;padding:5px 5px 5px 5px;box-sizing:border-box;">
                                Build your slider with anything, includes image, svg, text, html, photo, picture content
                            </div>
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
            <div class="book">
                <div class="folder">
                    <img src="https://images-americanas.b2w.io/produtos/01/00/item/131859/1/131859181G1.jpg"
                         alt="IMG"/>
                </div>
                <div class="bookname">
                    Meu Livro !
                </div>
                <div class="price">
                    R$35,00
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
                    R$35,00
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
                    R$35,00
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
                    R$35,00
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
                    R$35,00
                </div>
                <div class="button-buy">
                    <button class="btn btn-success">Comprar</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:template_commerce>