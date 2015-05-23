<%-- 
    Document   : indexactivofijo
    Created on : Feb 7, 2015, 3:15:33 AM
    Author     : Usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="resources/css/sapito.css">

        <!-- Bootstrap Core CSS -->
        <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- Morris css -->
        <link href="resources/css/libs/morris.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
        <link href="resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

        <!-- Custom Fonts -->
        <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Datatables css -->
        <link href="resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">


        <!-- DataTables Responsive CSS -->
        <link href="resources/js/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">
            <%@include file="Menu.jsp"%>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Consultar Activo Fijo</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    Activos fijos asignados

                                </div>
                                <!-- /.panel-heading -->

                                <div class="panel-body">
                                    <div class="dataTable_wrapper">
                                        <table id="tActivoFijo" class="table table-bordered table-hover table-striped table-responsive">
                                            <thead>
                                                <tr>
                                                    <th>Activo Fijo</th>
                                                    <th>Tipo de Activo Fijo</th>
                                                    <th>Departamento</th>
                                                    <th>Propietario</th>
                                                    <th>Fecha de Adquisicion</th>
                                                    <th>Accion</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="af" items="${activofijo}">
                                                    <tr>
                                                        <td>${af.id}</td>
                                                        <td>${af.tipoactivofijo.nombre}</td>
                                                        <td>Depto</td>
                                                        <td>Prop</td>
                                                        <td>Fecha</td>
                                                        <td class="center">
                                                            <a href="mActivoFijo?idAF=${af.id}" title="Modificar">
                                                                <i class="fa fa-pencil-square-o"></i>
                                                            </a>
                                                            &nbsp;&nbsp;
                                                            <a href="gdaBaja?idAF=${af.id}" title="Baja" onclick="return confirm('Esta acci&oacute;n dar&aacute; de baja el activo fijo seleccionado ¿desea continuar?');">
                                                                <i class="fa fa-times"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>        

                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>






        <!-- Datatables js -->
        <script src="resources/js/libs/jquery.dataTables.min.js"></script>
        <script src="resources/js/libs/dataTables.bootstrap.min.js"></script>


        <script >
            $(document).ready(function () {
                $('#tActivoFijo').DataTable();
            });
        </script>

    </body>
</html>
