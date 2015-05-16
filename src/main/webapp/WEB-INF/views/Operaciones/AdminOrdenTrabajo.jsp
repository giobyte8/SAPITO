<%-- 
    Document   : AdminOrdenTrabajo
    Created on : 12/05/2015, 01:25:36 AM
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
            <div id="page-wrapper">
                <!-- Page Content -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Administrar Ordenes de Trabajo
                        </h1>
                    </div>
                </div>
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <h3 class="panel-title">Ordenes de trabajo</h3>
                    </div>
                    <div class="panel-body">
                        <div class="input-group">
                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                            <input class="form-control" id="system-search" name="q" placeholder="Busqueda" required>
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </div>
                    <table class="table table-list-search">
                        <thead>
                            <tr>
                                <th>Auditor</th>
                                <th>Prioridad</th>
                                <th>Estacion</th>
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Orden Uno</td>
                                <td>Alta</td>
                                <td>Estacion uno</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-info fa fa-dedent" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                            </tr>
                            <tr>
                                <td>Orden Uno</td>
                                <td>media</td>
                                <td>Estacion dos</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-info fa fa-dedent" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                            </tr>
                            <tr>
                                <td>Orden Uno</td>
                                <td>baja</td>
                                <td>Estacion tres</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-info fa fa-dedent" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                            </tr>
                        </tbody>
                    </table>   
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Detalles de Orden</h4>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <h3>Orden Uno</h3>
                                    <a href="#" ><i class="btn  btn-warning fa fa-edit" data-toggle="modal" data-target="#myModal">  Editar</i></a>
                                    <a href="#" ><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#myModal">  Baja</i></a>
                                    <div>
                                    </div><!-- /col-sm-12 -->
                                </div><!-- /row -->
                                <div class="row">
                                    <div class="col-sm-1">
                                        <div class="thumbnail">
                                            <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                                        </div><!-- /thumbnail -->
                                    </div><!-- /col-sm-1 -->

                                    <div class="col-sm-5">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <strong>Datos</strong> <span class="text-muted">:</span>
                                            </div>
                                            <div class="panel-body">
                                                <table class="table table-striped">
                                                    <tbody>
                                                        <tr>
                                                            <td>ID Orden</td>
                                                            <td>o1</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Fecha de pedido</td>
                                                            <td>02022015</td>
                                                        </tr>
                                                        <tr>
                                                            <td>fecha entrega</td>
                                                            <td>02022015</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Descripcion</td>
                                                            <td>orden de pedido</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Auditor</td>
                                                            <td>Raul</td>
                                                        </tr>                                                                                                                                   
                                                        <tr>
                                                            <td>Comentarios</td>
                                                            <td>falta material</td>
                                                        </tr>                                                                                                                                   
                                                        <tr>
                                                            <td>Estacion</td>
                                                            <td>Estacion uno</td>
                                                        </tr>                                                                                                                                   
                                                    </tbody>
                                                </table>
                                            </div><!-- /panel-body -->
                                        </div><!-- /panel panel-default -->
                                    </div><!-- /col-sm-5 -->                  
                                </div>
                            </div>
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
<script src="resources/js/libs/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="resources/js/libs/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/js/libs/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/js/libs/sb-admin-2.js"></script>

</body>
</html>