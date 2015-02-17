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
                                Consulta  de proveedores
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
                                            <h3 class="panel-title" >Proveedores registrados </h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">                                                                                        
                                                    <div class="panel panel-default">
                                                        <!-- <label class="control-label" >Id</label>
                                                        <input type="text" class="form-control" placeholder=" "> -->

                                                        <!--  <div class="panel-heading">........ </div> -->


                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <td><b>Id</b></td>
                                                                <td><b><div align="center">Empresa</div></b></td>
                                                                <td><b><div align="center">Contacto</div></b></td> 
                                                                <td><b><div align="center">Telefono</div></b></td> 
                                                                <td><b><div align="center">Correo</div></b></td> 
                                                                <td><b><div align="center">RFC</div></b></td> 
                                                            </tr>
                                                            <tr>
                                                                <td>150</td> 
                                                                <td>Tambores y Mazas de Toluca</td> 
                                                                <td>Josue Salvador</td> 
                                                                <td>7223060631</td> 
                                                                <td>facturasjosue@live.comm</td> 
                                                                <td>TELJ92041719FQ0</td> 
                                                                <td>  
                                                                    <div align="center">
                                                                        <div  class="btn-group">  
                                                                            <a class="btn-group" href="#">
                                                                                    &nbsp;Cotsulta 
                                                                                    <i class="fa fa-search " ></i>
                                                                                </a>
                                                                                <a class="btn-group" href="#">
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

                                                    </div> 


                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <input type="submit" value="Aceptar" class="btn btn-primary  col-md-offset-11"  role="button">
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

    </body>

</html>


