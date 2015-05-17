<%-- 
    Document   : nvoCliente
    Created on : Apr 19, 2015, 8:38:35 PM
    Author     : giovanni
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <h1 class="page-header">Nueva Cuenta Bancaria</h1>
                        </div>
                    </div>

                    <!-- Formulario de nuevo cliente -->
                    <form:form id="fnvo-cliente"  commandName="cuentaBancaria" action="contaCrearCuenta" method="POST">

                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h4>Datos de la cuenta</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-empresa">Nombre de Banco</label>
                                        <form:input path="nombreBanco" 
                                                    name="nombreBanco" id="fnoc-empresa" 
                                                    type="text" class="form-control"  />
                                        <form:errors path="nombreBanco" element="div" class="alert-danger pad-10" />
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-claveInterBancaria">Clave Interbancaria</label>
                                        <form:input path="claveInterBancaria" name="claveInterBancaria" id="fnvoc-rfc" 
                                                    type="text" class="form-control" maxlength="18" size="18" />
                                        <form:errors path="claveInterBancaria" element="div" class="alert-danger pad-10" />
                                    </div>
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-pais">Saldo Inicial</label>
                                        <form:input path="deber" name="deber" id="fnvoc-pais" 
                                                    type="text" class="form-control" />
                                        <form:errors path="deber" element="div" class="alert-danger pad-10" />
                                    </div>
                                    <div class="col-md-12">
                                        <br/><label for="fnvoc-pais">Departamento</label>
                                        <form:select path="departamento.id" name="departamento" class="form-control" items="${depas}" itemLabel="nombreDepartamento" itemValue="id" />

                                        <form:errors path="departamento" element="div" class="alert-danger pad-10" />
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
