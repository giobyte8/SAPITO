<%-- 
    Document   : AltaEstacion
    Created on : 12/05/2015, 01:26:04 AM
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

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->
        <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <!--<link href="resources/css/libs/sb-admin-2.css" rel="stylesheet">-->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">
        <!-- Custom Fonts -->
        <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <%@include file="Menu/menuOperacionesJefeO.jsp"%>
        <div id="wrapper">           
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row-fluid">
                    <div class="col-lg-12">
                        <h1 class="page-header">Nueva Estacion</h1>
                    </div>
                </div>
                <form:form id="nuv-Estacion" commandName="Estacion" action="AltaEstacion"  method="POST">
                    <div class="row-fluid">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Nombre </label>
                                            <form:input path="nombre" name="nombre" type="text" class="form-control" 
                                                        id="nombreEs" placeholder="Nombre" />
                                            <form:errors path="nombre" element="div" class="alert-danger pad-10" />

                                        </div>
                                        <div class="form-group">
                                            <label>Tiempo</label>
                                            <form:input path="tiempo" name="tiempo" type="text" class="form-control" 
                                                        id="tiempoEs" placeholder="Tiempo" />
                                            <form:errors path="tiempo" element="div" class="alert-danger pad-10" />

                                        </div>  
                                        <div class="form-group">
                                            <label>Descripcion</label>
                                            <form:input path="descripcion" name="descripcion" type="text" class="form-control" 
                                                        id="descripcionEs" placeholder="Descripcion" />
                                            <form:errors path="descripcion" element="div" class="alert-danger pad-10" />

                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">     
                                            <div class="form-group">
                                                <label>Linea de produccion</label>
                                                <div class="form-group input-group">
                                                    <form:select   path="lineaproduccionIdlineaproduccion.idlineaproduccion" name="lineaproduccionIdlineaproduccion" class="form-control" data-size="6">                                                                                                                                                                        
                                                        <form:option value=" " label="Seleccione una"/>
                                                        <form:options items="${lLineas}" itemValue="idlineaproduccion" itemLabel="nombre"/>                                                        
                                                    </form:select>
                                                </div>
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
                    </div>
                </form:form>
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

        <script src="${pageContext.request.contextPath}/resources/js/operaciones/jsoperaciones.js"></script>
    </body>
</html>