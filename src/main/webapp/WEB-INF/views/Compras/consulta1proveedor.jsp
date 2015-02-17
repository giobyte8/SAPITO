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

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta de proveedor
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
                                            <h3 class="panel-title">Datos del proveedor
                                            </h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre: </label>
                                                        <input placeholder="tAMBORES Y MAZAZ NEVADO DE TOLUCA " type="text" class="form-control" disabled>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label class="control-label">Calle:</label>
                                                        <input placeholder="AV SOLIDARIDAD LAS TORRRES" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Colonia:</label>
                                                        <input placeholder="DEL PARQUE n" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Entidad federativa:</label>
                                                        <input placeholder="EDOMEX" type="text" class="form-control" disabled >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Telefono:</label>
                                                        <input placeholder="7223060631" type="text" class="form-control" disabled>
                                                    </div>


                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">RFC :</label>
                                                        <input placeholder="TELJ9204171992FQ0"type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="col-lg-4 text-left">
                                                        <div class="form-group">
                                                            <label class="control-label" >Numero exterior:</label>
                                                            <input placeholder="254" type="text" class="form-control" disabled>
                                                        </div>    
                                                    </div>
                                                    <div class="col-lg-4 text-left">
                                                        <div class="form-group ">
                                                            <label class="control-label">Numero interior:</label>
                                                            <input placeholder="S/N"type="text" class="form-control" disabled >
                                                        </div>    
                                                    </div>
                                                    <div class="col-lg-4 text-left">
                                                        <div class="form-group ">
                                                            <label class="control-label">Codigo postal</label>
                                                            <input placeholder="50180"type="text" class="form-control" disabled >
                                                        </div>    
                                                    </div>




                                                    <div class="form-group ">
                                                        <label class="control-label">Municipio</label>
                                                        <input placeholder="TOLUCA"type="text" class="form-control" disabled >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Email</label>
                                                        <input placeholder="facturasjosue@live.com"type="text" class="form-control" disabled >
                                                    </div>



                                                </div>
                                            </div>  

                                        </div>

                                    </div> 
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Datos del contacto</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre</label>
                                                        <input placeholder="Josue Salvador" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Apellido Materno</label>
                                                        <input placeholder="López" type="text" class="form-control" disabled>
                                                    </div>
                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group">
                                                        <label class="control-label" >Apellido Paterno</label>
                                                        <input placeholder="Tejocote" type="text" class="form-control" disabled>
                                                    </div>                        
                                                    <div class="form-group ">
                                                        <label class="control-label">Telefono</label>
                                                        <input placeholder="Ingrese Descripcion" type="text" class="form-control" disabled>
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




