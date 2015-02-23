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
                                Consulta de productos
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
                                            <h3 class="panel-title" >Productos registrados </h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">                                                                                        
                                                    <div class="panel panel-default">
                                                        <!-- <label class="control-label" >Id</label>
                                                        <!--  <div class="panel-heading">........ </div> -->
                                                        <form>

                                                            <table class="table table-bordered">
                                                                <tr>

                                                                    <td><b>Id</b></td> 
                                                                    <td><b><div align="center">Nombre</div></b></td> 
                                                                    <td><b><div align="center">Descripcion</div></b></td> 
                                                                    <td><b><div align="center">Proveedor</div></b></td> 
                                                                    <td><b><div align="center">Categoria</div></b></td> 
                                                                    <td><b><div align="center">Precio</div></b></td> 

                                                                </tr>
                                                                
                                                               
                                                                <tr>
                                                                    <td>10</td> 
                                                                    <td>Equipo de Computo</td> 
                                                                    <td>Maquina de escritorio Dell Vostro</td> 
                                                                    <td>Dell Corporation</td> 
                                                                    <td>Activo Fijo</td> 
                                                                    <td>$3000</td> 
                                                                    <td>  
                                                                        <div align="center">
                                                                            <div  class="btn-group">  
                                                                                <a class="btn-group" href="Consulta1Producto">
                                                                                    &nbsp;Cotsulta 
                                                                                    <i class="fa fa-search " ></i>
                                                                                </a>
                                                                                <a class="btn-group" href="Modifica1Producto">
                                                                                    &nbsp;Modificar 
                                                                                    <i class="fa fa-pencil-square-o " ></i>
                                                                                </a>
                                                                                <a class="btn-group" href="#">
                                                                                    &nbsp;Eliminar 
                                                                                    <i class="fa fa-times"></i>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </td> 
                                                                </tr>

                                                            </table>
                                                        </form>

                                                    </div> 


                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <a class="btn btn-primary  col-md-offset-11"  type="button" href="compras">Aceptar</a>     
                                    </div>
                                    <!--                          Fin Codigo Para panel 5 o menos input -->
                                </div>
                                <!--                      Fin TODO aqui abajo-->
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
