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
            <!-- Navigation -->

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta de ordenes generadas 
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
                                            <h3 class="panel-title" >Solicitudes generadas </h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-14 text-left">                                                                                        
                                                    <div class="panel panel-default">
                                                        <!-- <label class="control-label" >Id</label>
                                                        <!--  <div class="panel-heading">........ </div> -->
                                                        <table class="table table-bordered">
                                                            <tr>

                                                                <td><b>Folio</b></td> 
                                                                <td><div align="center">Proveedor</div></td> 
                                                                <td><div align="center">Total de la solicitud</div></td> 
                                                                <td><div align="center">Estado de Solicitud</div></td> 
                                                                <td><div align="center">Fecha de Solicitud</div></td> 
                                                                <td><div align="center">Movimientos</div></td>

                                                            </tr>
                                                            <tr>
                                                                <td>1</td> 
                                                                <td>Fulanito345223</td> 
                                                                <td>15322.3684</td> 
                                                                <td>Solicitada</td> 
                                                                <td>16/02/2015</td> 
                                                                
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group">                                                                             
                                                                            
                                                                            <a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#consulta">Consultar</i></a>
                                                                            <a href="modificaOrden"><i class="btn  btn-success fa fa-edit" data-toggle="modal">Editar</i></a>                                                                            
                                                                            <a href="#"><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#eliminar">Eliminar</i></a>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </td> 
                                                            </tr>

                                                        </table>

                                                    </div> 


                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <input type="submit" value="Aceptar" class="btn btn-success  col-md-offset-11"  role="button">
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
            
            
            
            
             <div class="modal fade" id="consulta" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Orden de Compra</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <a href="modificaOrden" ><i class="btn  btn-warning fa fa-edit" data-toggle="modal" >  Editar</i></a>
                                        <a href="#" ><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#eliminar">  Eliminar </i></a>
                                        <div>
                                        </div><!-- /col-sm-12 -->
                                    </div><!-- /row -->
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <strong>Datos</strong> <span class="text-muted">:</span>
                                                </div>
                                                <div class="panel-body">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td>Nombre(s)</td>
                                                                <td id="nombreProveedor">Fulanito345223</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dirección</td>
                                                                <td id="direccion">Toluca</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Teléfono</td>
                                                                <td>7225508354</td>
                                                            </tr>
                                                            <tr>
                                                                <td>RFC</td>
                                                                <td>CUPU800825569</td>
                                                            </tr>
                                                            <tr>
                                                                <td>E-mail</td>
                                                                <td>tais1@hotmail.com</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Folio</td>
                                                                <td>1</td>
                                                            </tr>                                                            
                                                            <tr>
                                                                <td>Fecha creación</td>
                                                                <td>01/ABR/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha entrega</td>
                                                                <td>07/MAY/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Estado</td>
                                                                <td>Aprovada</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Total</td>
                                                                <td>5000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Estado del pago</td>
                                                                <td>Pagado</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div></div></div></div></div></div></div></div></div>
            
            
                       <div class="modal fade" id="eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Orden de Compra</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <h3>Orden de Compra que desea eliminar</h3>                                        
                                        <div>
                                        </div><!-- /col-sm-12 -->
                                    </div><!-- /row -->
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <strong>Datos</strong> <span class="text-muted">:</span>
                                                </div>
                                                <div class="panel-body">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                            
                                                            <tr>
                                                                <td>Nombre(s)</td>
                                                                <td id="nombreProveedor">Fulanito345223</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dirección</td>
                                                                <td id="direccion">Toluca</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Teléfono</td>
                                                                <td>7225508354</td>
                                                            </tr>
                                                            <tr>
                                                                <td>RFC</td>
                                                                <td>CUPU800825569</td>
                                                            </tr>
                                                            <tr>
                                                                <td>E-mail</td>
                                                                <td>tais1@hotmail.com</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Folio</td>
                                                                <td>1</td>
                                                            </tr>                                                            
                                                            <tr>
                                                                <td>Fecha creación</td>
                                                                <td>01/ABR/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha entrega</td>
                                                                <td>07/MAY/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Estado</td>
                                                                <td>Aprovada</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Total</td>
                                                                <td>5000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Estado del pago</td>
                                                                <td>Pagado</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div></div>
                                    <div class="form-group">
                                        <a onclick="window.location.reload()"><i class="btn  btn-warning fa fa-edit" data-toggle="modal" >  Confirmar</i></a>
                                        <a onclick="window.location.reload()" ><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#eliminar">  Cancelar </i></a>
                                        <div>
                                        </div><!-- /col-sm-12 -->
                                    </div><!-- /row -->
                                </div></div></div></div></div></div></div>
            
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



