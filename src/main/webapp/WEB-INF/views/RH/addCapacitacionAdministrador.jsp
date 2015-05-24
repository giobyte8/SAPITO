<%-- 
    Document   : addCapacitacionAdministrador
    Created on : 17/02/2015, 02:06:06 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->
        <title>Jefe de Deparatamento RH</title>
    </head>
    <body>

        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Nueva Capacitación
                    </h1>
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Capacitación</h3>
                </div>

                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <div class="form-group">
                            <label>Nombre de la Capacitación</label>
                            <input class="form-control"autofocus autocomplete required placeholder="Ingrese nombre" pattern="[0-9]{5}">
                            <p class="help-block"></p>

                            <label>Descripción</label>
                            <textarea class="form-control  "autofocus autocomplete required placeholder="Ingrese descripcion" pattern="[0-9]{5}"></textarea>
                            <p class="help-block" ></p>


                        </div>
                        <div class="form-group">
                            <label>Lugar de la Capacitación</label>
                            <input class="form-control"autofocus autocomplete required placeholder="Ingrese lugar" pattern="[0-9]{5}">
                            <p class="help-block"></p>
                        </div>
                        <div class="form-group">  
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Fecha Inicio</label>
                                    <input class="form-control"autofocus type="date" autocomplete required placeholder="Ingrese hora" pattern="[0-9]{5}">
                                    <p class="help-block"></p>

                                </div>
                                <div class="col-md-6">
                                    <label>Fecha Fin</label>
                                    <input class="form-control" type="date" autofocus autocomplete required placeholder="Ingrese hora" pattern="[0-9]{5}">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div align="right">
                        <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                    </div>
                </div>

            </div>
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
    </body>
</html>
