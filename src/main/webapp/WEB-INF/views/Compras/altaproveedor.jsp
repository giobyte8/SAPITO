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
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPITO</title>


    </head>

    <body>

        <div id="wrapper">

            <%@include file="MenusCompras/Menude compras.jsp"%>
            <form onsubmit="return Confirmacion();">
                <!-- Page Content -->
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Alta Proveedor
                                </h1>                        
                            </div>
                        </div>        

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                        
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de la empresa</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">
                                                            <label class="control-label">Nombre de la empresa</label>
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
                                                            <label class="control-label">Entidad federativa</label>
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
                                                                <label class="control-label">Número exterior</label>
                                                                <input type="text" class="form-control" required>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-4 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Número interior</label>
                                                                <input type="text" class="form-control" required >

                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 text-left">
                                                            <div class="form-group ">
                                                                <label class="control-label">Codigo postal</label>
                                                                <input type="text" class="form-control" required>

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
                                        <div class="panel panel-green">
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
                                                            <input type="text" class="form-control" maxlength="20" required>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label">Apellido materno</label>
                                                            <input type="text" class="form-control" maxlength="15" required>
                                                        </div>
                                                        <!--Fin  inputs/!-->
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group">
                                                            <label class="control-label" >Apellido paterno</label>
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
                                            <input type="submit" value="Aceptar" class="btn btn-success  col-md-offset-11"  role="button">
                                        </div>                                         
                                    </div>                        
                                </div>  
                            </div>
                        </div><!--Fin del tag de fila-->
                    </div><!-- Fin del tag del contenedor-->
                </div>
                <!-- /#page-wrapper -->
            </form>

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
        <script type="text/javascript" src="resources/js/compras/jscompras.js"></script>

        <%@include file="MenusCompras/Pie compras.jsp"%>

    </body>

</html>

