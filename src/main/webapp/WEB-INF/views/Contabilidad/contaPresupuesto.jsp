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

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->
        <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../resources/css/libs/sb-admin-2.css" rel="stylesheet">

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
                               Presupuestos
                            </h1>                        
                        </div>
                    </div>
                    <!-- /#page-wrapper -->
                    		<div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Presupuestos</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Fecha</th>
                                                    <th>Departamento</th>
                                                    <th>Responsable</th>
                                                    <th>Presupuesto Solicitado</th>
                                                    <th>Presupuesto Maximo</th>
                                                    <th>Estado</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>14/2/2015</td>
                                                    <td>Ventas</td>
                                                    <td>Luz</td>
                                                    <td>$100,000</td>
                                                    <td>$120,000</td>
                                                    <td><select class="form-control">
                                                            <option>Pendiente</option>
                                                            <option>Aceptado</option>
                                                            <option>Rechazado</option>
                                                            <option>A Direccion</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3327</td>
                                                    <td>15/2/2015</td>
                                                    <td>Compras</td>
                                                    <td>Cheft</td>
                                                    <td>$200,000</td>
                                                    <td>$100,000</td>
                                                    <td><select class="form-control">
                                                            <option>Pendiente</option>
                                                            <option>Aceptado</option>
                                                            <option>Rechazado</option>
                                                            <option>A Direccion</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3328</td>
                                                    <td>16/2/2015</td>
                                                    <td>Activo Fijo</td>
                                                    <td>Beto</td>
                                                    <td>$100,000</td>
                                                    <td>$150,000</td>
                                                    <td><select class="form-control">
                                                            <option>Pendiente</option>
                                                            <option>Aceptado</option>
                                                            <option>Rechazado</option>
                                                            <option>A Direccion</option>
                                                        </select>
                                                    </td>
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

