<%-- 
    Document   : indexAdministrador
    Created on : 16/02/2015, 02:22:08 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%>
        <title>Jefe Operativo RH</title>
    </head>
    <body>
        <%@include file="Menus/EmpleadoRh.jsp"%>
        <link href="${pageContext.request.contextPath}/resources/css/rh/index.rh.css" rel="stylesheet">
        <div id="page-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Bienvenido 
                        </h1>                        
                    </div>
                </div>   


            </div><!-- Fin del tag del contenedor-->
            <center><img  src ="${pageContext.request.contextPath}/resources/img/rhind.jpg" ></center> 
            <center>
             
            </center>

        </div>

        <%@include file="Librerias/piegeneral.jsp"%>
        <script src="${pageContext.request.contextPath}/resources/js/rh/indexRh.js"></script>
    </body>
</html>
