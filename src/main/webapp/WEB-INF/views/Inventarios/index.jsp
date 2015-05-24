<%-- 
    Document   : index
    Created on : 7/02/2015, 01:38:13 AM
    Author     : Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Módulo Inventarios
                            </h1> 
                            <ol class="breadcrumb">
                                <li class="active">Bienvenido </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <center> <img  class="img-responsive" src="../SAPITO/resources/img/inventario.png"/></center>
            </div>
        </div>
        <%@include file="inventariosFooter.jsp" %>
    </body>
</html>

