<%-- 
    Document   : ModificacionEmpleado
    Created on : 7/02/2015, 04:28:32 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/rh/index.rh.css" rel="stylesheet">

    </head>
    <body>
        <div class='col-sm-6 col-md-6'>
            ${Resultado}
            <div class="alert-message alert-message-danger"> <h4>Alert Message Danger</h4><p> Operación Correcta: Usuario editado de manera correct</p></div>
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
