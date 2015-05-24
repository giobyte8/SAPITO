<%-- 
    Document   : operadoresNew
    Created on : 24/04/2015, 03:01:47 AM
    Author     : logistica
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
        <title>SAPito - Alta Operadores</title>
    </head>
    <body>
        <div id="wrapper">

            <!-- Navigation bar -->
            <%@include file="logisticaNavs.jsp" %>

            <!-- Page content -->

            <div id="page-wrapper">


                <!-- Page title -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Nuevo Operador
                        </h1>
                    </div>
                </div>

                <!--formulario alta-->

                <%
                    if (request.getAttribute("modificar") != null) {

                        if (request.getAttribute("modificar").equals("1")) {
                %>

                <form:form id="fnvo-conductor" commandName="conductor" action="modificaOperador" method="POST">


                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos Personales</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group has-success">
                                            <label for="fnvoc-nombre">Nombre(s)</label>                                                
                                            <form:input value="${conductor.nombre}" path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre"/>
                                            <form:errors path="nombre" element="div" class="alert-danger pad-10" />                                            
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-apellidoPaterno">Apellido Paterno</label>                                                
                                            <form:input value="${conductor.apellidoPaterno}" path="apellidoPaterno" name="apellidoPaterno" id="fnoc-apellidoPaterno" type="text" class="form-control" placeholder="Apellido Paterno"/>
                                            <form:errors path="apellidoPaterno" element="div" class="alert-danger pad-10" />                                                                                                                                    
                                        </div>                                        
                                        <div class="form-group has-success">
                                            <label for="fnvoc-apellidoMaterno">Apellido Materno</label>                                                
                                            <form:input value="${conductor.apellidoMaterno}" path="apellidoMaterno" name="apellidoMaterno" id="fnoc-apellidoMaterno" type="text" class="form-control" placeholder="Apellido Materno"/>
                                            <form:errors path="apellidoMaterno" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div> 
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia y Documentos</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">                                                
                                        <div class="form-group has-success">
                                            <label for="fnvoc-licencia">Licencia</label>                                                
                                            <form:input value="${conductor.licencia}" path="licencia" name="licencia" id="fnoc-licencia" type="text" class="form-control" placeholder="Licencia"/>
                                            <form:errors path="licencia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                        
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-pagoDia">Pago por dia</label>                                                
                                            <form:input value="${conductor.pagoDia}" path="pagoDia" name="pagoDia" id="fnoc-pagoDia" type="text" class="form-control" placeholder="Pago por dia"/>
                                            <form:errors path="pagoDia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-tipo">Disponible</label>                                                
                                            <select class="form-control" path="disponibleConductor" name="disponibleConductor" id="fnoc-disponibleConductor" type="text">
                                                <option value="true">Si</option>
                                                <option value="false">No</option>                                                    
                                            </select>                                                                                                
                                        </div>
                                        <input value="${conductor.id}" path="id" name="id" id="fnoc-id" type="hidden" class="form-control" />
                                        <input value="${conductor.status}" path="status" name="status" id="fnoc-status" type="hidden" class="form-control" />
                                        <br>    
                                        <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </form:form>

                <%
                    }
                } else {
                %>

                <form:form id="fnvo-conductor" commandName="conductor" action="altaOperador" method="POST">


                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos Personales</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group has-success">
                                            <label for="fnvoc-nombre">Nombre(s)</label>                                                
                                            <form:input  path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre"/>
                                            <form:errors path="nombre" element="div" class="alert-danger pad-10" />                                            
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-apellidoPaterno">Apellido Paterno</label>                                                
                                            <form:input  path="apellidoPaterno" name="apellidoPaterno" id="fnoc-apellidoPaterno" type="text" class="form-control" placeholder="Apellido Paterno"/>
                                            <form:errors path="apellidoPaterno" element="div" class="alert-danger pad-10" />                                                                                                                                    
                                        </div>                                        
                                        <div class="form-group has-success">
                                            <label for="fnvoc-apellidoMaterno">Apellido Materno</label>                                                
                                            <form:input  path="apellidoMaterno" name="apellidoMaterno" id="fnoc-apellidoMaterno" type="text" class="form-control" placeholder="Apellido Materno"/>
                                            <form:errors path="apellidoMaterno" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div> 
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia y Documentos</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">                                                
                                        <div class="form-group has-success">
                                            <label for="fnvoc-licencia">Licencia</label>                                                
                                            <form:input  path="licencia" name="licencia" id="fnoc-licencia" type="text" class="form-control" placeholder="Licencia"/>
                                            <form:errors path="licencia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                        
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-pagoDia">Pago por dia</label>                                                
                                            <form:input  path="pagoDia" name="pagoDia" id="fnoc-pagoDia" type="text" class="form-control" placeholder="Pago por dia"/>
                                            <form:errors path="pagoDia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-tipo">Disponible</label>                                                
                                            <select class="form-control" path="disponibleConductor" name="disponibleConductor" id="fnoc-disponibleConductor" type="text">
                                                <option value="true">Si</option>
                                                <option value="false">No</option>                                                    
                                            </select>                                                                                                
                                        </div>
                                        <br>    
                                        <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </form:form>


                <%
                    }

                %>                






            </div>
        </div>
    </body>
</html>
