<%-- 
    Document   : admistrarOperaciones
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
            <%@include file="Menu/menuOperaciones.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row-fluid">
                    <div class="col-lg-12">
                        <h1 class="page-header">Nueva Linea de Produccion&oacute;n</h1>
                    </div>
                </div>
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
                                        <input class="form-control" placeholder="Nombre" onkeypress="return soloNumeros()(event);"  maxlength="30" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Tiempo</label>
                                        <input class="form-control" placeholder="Tiempo" onkeypress="return soloTexto(event);"  maxlength="30" required>
                                    </div>  
                                    <div class="form-group">
                                        <label>Activo</label>
                                        <input class="form-control" id="numInt" placeholder="Descripci&oacute;n"  maxlength="30" onkeypress="return soloTexto(event);"required>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">     
                                    <div class="form-group">
                                        <label>Responsable</label>
                                        <input class="form-control" placeholder="Responsable" onkeypress="return soloNumeros(event);" maxlength="4" required>
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

</body>
</html>