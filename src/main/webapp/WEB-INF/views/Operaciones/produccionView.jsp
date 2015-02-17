<%-- 
    Document   : ProduccionView
    Created on : 14/02/2015, 01:15:50 AM
    Author     : Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SAPito</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap Core CSS -->
        <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@include file="modal/catalogoProductos.jsp"%>
        <div id="wrapper">           
            <%@include file="Menu/menuProduccion.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Producción
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form>
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title" >Busca Producción</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-------------------------->                                            
                                                <div class="form-group">
                                                    <label>Producto</label>
                                                    <div class="form-group input-group">                                                
                                                        <input type="text" class="form-control" placeholder="Busca Producto" disabled>
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-default" data-toggle="modal" data-target="#catalogoProducto"><i class="fa fa-search"></i>
                                                            </button>
                                                        </span>
                                                    </div>  
                                                    <!-------------------------->
                                                    <label class="control-label" >Cantidad</label>
                                                    <input type="text" class="form-control" placeholder="Ingrese Cantidad" onkeypress="return soloNumeros(event);"required>
                                                    <!-------------------------->
                                                    <label class="control-label" >Lote</label>
                                                    <input type="text" class="form-control" placeholder="Ingrese Lote" onkeypress="return soloNumeros(event);"required>                                            
                                                    <label>Responsable</label>
                                                    <select class="form-control">
                                                        <option>Seleccione responsable</option>
                                                        <option>Admin1</option>
                                                        <option>Admin2</option>
                                                        <option>Admin3</option>
                                                    </select>
                                                    <label>Fecha</label>
                                                    <input type="date"class="form-control"/> 
                                                </div>                                                                                                                              
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">                                                                                  	
                                            </div>
                                            <button type="button" class="btn btn-primary col-md-offset-11">Aceptar</button>                                                                                                    
                                        </div>      
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title" >Datos</h3>
                                        </div>
                                        <div class="panel-body">
                                            <!-------------------------->

                                            <div class="form-group">
                                                <label>Id Producto</label>
                                                <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>
                                            </div>
                                            <!-------------------------->
                                            <label class="control-label" >Cantidad</label>
                                            <input type="text" class="form-control" placeholder="Ingrese Cantidad">
                                            <!-------------------------->
                                            <label class="control-label" >Lote</label>
                                            <input type="text" class="form-control" placeholder="Ingrese Lote">
                                            <div class="form-group">
                                                <label>Id Empleado</label>
                                                <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                </select>

                                            </div>
                                            <label>Fecha</label>
                                            <input type="date"class="form-control"/>                                                                                   
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-2">                                                                                  	
                                        </div>

                                        <button type="button" class="btn btn-primary col-md-offset-11">Aceptar</button>                                                                                                    
                                    </div>     
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>


        <!-- jQuery -->
        <script src="../resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../resources/js/libs/sb-admin-2.js"></script>        
        <script src="../resources/js/operaciones/jsoperaciones.js"></script>
    </body>   
</html>