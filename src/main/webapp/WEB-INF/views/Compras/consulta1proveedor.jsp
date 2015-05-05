
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
           <form action="consultaproveedor" method="GET">
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta Proveedor
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
                                                            <label class="control-label">Nombre</label>
                                                            <input type="text" class="form-control" maxlength="50" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">País</label>
                                                            <input type="text" class="form-control" maxlength="50" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Municipio</label>
                                                            <input type="text" class="form-control" maxlength="30" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Colonia</label>
                                                            <input type="text" class="form-control" maxlength="30" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Calle</label>
                                                            <input type="text" class="form-control" maxlength="50" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Número Interior</label>
                                                            <input type="text" class="form-control" maxlength="5" pattern="[0-9]{5}" disabled>
                                                        </div>

                                                    </div>

                                                    <div class="col-lg-6 text-left">                                                        
                                                        <div class="form-group ">

                                                            <div class="form-group ">
                                                                <label class="control-label">Número Exterior</label>
                                                                <input type="text" class="form-control" maxlength="5" pattern="[0-9]{5}" disabled>
                                                            </div>

                                                            <div class="form-group ">
                                                                <label class="control-label">Código Postal</label>
                                                                <input type="text" class="form-control" maxlength="5" pattern="[0-9]{5}" disabled>
                                                            </div>

                                                            <div class="form-group">
                                                                <label class="control-label" >RFC</label>
                                                                <input type="text" class="form-control" maxlength="13" disabled>
                                                            </div>

                                                            <div class="form-group ">
                                                                <label class="control-label">Teléfono</label>
                                                                <input type="text" class="form-control" maxlength="10" pattern="[0-9]{10}" disabled>
                                                            </div>                                                           
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Correo</label>
                                                            <input type="text" class="form-control" maxlength="30" disabled>
                                                        </div>

                                                        <div class="form-group ">
                                                            <label class="control-label">Forma de Pago</label>
                                                            <input type="text" class="form-control" maxlength="50" disabled>
                                                        </div>

                                                        <!--Fin  inputs/!-->
                                                    </div>                                                    
                                                </div>  

                                        </div>

                                    </div> 
                                   <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos Contacto</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">
                                                            <label class="control-label">Nombre</label>
                                                            <input type="text" class="form-control" disabled>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label">Apellido Materno</label>
                                                            <input type="text" class="form-control" disabled>
                                                        </div>                                                       
                                                        
                                                        <!--Fin  inputs/!-->
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group">
                                                            <label class="control-label" >Apellido Paterno</label>
                                                            <input type="text" class="form-control" disabled>
                                                        </div>                        
                                                        <div class="form-group ">
                                                            <label class="control-label">Teléfono</label>
                                                            <input type="text" class="form-control" disabled>
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
            <%@include file="MenusCompras/Pie compras.jsp"%>

    </body>

</html>