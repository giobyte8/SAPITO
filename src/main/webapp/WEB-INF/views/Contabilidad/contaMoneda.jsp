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
        <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../resources/css/libs/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


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
                               Moneda
                            </h1>                        
                        </div>
                    </div>
                    <!-- /#page-wrapper -->
                    		<div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Monedas</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Moneda</th>
                                                    <th>Precio de Compra</th>
                                                    <th>Precio de Venta</th>
                                                    <th>Ultima fecha de actualizacion</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Dolar</td>
                                                    <td><input type="number" value="15.4395"/></td>
                                                    <td><input type="number" value="15.4444"/></td>
                                                    <td><input type="date"/></td>
                                                    <td align="center"><input type="submit" value="Generar Cambio" class="btn btn-success"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Yen</td>
                                                    <td><input type="number" value="0.1287"/></td>
                                                    <td><input type="number" value="0.1242"/></td>
                                                    <td><input type="date"/></td>
                                                    <td align="center"><input type="submit" value="Generar Cambio" class="btn btn-success"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Libra esterlina</td>
                                                    <td><input type="number" value="23.203"/></td>
                                                    <td><input type="number" value="23.203"/></td>
                                                    <td><input type="date"/></td>
                                                    <td align="center"><input type="submit" value="Generar Cambio" class="btn btn-success"/></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="../resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../resources/js/libs/sb-admin-2.js"></script>

    </body>

</html>
