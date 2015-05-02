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
            <form action="compras/altaproveedor" method="POST">
                <!-- Page Content -->
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Información  Producto
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
                                                <h3 class="panel-title">Producto</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <div class="form-group ">
                                                            <label class="control-label">Seleccione un Producto</label>
                                                            <select class="form-control">
                                                                <option>Seleccione un Producto</option>
                                                                <option>Josue Salvador</option>
                                                                <option>Luis Monroy</option>
                                                            </select>

                                                            <br>

                                                            <table class="table table-bordered">
                                                                <tr>
                                                                    <td><b>ID</b></td>
                                                                    <td><b><div align="center">Empresa</div></b></td>
                                                                    <td><b><div align="center">Contacto</div></b></td> 
                                                                    <td><b><div align="center">Proveedor</div></b></td> 
                                                                    <td><b><div align="center">Cantidad de Compra</div></b></td>                                                                 
                                                                </tr>
                                                                <tr>
                                                                    <td>150</td> 
                                                                    <td>Tambores y Mazas de Toluca</td> 
                                                                    <td>Josue Salvador</td> 
                                                                    <td>Vasos</td>
                                                                    <td>10</td>   
                                                            </table>


                                                            <!--                                                            <div class="row">
                                                                                                                            <input type="submit" value="Aceptar" class="btn btn-primary  col-md-offset-11"  role="button">
                                                                                                                        </div> -->
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
                                <script src="../resources/js/libs/jquery.min.js"></script>

                                <!-- Bootstrap Core JavaScript -->
                                <script src="../resources/js/libs/bootstrap.min.js"></script>

                                <!-- Metis Menu Plugin JavaScript -->
                                <script src="../resources/js/libs/metisMenu.min.js"></script>

                                <!-- Custom Theme JavaScript -->
                                <script src="../resources/js/libs/sb-admin-2.js"></script>
            <%@include file="MenusCompras/Pie compras.jsp"%>

                                </body>

                                </html>


