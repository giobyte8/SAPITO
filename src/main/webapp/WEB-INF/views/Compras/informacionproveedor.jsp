<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : Monse
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
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- MetisMenu CSS -->
        <!--link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet" type="text/css"-->

        <!-- Morris css -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/morris.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


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
                                    Información Proveedor
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
                                                <h3 class="panel-title">Proveedor</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <div class="form-group ">
                                                            <label class="control-label">Seleccione un Proveedor</label>
                                                            <select class="form-control">
                                                                <option>Seleccione un Proveedor</option>
                                                                <option>Josue Salvador</option>
                                                                <option>Luis Monroy</option>
                                                            </select>

                                                            <br>

                                                            <table class="table table-bordered">
                                                                <tr>
                                                                    <td><b>ID</b></td>
                                                                    <td><b><div align="center">Empresa</div></b></td>
                                                                    <td><b><div align="center">Contacto</div></b></td> 
                                                                    <td><b><div align="center">Producto</div></b></td> 
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
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>


        <script src="${pageContext.request.contextPath}/resources/js/libs/raphael-min.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/libs/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/morris-data.js"></script>


    </body>

</html>


