<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
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
            <%@include file="Menu/menuInventarios.jsp"%>

            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Existencias totales</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        Resultados
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">

                                        <select class= "form-control">
                                            <option>
                                                Total
                                            </option>
                                            <option>
                                                Máximos
                                            </option>
                                            <option>
                                                Mínimos
                                            </option>

                                        </select>
                                        <br/>    
                                        <div class="dataTable_wrapper">
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>ID producto</th>
                                                        <th>Nombre</th>
                                                        <th>Categoría</th>
                                                        <th>Subcategoría</th>
                                                        <th>Cantidad</th>
                                                        <th>Mínimo</th>
                                                        <th>Máximo</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="odd gradeX">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>

                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>1</td>
                                                        <td>Producto 1</td>
                                                        <td>Categoría 1</td>
                                                        <td>Subcatergoría 1</td>
                                                        <td>100</td>
                                                        <td>10</td>
                                                        <td>300</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- /.table-responsive -->
                                    </div>
                                    <!-- /.panel-body -->
                                </div>

                                <div align=right>
                                    <p>
                                        <button type="submit" class="btn btn-primary" >Regresar</button>
                                    </p>
                                    <!-- /.panel -->
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->

                    <!-- /.container-fluid -->
                </div>

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