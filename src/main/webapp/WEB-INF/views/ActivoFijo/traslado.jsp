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

        <!-- DataTables CSS -->
        <link href="resources/js/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="resources/js/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

        <!-- Datatables css -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

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
                                Traslado de Activos Fijos
                            </h1>
                        </div>
                    </div>

                    <!-- Data table -->
                    <table id="ttraslado" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Activo fijo</th>
                                <th>Departamento</th>
                                <th>Propietario</th>
                                <th>Acción</th>
                            </tr
                        </thead>
                        <tbody>
                            <c:forEach items="${historiales}" var="historial">
                                <c:if test="${historial.activoFijo.status == 'Asignado'}">
                                    <tr>
                                        <td>${historial.activoFijo.productoProveedor.producto.nombreProducto}</td>
                                        <td>${historial.nombreref2.departamentoIddepartamento.nombreDepartamento}</td>
                                        <td>${historial.nombreref2.nomre} ${historial.nombreref2.apaterno} ${historial.nombreref2.amaterno}</td>
                                        <td>
                                            <a href="tActivoFijo?idAF=${historial.id}" title="Trasladar"><i class="fa fa-arrows-h"></i></a>
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

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->

        <!-- Datatables js -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/dataTables.bootstrap.min.js"></script>
        <script >
            $(document).ready(function () {
                $('#ttraslado').dataTable({
                    "language": {
                        "url": "//cdn.datatables.net/plug-ins/1.10.7/i18n/Spanish.json"
                    }
                });
            });
        </script>
    </body>
</html>
