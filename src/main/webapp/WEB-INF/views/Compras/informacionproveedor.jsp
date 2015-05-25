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
        <script src="../resources/js/compras/Chart.js"></script>
        <script>


            var barData2 = {
                labels: ["${MejorProv}", "${SegundoMejor}", "${TercerMejor}"],
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
            var pieData2 = [
                {
                    value: ${primero},
                    color: "#F7464A",
                    highlight: "#FF5A5E",
                    label: "${MejorProv}"
                },
                {
                    value: ${segundo},
                    color: "#46BFBD",
                    highlight: "#5AD3D1",
                    label: "${SegundoMejor}"
                },
                {
                    value: ${tercero},
                    color: "#FDB45C",
                    highlight: "#FFC870",
                    label: "${TercerMejor}"
                },
                {
                    value: ${tota},
                    color: "#FDB45C",
                    highlight: "#FFC870",
                    label: "Restante Total"
                }
            ]

            window.onload = function () {

                var ctx5 = document.getElementById("chart-pieData2").getContext("2d");
                window.myPie = new Chart(ctx5).Pie(pieData2, {responsive: true});
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
                        <div class="col-lg-6" >
                            
                            <p>La Gráfica que se muestra a continuación nos muestra los datos relacionados a los mejores 3 proveedores de mayor a menor, tomando en cuentan el monto todal que se le ha comprado o solicitado de materia prima o activo fijo a cada uno de los proveedores <br> <br>
                            <p ALIGN=center> <b>Proveedores mas activos:</b> 
                            <br>
                            <br>
                            <b>Primer Proveedor:</b> ${MejorProv} : a quien se le ha comprado una cantidad de $ ${primero} Pesos 
                            <br>
                            <br>
                            <b>Segundo Proveedor:</b> ${SegundoMejor} a quien se le ha comprado una cantidad de $ ${segundo} Pesos
                            <br>
                            <br>
                            <b>Tercer Proveedor:</b> ${TercerMejor} a quien se le ha comprado una cantidad de $ ${tercero} Pesos
                            </p>
                            <br>
                        </div>
                        <div class="col-lg-6" align="center">
                            <div class="panel panel-green" >
                                <div class="panel-heading" >
                                    Mejores 3 Proveedores
                                </div>

                                <div class="panel panel-body">
                                    <div id="canvas-holder" align="center" >
                                        <canvas id="chart-barData2" width="800" height="400" align="center"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <br>
                         
                        <div class="col-lg-6" align="center">
                            <div class="panel panel-green" >
                                <div class="panel-heading" >
                                    Comparación General
                                </div>

                                <div class="panel panel-body">
                                    <div id="canvas-holder" align="center" >
                                        <canvas id="chart-pieData2" width="800" height="400" align="center"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6" >
                            <p>La Gráfica que se muestra a continuación nos muestra los datos relacionados a los mejores 3 proveedores, tamando en cuentan el monto todal que se la ha comprado o solicitado de materia prima o activo fijo a cada uno de ellos <br> <br>
                            Como se puede ver en la gráfia se muestra como el mejor Proveedor y su porcentaje relacionado al total de todas las compras realizadase donde el mejor fue : 
                            <br>
                            <br>
                            <b>${MejorProv} :</b> con un porsentaje de ${por1} %  del total comprado colocandolo en el primer puesto.
                            <br>
                            <br>
                            Para el segundo y tercer puesto se tienen a 
                            <b>${SegundoMejor}</b> y <b>${TercerMejor}</b> a quienes se les a comprado la cantidad de $ ${segundo} y $ ${tercero} Pesos, repectivamente 
                            lo cual equivale al un porcentague de ${por2} y ${por3} % respectivamnete del total que se ha comprado a todos los proveedores 
                            </p>
                            <br>
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


