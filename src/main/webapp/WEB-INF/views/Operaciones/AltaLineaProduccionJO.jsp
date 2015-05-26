<%-- 
    Document   : admistrarOperaciones
    Created on : 6/05/2015, 04:59:24 PM
    Author     : zgm_e_000
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPito - Nueva Linea de Producci&oacute;n </title>

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
        <%@include file="Menu/menuOperacionesJefeO.jsp"%>
        <div id="wrapper">           
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row-fluid">
                    <div class="col-lg-12">
                        <h1 class="page-header">Nueva Linea de Producci&oacute;n</h1>
                    </div>
                </div>
                <form:form id="nuv-lineaProd" commandName="Lineaproduccion" action="AltaLineaProduccionJO"  method="POST">
                    <div class="row-fluid">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label for="alp-nombre" class="control-label">Nombre</label>
                                            <form:input path="nombre" name="nombre" type="text" class="form-control" 
                                                        id="nombreN" placeholder="Nombre" />
                                            <form:errors path="nombre" element="div" class="alert-danger pad-10" />

                                        </div>
                                        <div class="form-group">
                                            <label>Duración</label>
                                            <form:input path="tiempo" id="duracion"  class="form-control" placeholder="Duración"/>
                                            <form:errors path="tiempo" element="div" class="alert-danger pad-10" />

                                        </div>  
                                        
                                        <div class="form-group">
                                        <label>Responsable</label>
                                        <form:input path="responsa" name="responsable" type="text" class="form-control" 
                                                    id="responsabl" placeholder="responsable" />
                                        <form:errors path="responsa" element="div" class="alert-danger pad-10" />
                                        </div>
                                        <div class="form-group">
                                            <label>Activo</label>
                                            <br/>
                                            <form:radiobutton path="activo" value="S" label="Si"/>
                                            <form:radiobutton path="activo" value="N" label="No"/>
                                            <form:errors path="activo" element="div" class="alert-danger pad-10" />
                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">     
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div align="right">
                                <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                            </div>                           
                            <br/>
                        </div>
                    </div>

                    <!-- /#page-wrapper -->
                </form:form>
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

        <!--<script src="${pageContext.request.contextPath}/resources/js/operaciones/jsoperaciones.js"></script>-->
        <!-- PARA FECHA -->
        <script type="text/javascript" src="resources/js/activofijo/jquery-ui.js"></script>              
    </body>
</html>