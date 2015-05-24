<%-- 
    Document   : Consulta1Orden
    Created on : 24/04/2015, 12:54:24 AM
    Author     : Dany
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

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta de Orden de Compra
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
                                            <h3 class="panel-title">Datos del Proveedor
                                            </h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre del proveedor: </label>
                                                        <input placeholder=" FULANITO " type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Dirección: </label>
                                                        <input placeholder="DEL PARQUE" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Teléfono:</label>
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
                                                    <div class="form-group ">
                                                        <label class="control-label">Email: </label>
                                                        <input placeholder="facturasjosue@live.com"type="text" class="form-control" disabled >
                                                    </div>
                                                </div>
                                            </div>  
                                        </div>
                                    </div> 
                                    
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Detalles de la orden de compra
                                            </h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Folio: </label>
                                                        <input placeholder=" 0001 " type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Fecha de creación: </label>
                                                        <input placeholder="24/04/2015" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Estado:</label>
                                                        <input placeholder="Pendiente" type="text" class="form-control" disabled>
                                                    </div>


                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Total:</label>
                                                        <input placeholder="$ 50000"type="text" class="form-control" disabled>
                                                    </div>                                                    
                                                    <div class="form-group ">
                                                        <label class="control-label">Estado del pago: </label>
                                                        <input placeholder="Pagado"type="text" class="form-control" disabled >
                                                    </div>
                                                </div>
                                            </div>  
                                        </div>
                                    </div> 
                                    <div class="row, col-lg-12 text-right" >
                                        <input type="submit" value="Aceptar" class="btn btn-success  col-md-offset-11"  role="button">
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
            <%@include file="MenusCompras/Pie compras.jsp"%>

    </body>

</html>




