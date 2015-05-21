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
        <script src="../resources/js/direccion/Chart.js"></script>
        <script>
            
            
            var barData2 = {
                labels: [${MejorProv},${SegundoMejor},${TercerMejor}],
                datasets: [
                    {
                        label: "My First dataset",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(220,220,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [${primero},${segundo},${tercero}]
                    }
                ]
            };

            window.onload = function () {
                var ctx4 = document.getElementById("chart-barData2").getContext("2d");
                window.myBarChart = new Chart(ctx4).Bar(barData2, {responsive: true});
            };</script>
        <style>
            body{
                padding: 0;
                margin: 0;
            }
            #canvas-holder{
                width:100%;
            }
        </style>

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
                                    Información Proveedor Graficas de comparacion
                                </h1>                        
                            </div>
                        </div>        
                        <div class="col-lg-6" align="center">
                            <div class="panel panel-green" >
                                <div class="panel-heading" >
                                    Compras
                                </div>

                                <div class="panel panel-body">
                                    <div id="canvas-holder" align="center" >
                                        <canvas id="chart-barData2" width="800" height="400" align="center"/>
                                    </div>
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


