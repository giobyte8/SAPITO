<%-- 
    Document   : addDepartamentoAdministrador
    Created on : 17/02/2015, 02:05:27 AM
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
                        Nuevo Departamento
                    </h1>
                </div>
            </div>
            <div class="panel panel-green">
                <div class="panel-heading">
                    <h3 class="panel-title">Departamento</h3>
                </div>

                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <div class="form-group">
                            <label>Nombre del Departamento</label>
                            <input class="form-control"autofocus autocomplete required placeholder="Ingrese nombre" pattern="[0-9]{5}" onkeypress="return soloTexto(event);" required>
                            <p class="help-block"></p>


                            <label>Descripción</label>
                            <textarea class="form-control  "autofocus autocomplete required placeholder="Ingrese descripcion" pattern="[0-9]{5}" onkeypress="return soloTexto(event);" required></textarea>
                            <p class="help-block" ></p>

                            
                        </div>
                    </div>
                    <div align=right>
                        <p>
                            <button type="submit" class="btn btn-primary" >Actualizar</button>
                            <button type="button" class="btn btn-danger">Cancelar</button>              
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
    </body>
</html>

