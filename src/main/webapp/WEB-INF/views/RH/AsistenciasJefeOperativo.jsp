<%-- 
    Document   : AltaEmpleado
    Created on : 7/02/2015, 04:25:38 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->

        <title>SAPITO ITT</title>
    </head>
    <body>
        <%@include file="Menus/MenuJefeOperativo.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <!--  ################################################-->
            <!--<div id="page-wrapper">-->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Capturar Asistencia
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <form:form action="recursoshumanosdep/capturarAsistencia" method="POST" commandName="Asistencia" >
                    <div class="row-fluid">
                        <div class="row-fluid form-group">
                            <div class="input-group">
                                <label>Ingrese la clave del empleado para capturar su asistencia</label>
                                <input type="text" class="form-control" onkeypress="return soloNumeros(event);"required>
                                <span class="input-group-addon success"><span class="glyphicon glyphicon-ok"></span></span>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
