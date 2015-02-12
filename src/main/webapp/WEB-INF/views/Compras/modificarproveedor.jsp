<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : Monse
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
        <link href="resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SAPITO</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">                                        

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">                            
                            <li>
                                <a href="indexcompras.jsp"><i class="fa fa-dashboard fa-fw"></i> Proveedor <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="altaproveedor">Alta de Proveedor<span class="fa arrow"></span></a>
                                        <a href="modificarproveedor">Modificar Proveedor<span class="fa arrow"></span></a>
                                        <a href="bajaproveedor">Baja de Proveedor<span class="fa arrow"></span></a>
                                        <a href="informacionproveedor">Información de Proveedor<span class="fa arrow"></span></a>                                        
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Producto<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Alta de Producto<span class="fa arrow"></span></a>
                                        <a href="#">Modificar Producto<span class="fa arrow"></span></a>
                                        <a href="#">Baja de Produto<span class="fa arrow"></span></a>
                                        <a href="#">Información de Producto<span class="fa arrow"></span></a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="tables.html"><i class="fa fa-table fa-fw"></i>Order de Compra</a>
                                <ul class="nav nav-second-level">

                                </ul>
                            </li>
                            <li>
                                <a href="forms.html"><i class="fa fa-edit fa-fw"></i>Información</a>
                                <ul class="nav nav-second-level">

                                </ul>
                            </li>                            
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Modificar
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <br/>                            
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Proveedor</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <select id="disabledSelect" class="form-control">
                                                            <option>Seleccione un Proveedor</option>
                                                        </select> 
                                                    </div>
                                                </div>                                     

                                                <!--Fin  inputs/!-->
                                            </div>                                               
                                        </div>
                                    </div>
                                    <br>
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Datos de la Empresa</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre de la Empresa</label>
                                                        <input type="text" class="form-control" >
                                                    </div>

                                                    <div class="form-group ">
                                                        <label class="control-label">Calle</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Número Exterior</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Codigo Postal</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Estado</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Email</label>
                                                        <input type="text" class="form-control" >
                                                    </div>                                                   

                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <label class="control-label" >RFC</label>
                                                        <input type="text" class="form-control">
                                                    </div>                        
                                                    <div class="form-group ">
                                                        <label class="control-label">Número Interior</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Colonia</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Municipio</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Telefono</label>
                                                        <input type="text" class="form-control" >
                                                    </div>                                                    
                                                </div>
                                            </div>                      
                                        </div>
                                    </div> 
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Datos del Proveedor</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Apellido Materno</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <label class="control-label" >Apellido Paterno</label>
                                                        <input type="text" class="form-control">
                                                    </div>                        
                                                    <div class="form-group ">
                                                        <label class="control-label">Telefono</label>
                                                        <input type="text" class="form-control" >
                                                    </div>
                                                </div>
                                            </div>                      
                                        </div>
                                    </div>
                                </div>                                          
                            </div>                        
                        </div>  
                    </div>
                </div><!--Fin del tag de fila-->
            </div><!-- Fin del tag del contenedor-->
        </div>
        <!-- /#page-wrapper -->
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


