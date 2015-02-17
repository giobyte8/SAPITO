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
                                Orden de Compra
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
                                            <h3 class="panel-title">Datos  Orden de Compra
                                            </h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-- Fila de inputs/!-->
                                            <div class="row">
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    
                                                    <div class="form-group ">
                                                        <label class="control-label">Fecha de emisión</label>
                                                        <input placeholder="Ingrese fecha de emisión" type="text" class="form-control" required >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Fecha de entrega</label>
                                                        <input placeholder="Ingrese fecha de entrega" type="text" class="form-control" required >
                                                    </div>                                                    
                                                    <!--Fin  inputs    /!-->
                                                </div>                                                
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    <div class="form-group ">
                                                        <div class="form-group ">
                                                            <br>
                                                            <label class="control-label">Estado</label>                                                        
                                                            <select name="select" size="1" id="select">
                                                                <option value="1">Solicitado</option>
                                                                <option value="2">Aprobado</option>
                                                                <option value="3">Entregado</option>
                                                            </select>
                                                            </div>                                                    
                                                    </div>  
                                                    <div><br><br></div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Forma de Pago</label>
                                                        <select name="select" size="1" id="select">
                                                            <option value="1">Efectivo</option>
                                                            <option value="2">Crédito</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-primary">
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
                                                        <select class="form-control" required>
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>

                                                        </select>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Apellido Paterno</label>
                                                        <input placeholder="Ingrese apellido paterno" type="text" disabled="disabled" class="form-control" >
                                                    </div>                                                    
                                                    <div class="form-group ">
                                                        <label class="control-label">Apellido Materno</label>
                                                        <input placeholder="Ingrese apellido materno" type="text" disabled="disabled" class="form-control" >
                                                    </div>                                                    
                                                    <!--Fin  inputs    /!-->
                                                </div>                                                
                                                <div class="col-lg-6 text-left">
                                                    <!-- inputs/!-->
                                                    
                                                    <div class="form-group ">
                                                        <label class="control-label">Dirección</label>
                                                        <input placeholder="Ingrese Dirección" type="text" disabled="disabled" class="form-control" >
                                                    </div>        
                                                    <div class="form-group ">
                                                        <label class="control-label">E-mail</label>
                                                        <input placeholder="Ingrese E-mail" type="text" disabled="disabled" class="form-control" >
                                                    </div>
                                                    <div class="form-group ">
                                                        <label class="control-label">Teléfono</label>
                                                        <input placeholder="Ingrese Teléfono" type="text" disabled="disabled" class="form-control" >
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title" >Productos de la Orden </h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                
                                                <div class="col-lg-6 text-left">                                                
                                                <div class="panel panel-default">
                                                        <label class="control-label">Id producto</label>
                                                        <input placeholder="Inserta en id del producto a insertar" type="text" class="form-control" >                                                        
                                                </div>
                                                </div>
                                                
                                                <div class="col-lg-6 text-left">                                                                                                   
                                                <input type="submit" value="Agregar" class="btn btn-primary"  role="button">                                                    
                                                </div>
                                                
                                                
                                                
                                                <div class="col-lg-12 text-left">                                                                                                                                            
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <td><b><div align="center">Id</div></b></td> 
                                                                <td><b><div align="center">Producto</div></b></td> 
                                                                <td><b><div align="center">Descripcion</div></b></td> 
                                                                <td><b><div align="center">Cantidad</div></b></td>                                                                 
                                                                <td><b><div align="center">Precio</div></b></td> 
                                                                <td><b><div align="center">Importe</div></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td>img</td> 
                                                                <td>src</td> 
                                                                <td>no</td> 
                                                                <td>si</td> 
                                                                <td>si</td> 
                                                                <td>si</td> 
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group"> 
                                                                            <input type="submit" value="Eliminar" class="btn btn-danger "> 
                                                                        </div>
                                                                    </div>
                                                                </td> 
                                                            </tr>
                                                             <tr>
                                                                <td>img</td> 
                                                                <td>src</td> 
                                                                <td>no</td> 
                                                                <td>si</td> 
                                                                <td>si</td>                                                                 
                                                                <td>si</td> 
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group">                                                                             
                                                                            <input type="submit" value="Eliminar" class="btn btn-danger "> 
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
                                            <input type="submit" value="Aceptar" class="btn btn-primary      col-md-offset-11"  role="button">
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
