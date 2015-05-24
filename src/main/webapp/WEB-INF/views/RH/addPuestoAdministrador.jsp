@@ -1,98 +0,0 @@
<%-- 
    Document   : addPuestoAdministrador
    Created on : 17/02/2015, 02:05:43 AM
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
                        Nuevo Puesto
                    </h1>
                </div>
            </div>
            <div class="panel panel-green">
                <div class="panel-heading">
                    <h3 class="panel-title">Puesto</h3>
                </div>

                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <form:form action="upPuestoAdmin" method="POST" commandName="Puesto">
                            ${Resultado}
                            <div class="form-group">
                                <label>Nombre del Puesto</label>
                                <form:input class="form-control" path="nombre" placeholder="Ingrese nombre" onkeypress="return soloTexto(event);" required="required"/>
                                <p class="help-block"></p>

                                <div class="form-group">  
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Hora de Entrada</label>
                                            <div class="input-group clockpicker" data-placement="right" data-align="top" data-autoclose="true">

                                                <form:input readonly="true" path="horaentrada" class="form-control"  placeholder="Ingrese hora"/>

                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Hora de Fin</label>
                                            <div class="input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                                <form:input readonly="true" path="horafin" class="form-control" placeholder="Ingrese hora" />

                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <label>Descripción</label>
                                    <form:textarea class="form-control" required="required" path="descripcion" placeholder="Ingrese descripcion" onkeypress="return soloTexto(event);" />
                                    <p class="help-block" ></p>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label>Rol del puesto</label>
                                                    <div class="form-group input-group">
                                                        <form:select class="form-control selectpicker show-tick show-menu-arrow listaPuesto" path="idrol.idrol">                                                      
                                                            <form:option value="0" label="Seleccione uno" />
                                                            <form:options  items="${Rol}"   itemValue="idrol" itemLabel="nombre" />
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <label>Suelo Base</label>
                                                    <form:input path="sueldobase" class="form-control" required="required" placeholder="Ingrese salario"/>
                                                    <p class="help-block"></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">


                                        </div> 
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="form-group">  
                        <div align="right">
                            <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                        </div>
                    </div>

                </form:form>
            </div>
            <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
            <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
    </body>
</html>