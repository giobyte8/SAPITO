<%-- 
    Document   : AdminEstaciones
    Created on : 12/05/2015, 01:26:18 AM
    Author     : zgm_e_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Administrar Estaciones
                            </h1>
                        </div>
                    </div>

                    <table id="tEstaciones" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                       <thead>
                            <tr>
                                <th>Nombre</th>                                
                                <th>Duración</th>
                                <th>Descipcion</th>
                                <th>Linea</th>    
                                <th>Operaciones</th>    
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${lEstacion}" var="estacion">
                                <tr data-value="${estacion.idestacion}">
                                    <<td>${estacion.nombre}</td>                                    
                                    <td>${estacion.tiempo}</td>
                                    <td>${estacion.descripcion}</td>                                    
                                    <td>${estacion.lineaproduccionIdlineaproduccion.idlineaproduccion}</td>  
                                    <td class="center">
                                        <a href="modificaEstacion?idEstacion=${estacion.idestacion}" title="Modificar">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                        &nbsp;&nbsp;
                                        <a href="bajaEstacion?idEstacion=${estacion.idestacion}" title="Baja">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </td>                                   
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
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

        <script >

            $(document).ready(function () {
                $('#tEstaciones').DataTable({
                    "language": {
                        "search": "Buscar:",
                        "paginate": {
                            "next": "Siguiente",
                            "previous": "Anterior"
                        },
                        "zeroRecords": "No se encontraron coincidencias"
                    },
                    "info": false,
                    "lengthChange": false
                });                
            });                       
        </script>
    </body>
</html>