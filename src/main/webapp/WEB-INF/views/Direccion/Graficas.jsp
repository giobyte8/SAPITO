
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
        <!-- <script src="../resources/js/direccion/ChartData.js"></script>
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


        <script>

            var arr = "${al2}";
            var arr2 = "${al}";
            arr = arr.split(" ");
            arr2 = arr2.split(" ");
            for (var i = 0; i < arr2.length; i++)
            {
                arr2[i] = (i === 0) ? arr2[i].slice(1, arr2[i].length - 1) : arr2[i].slice(0, arr2[i].length - 1);
            }
            for (var i = 0; i < arr.length; i++)
            {
                arr[i] = (i === 0) ? arr[i].slice(1, arr[i].length - 1) : arr[i].slice(0, arr[i].length - 1);
            }

            var barInv = {
                labels: arr2,
                datasets: [
                    {
                        fillColor: "rgba(0,100,0, 0.8)",
                        strokeColor: "rgba(34,139,34, 0.5)",
                        highlightFill:"rgba(34,22,22, 0.5)",
                        data: arr
                    }
                ]
            };

            var pieRH = [
                {
                    value: ${trab},
                    color: "#1B60C2",
                    highlight: "#427CCF",
                    label: "Trabajando"
                },
                {
                    value: ${inca},
                    color: "#961717",
                    highlight: "#A13737",
                    label: "Incapacitado"
                },
                {
                    value: ${vaca},
                    color: "#DBD75E",
                    highlight: "#E6E27E",
                    label: "Vacaciones"
                }
            ];

            var arrfin = "${albanco}";
            arrfin = arrfin.split(" ");
            for (var i = 0; i < arrfin.length; i++)
            {
                arrfin[i] = (i === 0) ? arrfin[i].slice(1, arrfin[i].length - 1) : arrfin[i].slice(0, arrfin[i].length - 1);
            }

            var arrfin2 = "${albanco2}";
            arrfin2 = arrfin2.split(" ");
            for (var i = 0; i < arrfin2.length; i++)
            {
                arrfin2[i] = (i === 0) ? arrfin2[i].slice(1, arrfin2[i].length - 1) : arrfin2[i].slice(0, arrfin2[i].length - 1);
            }

            var barFinan = {
                labels: arrfin,
                datasets: [
                    {
                        fillColor: "rgba(50,18,170,0.4)",
                        strokeColor: "rgba(72,17,89,0.4)",
                        highlightFill: "rgba(220,220,220,1)",
                        data: arrfin2
                    }

                ]
            };



            var pieData = [
                {
                    value: 30,
                    color: "#F7464A",
                    highlight: "#FF5A5E",
                    label: "Inventarios"
                },
                {
                    value: 80,
                    color: "#60C724",
                    highlight: "#8CDE5D",
                    label: "Compras"
                },
                {
                    value: 15,
                    color: "#949FB1",
                    highlight: "#A8B3C5",
                    label: "Ventas"
                },
                {
                    value: 20,
                    color: "#44AB7B",
                    highlight: "#6FC99F",
                    label: "Activo Fijo"
                },
                {
                    value: 5,
                    color: "#3B1B19",
                    highlight: "#5C3432",
                    label: "Logistica"
                },
                {
                    value: 37,
                    color: "#D1D152",
                    highlight: "#DEDE6F",
                    label: "Finanzas"
                },
                {
                    value: 120,
                    color: "#568AC4",
                    highlight: "#709FD4",
                    label: "Direccion"
                },
                {
                    value: 55,
                    color: "#602A75",
                    highlight: "#8E4CA8",
                    label: "RH"
                },
                {
                    value: 25,
                    color: "#9C5C28",
                    highlight: "#B87E4F",
                    label: "Operaciones"
                }
            ];

            var barCompra = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "My First dataset",
                        fillColor: "rgba(50,100,60,0.5)",
                        strokeColor: "rgba(220,220,220,0.8)",
                        highlightFill: "rgba(90,150,220,0.75)",
                        highlightStroke: "rgba(220,220,220,1)",
                        data: [5, 5, 8, 1, 6, 5, 4]
                    }
                ]
            };




            window.onload = function () {
                var ctx9 = document.getElementById("chart-barData4").getContext("2d");
                window.myBarChart = new Chart(ctx9).Bar(barInv, {responsive: true});

                var ctx5 = document.getElementById("chart-pieData2").getContext("2d");
                window.myPie = new Chart(ctx5).Pie(pieRH, {responsive: true});

                var ctx6 = document.getElementById("chart-barData3").getContext("2d");
                window.myBarChart = new Chart(ctx6).Bar(barFinan, {responsive: true});

                var ctx = document.getElementById("chart-pieData").getContext("2d");
                window.myPie = new Chart(ctx).Pie(pieData, {responsive: true});

                var ctx4 = document.getElementById("chart-barData2").getContext("2d");
                window.myBarChart = new Chart(ctx4).Bar(barCompra, {responsive: true});
            };
        </script>

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

