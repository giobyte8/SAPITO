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
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPITO</title>       
    </head>

    <body>

        <div id="wrapper">

            <%@include file="MenusCompras/Menude compras.jsp"%>
            <form action="consultaproveedor" method="get">
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Modificación de Proveedor
                            </h1>                        
                        </div>
                    </div>        
                    <center>
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title" >Mensaje</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-center"> 
                                                        <img src="resources/img/ok.png" width="50">
                                                        <h3>Proveedor modificado correctamente</h3>
                                                        <center>
                                                            <input type="submit" value="Aceptar" class="btn btn-success"  role="button">
                                                        </center>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--                          Fin Codigo Para panel 5 o menos input -->
                                </div>
                                <!--                      Fin TODO aqui abajo-->               
                            </div>
                        </div>
                </div>
                </center>
            </div>
            </form>
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


