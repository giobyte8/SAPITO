<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : Djx
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

        <title>SAPito</title>
        <%@include file="direccionHead.jsp" %>
        <script src="../resources/js/direccion/Chart.js"></script>
        <script src="../resources/js/direccion/ChartData.js"></script>
        <!--estilo operaciones-->
        <style>
            body{
                padding: 0;
                margin: 0;
            }
            #canvas-holder{
                width:75%;
            }
        </style>
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <%@include file="dirNavs.jsp" %>

            <!-- Page Content -->
            <div id="page-wrapper" >
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Gráficas
                            </h1>                        
                        </div>
                    </div>   


                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Ventas
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-barData" width="200" height="200" align="center"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Compras
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-barData2" width="200" height="200" align="center"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Recursos Humanos - Sueldos
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-pieData" width="150" height="150" align="center"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>



                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Recursos Humanos - Empleados
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-pieData2" width="150" height="150" align="center"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Finanzas
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-barData3" width="150" height="150" align="left"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Activos Fijos
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-pieData3" width="150" height="150" align="left"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Operaciones
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-doughnutData" width="150" height="150" align="left"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Logistica
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-pieData4" width="150" height="150" align="left"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" align="center">
                        <div class="panel panel-green" >
                            <div class="panel-heading" >
                                Inventarios
                            </div>

                            <div class="panel panel-body">
                                <div id="canvas-holder" align="center" >
                                    <canvas id="chart-barData4" width="150" height="150" align="left"/>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <%@include file="footer_hist.jsp" %>
                            </div>
                        </div>
                    </div>


                </div><!-- Fin del tag del contenedor-->                            
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


