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
                        <div class="form-group">
                            <label>Nombre del Puesto</label>
                            <input class="form-control"autofocus autocomplete required placeholder="Ingrese nombre" pattern="[0-9]{5}" onkeypress="return soloTexto(event);" required>
                            <p class="help-block"></p>

                            <label>Descripción</label>
                            <textarea class="form-control  "autofocus autocomplete required placeholder="Ingrese descripcion" pattern="[0-9]{5}" onkeypress="return soloTexto(event);" required></textarea>
                            <p class="help-block" ></p>
                            <div class="col-lg-6 text-left">
                                <div class="form-group">
                                    <label>Departamento del puesto</label>
                                    <div class="form-group input-group">
                                        <select id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa">
                                            <option>Recursos Humanos</option>
                                            <option>Contabilidad</option>
                                            <option>Ventas</option>
                                            <option>Compras</option>
                                            <option>Dirección</option>
                                            <option>Almacén</option>                                
                                            <option>Activos fijos</option>
                                            <option>Operaciones</option>                            
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 text-left">
                                <div class="form-group">
                                    <label>Rol del puesto</label>
                                    <div class="form-group input-group">
                                        <select id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">                                                      
                                            <option>Rol_director_General</option>
                                            <option>Rol_Sub_General</option>
                                            <option>Rol_Director_Departamento</option>
                                            <option>Rol_Jefe_Departamento</option>
                                            <option>Rol_Jefe_Operativo</option>
                                            <option>Rol_Empleado</option>
                                        </select>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="form-group">
                            <label>Suelo Base</label>
                            <input class="form-control"autofocus autocomplete required placeholder="Ingrese salario" pattern="[0-9]{5}" onkeypress="return soloNumeros(event);" required>
                            <p class="help-block"></p>
                        </div>
                        <div class="form-group">  
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Hora de Entrada</label>
                                    <input class="form-control"autofocus type="time" autocomplete required placeholder="Ingrese hora" pattern="[0-9]{5}" required>
                                    <p class="help-block"></p>

                                </div>
                                <div class="col-md-6">
                                    <label>Hora de Salida</label>
                                    <input class="form-control" type="time" autofocus autocomplete required placeholder="Ingrese hora" pattern="[0-9]{5}" required>
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
