<%-- 
    Document   : nvoCliente
    Created on : Apr 19, 2015, 8:38:35 PM
    Author     : giovanni
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sapito.db.entities.GastosEnvio" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Menu/menuContabilidad.jsp"%>
        <title>SAPito - Ventas - Nuevo cliente</title>
    </head>
    <body>
        <div id="wrapper">

            <!-- Nav bar -->


            <!-- Page content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Nuevo Pago</h1>
                        </div>
                    </div>

                    <!-- Formulario de nuevo cliente -->
                    <form:form id="fnvo-cliente" commandName="pago" action="${pageContext.request.contextPath}/contabilidad/contaCrearPago" method="POST">

                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h4>Datos del Pago</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-empresa">Nombre del Servicio</label>
                                        <form:input path="nombreServicio" name="nombreServicio" id="fnoc-empresa" 
                                                    type="text" class="form-control"/>
                                        <form:errors path="nombreServicio" element="div" class="alert-danger pad-10" />
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-claveInterBancaria">Costo</label>
                                        <form:input path="costo" name="costo" id="fnvoc-rfc" 
                                                    type="text" class="form-control"/>
                                        <form:errors path="costo" element="div" class="alert-danger pad-10" />
                                    </div>                               


                                </div>               

                            </div>
                        </div>
                        <div class="row text-right">
                            <div class="col-md-12">
                                <br/><br/>
                                <!--button onclick="submitNvoCliente()" class="btn btn-success right" type="button">
                                  Guardar
                                </button-->
                                <button type="submit" class="btn btn-success right">Guardar</button>
                                &nbsp;&nbsp;
                                <button class="btn btn-primary right" type="reset">
                                    Limpiar
                                </button>
                                <br/><br/>
                            </div>
                        </div>
                    </form:form>

                </div>
            </div>
        </div>

        <!-- Footer and scripts -->


    </body>
</html>
