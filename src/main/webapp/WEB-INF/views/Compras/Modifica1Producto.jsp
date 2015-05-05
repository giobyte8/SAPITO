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
            <form onsubmit="return Confirmacion();">

                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Modificar Producto
                                </h1>                        
                            </div>
                        </div>        

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-body">
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos Producto
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">
                                                            <label class="control-label">Nombre</label>
                                                            <input type="text" pattern="[a-zA-Z]*" class="form-control" required placeholder="Ingrese Nombre">
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label">Descripción</label>
                                                            <input type="text" class="form-control"  required placeholder="Ingrese Descripción">
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label">Marca</label>
                                                            <input type="text" class="form-control" name="marca" id="marca"  required placeholder="Ingrese Marca">
                                                        </div>
                                                         <div class="form-group ">
                                                            <label class="control-label">Categoría</label>

                                                            <select class="form-control" required>
                                                                <option>Seleccione Categoría</option>
                                                                <option>Activo Fijo</option>
                                                                <option>Materia Prima</option>

                                                            </select>
                                                        </div>



                                                        <!--Fin  inputs    /!-->
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                       
                                                        
                                                            <div class="form-group">
                                                                <label class="control-label" >Unidad</label>
                                                                 <select class="form-control">
                                                                <option>Pieza</option>
                                                                <option>Caja</option>
                                                                <option>Lote</option>

                                                            </select>
                                                                
                                                            </div>    
                                                        
                                                        
                                                            <div class="form-group ">
                                                                <label class="control-label">Costo</label>
                                                                <input placeholder="Ingrese Costo" type="text" pattern="[0-9]{10}" class="form-control"pattern="[0-9]{30}" required >
                                                            </div>

                                                        


                                                        <div class="form-group ">
                                                            <label class="control-label">Proveedor</label>
                                                            <select class="form-control" required>
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>

                                                            </select>
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




