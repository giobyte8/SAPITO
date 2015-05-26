<%-- 
    Document   : modificaLineas
    Created on : 24/05/2015, 07:03:53 AM
    Author     : Edgar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- MetisMenu CSS -->
        <!--link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet" type="text/css"-->

        <!-- Morris css -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/morris.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Datatables css -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

        <!-- Sweetalert css -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sweet-alert.css" rel="stylesheet" type="text/css">

        <!-- SAPITO css -->
        <link href="${pageContext.request.contextPath}/resources/css/sapito.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <%@include file="Menu/menuOperacionesJefeO.jsp"%>
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Modificar Lineas
                            </h1>                        
                        </div>
                    </div> 
                    <div class="row">                                                                     
                        <form:form id="mod-Estacion" commandName="Estacion" action="ModificarEstacion?idEstacion=${estacion.idestacion}"  method="POST">
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
                                                                id="nombreEs" placeholder="Nombre" value="${estacion.nombre}"/>
                                                    <form:errors path="nombre" element="div" class="alert-danger pad-10" />

                                                </div>
                                                <div class="form-group">
                                                    <label>Tiempo</label>
                                                    <form:input path="tiempo" name="tiempo" type="text" class="form-control" 
                                                                id="tiempoEs" placeholder="Tiempo" value="${estacion.tiempo}"/>
                                                    <form:errors path="tiempo" element="div" class="alert-danger pad-10" />

                                                </div>  
                                                <div class="form-group">
                                                    <label>Descripcion</label>
                                                    <form:input path="descripcion" name="descripcion" type="text" class="form-control" 
                                                                id="descripcionEs" placeholder="Descripcion" value="${estacion.descripcion}"/>
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
                                        <a href="AdminEstaciones" class="btn btn-danger">Cancelar</a>                                            
                                    </div> 
                                    <br/>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>     
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

        <!-- Raphael js -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/raphael-min.js"></script>

        <!-- Datatables js -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.dataTables.min.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/libs/dataTables.bootstrap.min.js"></script>
    </body>
</html>
