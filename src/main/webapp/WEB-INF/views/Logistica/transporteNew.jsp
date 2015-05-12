<%-- 
    Document   : transporteNew
    Created on : 24/04/2015, 04:20:51 AM
    Author     : logistica
--%>
<%@page import="com.sapito.db.entities.EmpresaTransporte"%>
<%@page import="com.sapito.db.entities.Transporte"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
        <title>SAPito - Alta Transporte</title>
    </head>
    <body>
        <div id="wrapper">

            <!-- Navigation bar -->
            <%@include file="logisticaNavs.jsp" %>

            <!-- Page content -->

            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Nuevo Transporte
                            </h1>
                        </div>
                    </div>
                    <!--formulario alta-->
                    <%
                        if (request.getAttribute("modificar") != null) {

                            if (request.getAttribute("modificar").equals("1")) {
                    %>

                    <form:form id="fnvo-transporte" commandName="transporte" action="modificaTransporte?empresaid=${idempresa}" method="POST">

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos del Transporte</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">                                                      
                                            <div class="form-group has-success">
                                                <label for="fnvoc-Placas">Placas</label>                                                
                                                <form:input value="${transporte.placas}" path="placas" name="placas" id="fnoc-placas" type="text" class="form-control" placeholder="Placas"/>
                                                <form:errors path="placas" element="div" class="alert-danger pad-10" />                                                                                                                    
                                            </div>
                                            <div class="form-group has-success">
                                                <label for="fnvoc-tipoTransporte">Tipo transporte</label>                                                

                                                <select class="form-control" path="tipotransporte" name="tipotransporte" id="fnoc-tipotransporte" type="text">
                                                    <option value="Tracto Camion">Tracto Camion</option>
                                                    <option value="Rabon">Rabon</option>                                                    
                                                </select>                                                          
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group has-success">
                                                <label for="fnvoc-dimension">Dimensión</label>                                                
                                                <form:input value="${transporte.dimension}" path="dimension" name="dimension" id="fnoc-dimension" type="text" class="form-control" placeholder="Dimension del transporte"/>
                                                <form:errors path="dimension" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                  
                                            </div>
                                            <div class="form-group has-success">

                                                <label for="fnvoc-costoDia">Costos por dia</label>                                                
                                                <form:input value="${transporte.costoDia}" path="costoDia" name="costoDia" id="fnoc-costoDia" type="text" class="form-control" placeholder="Costo por dia"/>
                                                <form:errors path="costoDia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                            </div>                                                                                                            
                                            <div class="form-group has-success">
                                                <label for="fnvoc-tipo">Disponible</label>                                                

                                                <select class="form-control" path="disponibleTransporte" name="disponibleTransporte" id="fnoc-disponibleTransporte" type="text">
                                                    <option value="true">Si</option>
                                                    <option value="false">No</option>                                                    
                                                </select>                                                                                                                                                          
                                            </div>
                                            <input value="${transporte.id}" path="id" name="id" id="fnoc-id" type="hidden" class="form-control" />
                                                <input value="${transporte.status}" path="status" name="status" id="fnoc-status" type="hidden" class="form-control" />

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


                    <form:form id="fnvo-transporte" commandName="transporte" action="transporteN?empresaid=${idempresa}" method="POST">

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos del Transporte</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">                                                      
                                            <div class="form-group has-success">
                                                <label for="fnvoc-Placas">Placas</label>                                                
                                                <form:input  path="placas" name="placas" id="fnoc-placas" type="text" class="form-control" placeholder="Placas"/>
                                                <form:errors path="placas" element="div" class="alert-danger pad-10" />                                                                                                                    
                                            </div>
                                            <div class="form-group has-success">
                                                <label for="fnvoc-tipoTransporte">Tipo transporte</label>                                                

                                                <select class="form-control" path="tipotransporte" name="tipotransporte" id="fnoc-tipotransporte" type="text">
                                                    <option value="Tracto Camion">Tracto Camion</option>
                                                    <option value="Rabon">Rabon</option>                                                    
                                                </select>                                                          
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group has-success">
                                                <label for="fnvoc-dimension">Dimensión</label>                                                
                                                <form:input  path="dimension" name="dimension" id="fnoc-dimension" type="text" class="form-control" placeholder="Dimension del transporte"/>
                                                <form:errors path="dimension" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                  
                                            </div>
                                            <div class="form-group has-success">

                                                <label for="fnvoc-costoDia">Costos por dia</label>                                                
                                                <form:input  path="costoDia" name="costoDia" id="fnoc-costoDia" type="text" class="form-control" placeholder="Costo por dia"/>
                                                <form:errors path="costoDia" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                            </div>                                                                                                            
                                            <div class="form-group has-success">
                                                <label for="fnvoc-tipo">Disponible</label>                                                

                                                <select class="form-control" path="disponibleTransporte" name="disponibleTransporte" id="fnoc-disponibleTransporte" type="text">
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
        </div>
    </body>
</html>
