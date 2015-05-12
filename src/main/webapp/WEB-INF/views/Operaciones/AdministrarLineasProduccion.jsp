<%-- 
    Document   : administrarLineas
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
            <div id="page-wrapper">
                <!-- Page Content -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Administrar Lineas de Producci&oacute;n
                        </h1>
                    </div>
                </div>
                <!--                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 text-left">
                                            <div class="panel panel-green">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Datos del Departamento</h3>
                                                </div>
                                                <div class="panel-body">          
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label>Seleccione el departamento</label>
                                                            <div class="form-group input-group">
                                                                <select id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa">
                                                                    <option>Recursos Humanos</option>
                                                                    <option>Contabilidad</option>
                                                                    <option>Ventas</option>
                                                                    <option>Compras</option>
                                                                    <option>Dirección</option>
                                                                    <option>Almacén</option>                                
                                                                    <option>Activos fijos</option>
                                                                    <option>Operaciones</option> 
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label>Seleccione el puesto</label>
                                                            <div class="form-group input-group">
                                                                <select id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">
                
                                                                    <option>Director General</option>
                                                                    <option>Subdirectos General</option>
                                                                    <option>Director de Departamento</option>
                                                                    <option>Jefe de Departamento</option>
                                                                    <option>Jefe Operativo</option>
                                                                    <option>Empleado</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                </div>
                                            </div>-->

                <div class="panel panel-green">
                    <div class="panel-heading">
                        <h3 class="panel-title">Producciones</h3>
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
                                <th>Nombre</th>
                                <th>Tiempo</th>
                                <th>Status</th>
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Produccion Uno</td>
                                <td>2 dias</td>
                                <td>Activo</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                            </tr>
                            <tr>
                                <td>Produccion Uno</td>
                                <td>2 dias</td>
                                <td>Activo</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                            </tr>
                            <tr>
                                <td>Produccion Uno</td>
                                <td>2 dias</td>
                                <td>Activo</td>
                                <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
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
                    <h4 class="modal-title" id="myModalLabel">Detalles de Produccion</h4>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <h3>Produccion Uno</h3>
                                    <a href="#" ><i class="btn  btn-warning fa fa-edit" data-toggle="modal" data-target="#myModal">  Editar</i></a>
                                    <a href="#" ><i class="btn  btn-warning fa fa-eraser" data-toggle="modal" data-target="#myModal">  Baja</i></a>
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
                                                            <td>ID Produccion</td>
                                                            <td>p1</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Nombre</td>
                                                            <td>Producion Uno</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tiempo</td>
                                                            <td>2 dias</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Status</td>
                                                            <td>Actica</td>
                                                        </tr>                                                                  
                                                        <tr>
                                                            <td>Motivo de la baja</td>
                                                            <td>Actica</td>
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