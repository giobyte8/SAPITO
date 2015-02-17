<%-- 
    Document   : index
    Created on : 7/02/2015, 01:38:13 AM
    Author     : Edgar
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
        <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper">           
            <%@include file="Menu/menuContabilidad.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Reporte Dirección
                            </h1>                        
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Direccion</h3>
                        </div>
                        <div class="panel-body">
                            <!-------------------------->                                            
                           <label>Inicio del Ejercicio</label>
                                <div class="form-group input-group">                                                
                                    <input type="date" class="form-control"/>
                                    
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" style="" data-toggle="modal" data-target="#catalogoProducto"><i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>  
                            
                            <label>Fin del Ejercicio</label>
                               <input type="date" class="form-control"/>
                            
                            <label class="control-label" >Capital</label>
                            <input type="text" class="form-control" placeholder="" required/>                                            
                            <label class="control-label">Donaciones</label>
                            <input type="text" class="form-control" placeholder="" required/>
                            <label class="control-label">Ingresos por Aportacion de Socios</label>
                            <input type="text" class="form-control" placeholder="" required/>
                            <label class="control-label">Capital Total</label>
                            <input type="text" class="form-control" placeholder="" required/>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">                                                                                  	
                        </div>

                        <button type="button" class="btn btn-primary col-md-offset-11">Guardar</button>                                                                                                    
                    </div>     
                </div>
            </div>
            <!-- /#page-wrapper -->
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

    </body>

</html>