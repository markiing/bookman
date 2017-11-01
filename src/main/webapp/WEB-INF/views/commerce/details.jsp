<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template_commerce>
    <jsp:attribute name="cssFragment">
        <style>
            .bookimage{
                height: 20em;
            }

            .bookdetails{
                height: 20em;
                padding: 5em;
                background-color: #f7f7f7;
            }

            .title{
                text-align: center;
            }

            img, p{
                margin-left: auto;
                margin-right: auto;
                display: block;
                text-align: center;
            }

            button{
                margin-left:auto;
                margin-right: auto;
                display: block;
                margin-left: 8em;
            }

        </style>
    </jsp:attribute>
    <jsp:body>
        <div style="margin-top: 7em">
            <div class="row">
                <div class="col-md-12 col-12 col-lg-12 col-sm-12 col-lg-12 title">
                    <h3>${bookDetails.title}</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-4 col-md-4 col-sm-12 col-xl-4 bookimage">
                    <img src="${bookDetails.urlFolder}">
                    <p>${bookDetails.price}</p>
                    <button type="submit" class="btn btn-success">Comprar</button>
                </div>

                <div class="col-12 col-lg-8 col-md-8 col-sm-12 col-xl-8 bookdetails">
                    TESTE
                </div>
            </div>
        </div>
    </jsp:body>
</t:template_commerce>