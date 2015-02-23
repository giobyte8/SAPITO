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
                                Consulta producto
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
                                            <h3 class="panel-title">Datos producto
                                            </h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Id</label>
                                                        <input placeholder="Ingrese Id" type="text" class="form-control" disabled>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label class="control-label">Nombre</label>
                                                        <input placeholder="Ingrese Nombre" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Descripcion</label>
                                                        <input placeholder="Ingrese Descripcion" type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Marca</label>
                                                        <input placeholder="Ingrese Marca" type="text" class="form-control" disabled >
                                                    </div>



                                                    <!--Fin  inputs/!-->
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <label class="control-label">Categoria</label>
                                                        <input placeholder="Categoria"type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label" >Unidad</label>
                                                        <input placeholder="Ingrese Unidad" type="text" class="form-control" disabled>
                                                    </div>                        
                                                    <div class="form-group ">
                                                        <label class="control-label">Costo</label>
                                                        <input placeholder="Ingrese Costo"type="text" class="form-control" disabled >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Id Proveedor</label>
                                                        <input placeholder="NOmbre del Provedor"type="text" class="form-control" disabled >

                                                    </div>

                                                </div>
                                            </div>  

                                        </div>

                                    </div> 
                                    <div class="row">
                                        <a class="btn btn-primary  col-md-offset-11"  type="button" href="ConsultaProducto">Aceptar</a>     
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




