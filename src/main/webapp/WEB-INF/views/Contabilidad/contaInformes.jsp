<%-- 
    Document   : index
    Created on : 7/02/2015, 01:38:13 AM
    Author     : raf
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

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


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
                                Reportes
                            </h1>                        
                        </div>
                    </div>
                    <!-- /#page-wrapper -->
                    <div class="col-md-3">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Estado de Resultados</h3>
                            </div>

                            <div class="panel-body" >

                                <div class="col-md-12">
                                    <label class="control-label" style="font-size: 150px;" ><i class="fa fa-bar-chart"></i></label>
                                </div>
                                <div class="col-md-10">
                                    <form action="${pageContext.request.contextPath}/contabilidad/contaEstadoResultados">

                                        <b>Año del Ejercicio:</b>
                                        <select name="periodo"  class="form-control">
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                        </select><br>
                                        <button   type="submit" class="btn btn-success ">Consultar</button>
                                    </form>
                                </div>


                            </div>

                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Variaciones de Capital Contable</h3>
                            </div>

                            <div class="panel-body" >

                                <div class="col-md-12">
                                    <label class="control-label" style="font-size: 150px;" ><i class="fa fa-pie-chart"></i></label>
                                </div>
                                <div class="col-md-10">
                                    <form action="${pageContext.request.contextPath}/contabilidad/contaVariaciondeCapital">
                                        <b>Año del Ejercicio:</b>
                                        <select name="periodo"  class="form-control">
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                        </select><br>
                                        <button   type="submit" class="btn btn-success ">Consultar</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Balance General</h3>
                            </div>

                            <div class="panel-body" >

                                <div class="col-md-12">
                                    <label class="control-label" style="font-size: 150px;" ><i class="fa fa-line-chart"></i></label>
                                </div>
                                <div class="col-md-10"> 
                                    <form action="${pageContext.request.contextPath}/contabilidad/contaBalanceGeneral">
                                        <b>Año del Ejercicio:</b>
                                        <select name="periodo"  class="form-control">
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                        </select><br>
                                        <button   type="submit" class="btn btn-success ">Consultar</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Flujo de Efectivo</h3>
                            </div>

                            <div class="panel-body" >

                                <div class="col-md-12">
                                    <label class="control-label" style="font-size: 150px;" ><i class="fa fa-money"></i></label>
                                </div>
                                <div class="col-md-10">
                                    <form action="${pageContext.request.contextPath}/contabilidad/contaEstadoFlujo">
                                        <b>Año del Ejercicio:</b>
                                        <select name="periodo"  class="form-control">
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                        </select><br>
                                        <button   type="submit" class="btn btn-success ">Consultar</button>
                                    </form>
                                </div>
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

        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>

    </body>

</html>

