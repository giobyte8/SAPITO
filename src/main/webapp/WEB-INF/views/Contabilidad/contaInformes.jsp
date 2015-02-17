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
        <%@include file="../Default/Modal/proximamente.jsp"%>
        <div id="wrapper">           
            <%@include file="Menu/menuContabilidad.jsp"%>
            
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Informes
                            </h1>                        
                        </div>
                    </div>
                    <!-- /#page-wrapper -->
                    <div class="col-lg-12">
                        <div class="col-md-3">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Estado de Resultados</h3>
                                </div>

                                <div class="panel-body" >
                                    
                                    <div class="col-md-12">
                                        <label class="control-label" style="font-size: 230px;" ><i class="fa fa-bar-chart"></i></label>
                                    </div>
                                    <div class="col-md-10"> <button data-toggle="modal" data-target="#proximamente" type="button" class="btn btn-primary col-md-offset-11">Consultar</button> </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        
                        
                        <div class="col-md-3">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Variaciones de Capital</h3>
                                </div>

                                <div class="panel-body" >
                                    
                                    <div class="col-md-12">
                                        <label class="control-label" style="font-size: 230px;" ><i class="fa fa-pie-chart"></i></label>
                                    </div>
                                    <div class="col-md-10">
                                        
                                        
                                        <button data-toggle="modal" data-target="#proximamente"type="button" class="btn btn-primary col-md-offset-11">Consultar</button> </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        
                        
                        <div class="col-md-3">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                      <h3 class="panel-title">Balance General</h3>
                                </div>

                                <div class="panel-body" >
                                    
                                    <div class="col-md-12">
                                        <label class="control-label" style="font-size: 230px;" ><i class="fa fa-line-chart"></i></label>
                                    </div>
                                    <div class="col-md-10"> <button data-toggle="modal" data-target="#proximamente"type="button" class="btn btn-primary col-md-offset-11">Consultar</button> </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        
                        <div class="col-md-3">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Flujo de Efectivo</h3>
                                </div>

                                <div class="panel-body" >
                                    
                                    <div class="col-md-12">
                                        <label class="control-label" style="font-size: 230px;" ><i class="fa fa-money"></i></label>
                                    </div>
                                    <div class="col-md-10"> <button data-toggle="modal" data-target="#proximamente"type="button" class="btn btn-primary col-md-offset-11">Consultar</button></div>
                                </div>
                                
                            </div>
                        </div>
                                                                       
                        
                         
                    </div>
                    <div class="row">
                        <div class="col-md-2">                                                                                  	
                        </div>

                                                                                                                           
                    </div>
                    
                    
                    
                    
                </div>
            </div>
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

