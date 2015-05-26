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
                        <form:form id="mod-lineaProd" commandName="Lineaproduccion" action="ModificarLineas?idLinea=${linea.idlineaproduccion}"  method="POST">
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
                                                                id="nombreN" placeholder="Nombre" value="${linea.nombre}"/>
                                                    <form:errors path="nombre" element="div" class="alert-danger pad-10" />

                                                </div>
                                                <div class="form-group">
                                                    <label>Duración</label>
                                                    <form:input path="tiempo" id="duracion"  class="form-control" placeholder="Duración" value="${linea.tiempo}"/>
                                                    <form:errors path="tiempo" element="div" class="alert-danger pad-10" />

                                                </div>  

                                                <div class="form-group">
                                                    <label>Responsable</label>
                                                    <form:input path="responsa" name="responsable" type="text" class="form-control" 
                                                                id="responsabl" placeholder="responsable" value="${linea.responsa}"/>
                                                    <form:errors path="responsa" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group">
                                                    <label>Producto</label>
                                                    <form:select path="idProducto.id" class="form-control" >
                                                        <%--<form:option value="" label="Seleccione Una"/>--%>                                                                                                
                                                        <form:options  items="${lProductos}" itemValue="id"  itemLabel="nombreProducto"/>                                                
                                                    </form:select>
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
                                        <a href="AdministrarLineasProduccion" class="btn btn-danger">Cancelar</a>                                            
                                    </div>                           
                                    <br/>
                                </div>
                            </div>
                            <!-- /#page-wrapper -->
                        </form:form>
                    </div>
                </div>
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
