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

                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta de Activos Fijos
                            </h1>
                        </div>
                    </div>

                    <!-- Data table -->
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
                            <c:forEach var="af" items="${activoFijo}">
                                <c:if test="${af.activoFijo.status == 'Asignado'}">
                                    <tr>
                                        <td>${af.activoFijo.productoProveedor.producto.nombreProducto}</td>
                                        <td>${af.activoFijo.tipoactivofijo.nombre}</td>
                                        <td>${af.nombreref2.departamento.nombreDepartamento}</td>
                                        <td>${af.nombreref2.nombre} ${af.nombreref2.apaterno} ${af.nombreref2.amaterno}</td>
                                        <td>${af.activoFijo.fechaAdquisicion}</td>
                                        <td class="center">
                                            <a href="mActivoFijo?idAF=${af.activoFijo.id}" title="Modificar">
                                                <i class="fa fa-pencil-square-o"></i>
                                            </a>
                                            &nbsp;&nbsp;
                                            <a href="gdaBaja?idAF=${af.activoFijo.id}" title="Baja" onclick="return confirm('Esta acci&oacute;n dar&aacute; de baja el activo fijo seleccionado ¿desea continuar?');">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>

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
                $('#tActivoFijo').dataTable({
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.7/i18n/Spanish.json"
                    }
                });
            });
        </script>

    </body>
</html>
