<<%-- 
    Document   : inventarioMaximo
    Created on : Feb 23, 2015, 12:30:27 PM
    Author     : R2R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>

        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp" %>
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Existencias del inventario</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-green">
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
                                                </ul>
                                                <div id="myTabContent" class="tab-content">
                                                    <div class="tab-pane fade in active" id="totales">
                                                        <table id="totalesTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Nombre</th>
                                                                    <th>Categoría</th>
                                                                    <th>Cantidad</th>
                                                                    <th>Ver detalles</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>113</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>453</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>354</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>785</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>285</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>965</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>786</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="tab-pane fade" id="minimos">
                                                        <table id="minimosTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Nombre</th>
                                                                    <th>Categoría</th>
                                                                    <th>Cantidad</th>
                                                                    <th>Ver detalles</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>113</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>453</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>354</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>785</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>285</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>965</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>786</td>
                                                                    <td>PRODUCTO 1</td>
                                                                    <td>CATEGORIA 1</td>
                                                                    <td>1000</td>
                                                                    <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->

                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">Detalles del producto</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                            <tr>
                                                                <td>Nombre del producto</td>
                                                                <td>Producto</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Código</td>
                                                                <td>123456789</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Categoría</td>
                                                                <td>Bujías</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha de entrada al inventario</td>
                                                                <td>05/05/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha de producción</td>
                                                                <td> - </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ubicación</td>
                                                                <td>AB-4 CD-5</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cantidad</td>
                                                                <td>1000</td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->

                    <!-- /.container-fluid -->
                </div>
            </div>
        </div>

        <!-- jQuery -->

        <%@include file="inventariosFooter.jsp" %>

    </body>
</html>