<%-- 
    Document   : ordenCompra
    Created on : 14/02/2015, 01:49:39 AM
    Author     : D4NY
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
            <form id="orden">

                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Orden de compra
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
                                                <h3 class="panel-title">Datos del proveedor
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->

                                                        <div class="form-group ">
                                                            <label class="control-label">Empresa</label>
                                                            <select class="form-control" name="empresa" required>
                                                                <option>Fulanito 1</option>
                                                                <option>Fulanito 2</option>
                                                                <option>Fulanito 3</option>

                                                            </select>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label ">RfC</label>
                                                            <input name="rfc" placeholder="Ingrese RFC" type="text" disabled="disabled" class="form-control" required>
                                                        </div>                                                    
                                                        <div class="form-group ">
                                                            <label class="control-label">Contacto</label>
                                                            <input name="contacto" placeholder="Ingrese Nombre del Contacto" type="text" disabled="disabled" class="form-control" required >
                                                        </div>
                                                        
                                                      <div class="col-lg-6 text-left">  
                                                        <div class="form-group ">
                                                            <br>                                                            
                                                            <label class="control-label">Forma de pago </label> &nbsp;&nbsp;&nbsp;&nbsp;
                                                            
                                                            <select name="forPago" size="1" id="select">
                                                                <option value="1">Efectivo</option>
                                                                <option value="2">Crédito</option>
                                                            </select>
                                                            
                                                        </div>
                                                      </div> 
                                                        <!--Fin  inputs    /!-->
                                                    </div>                                                
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->

                                                        <div class="form-group ">
                                                            <label class="control-label">Dirección</label>
                                                            <input name="direccion" placeholder="Ingrese Dirección" type="text" disabled="disabled" class="form-control" required>
                                                        </div>        
                                                        <div class="form-group ">
                                                            <label class="control-label">E-mail</label>
                                                            <input name="email" placeholder="Ingrese E-mail" type="text" disabled="disabled" class="form-control" required>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label">Teléfono</label>
                                                            <input name="telefono" placeholder="Ingrese Teléfono" type="text" disabled="disabled" class="form-control" required>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title" >Productos de la orden </h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">

                                                    <div class="col-lg-6 text-left">                                                
                                                        <div class="panel panel-default">
                                                            <label class="control-label">Productos a ingresar</label>
                                                            <select name="prodIngresar" class="form-control">
                                                                <option>Monitor HP 12000</option>
                                                                <option>Computadora Dell Inspiron seires 500</option>
                                                                <option>HDD Extaernal case 2.5"</option>

                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-lg-5">                                                                                                   
                                                        <input type="submit" value="Agregar" class="btn btn-success  col-md-offset-11"  role="button">                                                    
                                                    </div>



                                                    <div class="col-lg-12 text-left">                                                                                                                                            
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <td><div align="center">Cantidad</div></td> 
                                                                <td><div align="center">Producto</div></td> 
                                                                <td><div align="center">Descripcion</div></td> 
                                                                <td><div align="center">Cantidad</div></td>                                                                 
                                                                <td><div align="center">Precio</div></td> 
                                                                <td><div align="center">Importe</div></td>
                                                            </tr>
                                                            <tr>
                                                                <td>5</td> 
                                                                <td>Equipo de computo</td> 
                                                                <td>Computadora de Escritorio Dell Inpiron Series 5000</td> 
                                                                <td>5</td> 
                                                                <td>150</td> 
                                                                <td>750</td> 
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group"> 
                                                                            <a class="btn-group" href="#">
                                                                                    &nbsp;Eliminar 
                                                                                    <i class="fa fa-times"></i>
                                                                                </a> 
                                                                        </div>
                                                                    </div>
                   ConsultaProducto                                             </td> 
                                                            </tr>
                                                            <tr>
                                                                <td>3</td> 
                                                                <td>Monitor</td> 
                                                                <td>Monitor Hp Hybrid</td> 
                                                                <td>1</td> 
                                                                <td>50</td> 
                                                                <td>50</td> 
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group">    
                                                                            <a class="btn-group" href="#">
                                                                                    &nbsp;Eliminar 
                                                                                    <i class="fa fa-times"></i>
                                                                                </a> 
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

                                    <div >
                                        <input type="reset" value="Eliminar Datos" class="btn btn-success"  role="button">
                                        <input type="submit" value="Aceptar" class="btn btn-success  col-md-offset-9"  role="button">
                                    </div> 
                                </div>                        
                            </div>  
                        </div>
                    </div><!--Fin del tag de fila-->

                </div><!-- Fin del tag del contenedor-->
            </form>

        </div>
        <!-- /#page-wrapper -->
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>
            <%@include file="MenusCompras/Cabesa compras.jsp"%>

    </body>

</html>
