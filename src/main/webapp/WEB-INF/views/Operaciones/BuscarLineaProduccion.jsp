Created on : 6/05/2015, 04:59:24 PM
Author     : zgm_e_000
--%>
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
        <div id="wrapper">           
            <%@include file="Menu/menuOperacionesJefeO.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Lineas Registradas
                        </h1>
                    </div>
                </div>

                <!-- Data table -->
                <table id="tvendedores" class="table table-bordered table-hover 
                       table-striped table-responsive" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Produccion</th>
                            <th>Status</th>
                            <th>Tiempo</th>
                            <th>Detalles</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach begin="1" end="20" varStatus="loop">
                        <tr>
                            <td>Some data</td>
                            <td>Some data</td>
                            <td>Some data</td>
                            <td>Some data</td>
                            <td>
                                <button class="btn btn-xs btn-success" type="button" 
                                        data-toggle="modal" data-target="#vendedores-modal">
                                    Detalles
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

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

    </body>
</html>