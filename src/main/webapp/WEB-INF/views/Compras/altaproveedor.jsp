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

          <%@include file="MenusCompras/Menude compras.jsp"%>
            <form>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Alta De Proveedor
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
                                            <h3 class="panel-title">Datos de la Empresa</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre de la Empresa</label>
                                                        <input type="text" class="form-control" maxlength="50"  required>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label class="control-label">Calle</label>
                                                        <input type="text" class="form-control" maxlength="50" required >
                                                    </div>

                                                    <div class="form-group ">
                                                        <label class="control-label">Colonia</label>
                                                        <input type="text" class="form-control" maxlength="30" required>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Entidad Federativa</label>
                                                        <input type="text" class="form-control" maxlength="30" required>
                                                    </div>                                                   
                                                    <div class="form-group ">
                                                        <div class="col-lg-5 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Telefono</label>
                                                                <input type="text" class="form-control" maxlength="10" pattern="[0-9]{10}" required >
                                                            </div>

                                                        </div>
                                                    </div>                                                   

                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <label class="control-label" >RFC</label>
                                                        <input type="text" class="form-control" maxlength="13" required>
                                                    </div>                        
                                                        <div class="col-lg-4 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Número Exterior</label>
                                                                <input type="text" class="form-control" maxlength="5" pattern="[0-9]{10}" required>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-4 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Número Interior</label>
                                                                <input type="text" class="form-control" maxlength="5" pattern="[0-9]{10}" required >

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Codigo postal</label>
                                                                <input type="text" class="form-control"maxlength="5" pattern="[0-9]{5}" required>

                                                            </div>
                                                        </div>

                                                    <br>
                                                    <div class="form-group ">
                                                        <label class="control-label">Municipio</label>
                                                        <input type="text" class="form-control"maxlength="30" required >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Email</label>
                                                        <input type="text" class="form-control" maxlength="30" required>
                                                    </div>
                                                </div>
                                            </div>                      
                                        </div>
                                    </div> 
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Datos del Contacto</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre</label>
                                                        <input type="text" class="form-control" maxlength="20" required>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Apellido Materno</label>
                                                        <input type="text" class="form-control" maxlength="15" required>
                                                    </div>
                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <label class="control-label" >Apellido Paterno</label>
                                                        <input type="text" class="form-control" maxlength="15" required>
                                                    </div>                        
                                                    <div class="form-group ">
                                                        <label class="control-label">Telefono</label>
                                                        <input type="text" class="form-control" maxlength="10" pattern="[0-9]{10}"required >
                                                    </div>
                                                </div>
                                            </div>                      
                                        </div>
                                    </div>      
                                    <div class="row">
                                        <input type="submit" value="Aceptar" class="btn btn-primary  col-md-offset-11"  role="button">
                                    </div> 
                                </div>                        
                            </div>  
                        </div>
                    </div><!--Fin del tag de fila-->
                </div><!-- Fin del tag del contenedor-->
            </div>
            <!-- /#page-wrapper -->
        </div>
        </form>
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


