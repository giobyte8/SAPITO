<%-- 
    Document   : AltaOrdenTrabajo
    Created on : 12/05/2015, 01:24:50 AM
    Author     : zgm_e_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPito - Nueva Orden de Trabajo</title>

        <!-- Bootstrap Core CSS -->
        <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <!--<link href="resources/css/libs/sb-admin-2.css" rel="stylesheet">-->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">
        <!-- Custom Fonts -->
        <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- PARA FECHA -->
        <link href="resources/css/activofijo/jquery-ui.css" rel="stylesheet" />
    </head>

    <body>

        <div id="wrapper">           
            <%@include file="Menu/menuOperacionesJefeO.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row-fluid">
                    <div class="col-lg-12">
                        <h1 class="page-header">Nueva Orden de Trabajo</h1>
                    </div>
                </div>
                <div class="row-fluid">

                    <form:form id="nuv-ordenTrabajo" commandName="Ordentrabajo" action="AltaOrdenTrabajo" method="POST">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia</h3>
                                </div>
                                <div class="panel-body">    
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Fecha de Pedido </label>                                        
                                            <form:input path="fechapedido" id="fechaP" name="fechapedido" class="form-control" placeholder="Fecha de Pedido" />
                                        </div>
                                        <div class="form-group">
                                            <label>Fecha de entrega</label>
                                            <form:input path="fechaentrega" id="fechaE" name="fechaentrega" class="form-control" placeholder="Fecha de Entrega"/>
                                        </div>  
                                        <div class="form-group">
                                            <label>Descripción</label>
                                            <form:input path="descripcion" name="descripcion" class="form-control"  placeholder="Descripción" />
                                        </div>
                                        <div class="form-group">
                                            <label>Auditor</label>
                                            <form:input path="auditor" name="auditor" class="form-control" placeholder="Auditor" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">                               
                                        <div class="form-group">
                                            <label>Linea producción</label>
                                            <div class="form-group input-group">
                                                <form:select  path="lineaproduccionIdlineaproduccion.idlineaproduccion" class="form-control" >
                                                    <form:option value="Seleccione Una"/>                                                                                                
                                                    <form:options  items="${lLineas}" itemValue="idlineaproduccion"  itemLabel="nombre"/>                                                
                                                </form:select>
                                            </div>
                                            <div class="form-group">
                                                <label>Prioridad</label>
                                                <form:input path="prioridad" name="prioridad" class="form-control" placeholder="Prioridad" />
                                            </div>
                                            <div class="form-group">
                                                <label>Comentarios</label>
                                                <form:input path="comentario" name="comentario" class="form-control" placeholder="Escribir comentarios" />
                                            </div>
                                        </div>                                
                                    </div>

                                </div>
                            </div>
                            <div align="right">
                                <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                            </div>
                            <br/>
                        </div>
                    </form:form>
                </div>

                <!-- /#page-wrapper -->
            </div>
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>

        <script type="text/javascript" src="resources/js/activofijo/jquery-ui.js"></script>        
        <script type="text/javascript">
                    function fechas(id) {
                $(id).datepicker({
                    dateFormat: "dd-mm-yy",
                    dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                    dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
                });
                }
            $(document).ready(function () {         
                fechas("#fechaP");
                fechas("#fechaE");
            });
        </script>
    </body>
</html>