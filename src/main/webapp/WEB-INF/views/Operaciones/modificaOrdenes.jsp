<%-- 
    Document   : modificaOrdenes
    Created on : 25/05/2015, 04:04:33 PM
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
                                Modificar Orden de trabajo
                            </h1>                        
                        </div>
                    </div> 
                    <div class="row">                                                                     
                        <form:form id="mod-ordenTrabajo" commandName="Ordentrabajo" action="ModificarOrdenTrabajo" method="POST">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos de Referencia</h3>
                                    </div>
                                    <div class="panel-body">    
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de Pedido </label>                                        
                                                <form:input path="fechapedido" id="fechaP" name="fechapedido" class="form-control" 
                                                            type="text" placeholder="Fecha de Pedido" value="${orden.fechapedido}"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Fecha de entrega</label>
                                                <form:input path="fechaentrega" id="fechaE" name="fechaentrega" class="form-control" 
                                                            placeholder="Fecha de Entrega" value="${orden.fechaentrega}"/>
                                            </div>  
                                            <div class="form-group">
                                                <label>Descripción</label>
                                                <form:input path="descripcion" name="descripcion" 
                                                            class="form-control"  placeholder="Descripción" value="${orden.descripcion}"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Auditor</label>
                                                <form:input path="auditor" name="auditor" class="form-control" placeholder="Auditor" value="${orden.auditor}"/>
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
                                                    <form:input path="prioridad" name="prioridad" class="form-control" placeholder="Prioridad" 
                                                                value="${orden.prioridad}"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Comentarios</label>
                                                    <form:input path="comentario" name="comentario" class="form-control" placeholder="Escribir comentarios" 
                                                                value="${orden.comentario}"/>
                                                </div>
                                            </div>                                
                                        </div>

                                    </div>
                                </div>
                                <div align="right">
                                    <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                                    <a href="AdminOrdenTrabajo" class="btn btn-danger">Cancelar</a>                                            
                                </div>                           
                                <br/>
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
