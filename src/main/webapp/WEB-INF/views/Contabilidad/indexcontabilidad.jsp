<%-- 
    Document   : index
    Created on : 7/02/2015, 01:38:13 AM
    Author     : Edgar
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

        <title>SAPito</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper">           
            <%@include file="Menu/menuContabilidad.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Módulo Contabilidad y Finanzas
                            </h1>                        
                        </div>
                    </div>
                    <!-- /#page-wrapper -->
                </div>
                
                <center> <img  class="img-responsive" src="${pageContext.request.contextPath}/resources/img/conta.jpg"/></center>
                
            </div>
        </div>
                <!-- /#wrapper -->
                <!-- jQuery -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

                <!-- Bootstrap Core JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

                <!-- Metis Menu Plugin JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

                <!-- Custom Theme JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>

                </body>

                </html>

