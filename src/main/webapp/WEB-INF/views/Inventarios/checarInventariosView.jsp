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
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

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




                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <ul id="myTab" class="nav nav-tabs" role="tablist">
                                                    <li class="active"><a href="#totales" role="tab" data-toggle="tab">Totales</a></li>
                                                    <li><a href="#minimos" role="tab" data-toggle="tab">Mínimos</a></li>
                                                    <li><a href="#maximos" role="tab" data-toggle="tab">Máximos</a></li>
                                                </ul>
                                                <div id="myTabContent" class="tab-content">
                                                    <div class="tab-pane fade in active" id="totales">
                                                        <table id="rhTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Nombre</th>
                                                                    <th>Categoría</th>
                                                                    <th>Subcatrgoría</th>
                                                                    <th>Cantidad</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>Producto 1</td>
                                                                    <td>Categoría 1</td>
                                                                    <td>Subcategoría 1</td>
                                                                    <td>100</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="tab-pane fade" id="maximos">
                                                        <table id="activosTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Nombre</th>
                                                                    <th>Categoría</th>
                                                                    <th>Subcatrgoría</th>
                                                                    <th>Cantidad</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>Producto 3</td>
                                                                    <td>Categoría 3</td>
                                                                    <td>Subcategoría 3</td>
                                                                    <td>1000</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="tab-pane fade" id="minimos">
                                                        <table id="almacenTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Nombre</th>
                                                                    <th>Categoría</th>
                                                                    <th>Subcatrgoría</th>
                                                                    <th>Cantidad</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>Producto 2</td>
                                                                    <td>Categoría 2</td>
                                                                    <td>Subcategoría 2</td>
                                                                    <td>10</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>








                                    </div>
                                    <!-- /.panel-body -->
                                </div>

                                <div align=right>
                                    <p >
                                        <a class="btn btn-primary" href="inventarios" role="button">Regresar</a>  






                                        </button>
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

                <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

                <!-- Bootstrap Core JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

                <!-- Metis Menu Plugin JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

                <!-- Custom Theme JavaScript -->
                <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>
                </body>
                </html>