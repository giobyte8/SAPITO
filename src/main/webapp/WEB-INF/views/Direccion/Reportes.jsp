<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : LAWL
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

        <!--         Bootstrap Core CSS 
                <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">
        
                 MetisMenu CSS 
                <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">
        
                 Custom CSS 
                <link href="../resources/css/libs/sb-admin-2.css" rel="stylesheet">
        
                 Custom Fonts 
                <link href="../resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">-->
        <%@include file="direccionHead.jsp" %>


    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <%@include file="dirNavs.jsp" %>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Abrir reporte de Hoy
                            </h1>                        
                        </div>
                    </div>        

                    <div aling="left" >
                        <table  >
                            <tr>
                                <td>
                                    <select class="form-control">
                                        <option>Ventas</option>
                                        <option>Compras</option>
                                        <option>Activos Fijos</option>
                                        <option>Operaciones</option>
                                        <option>Logística</option>
                                        <option>Recursos Humanos</option>
                                        <option>Inventarios</option>
                                        <option>Finanzas</option>
                                    </select>
                                    <a class="btn btn-success" type="button" href="Reportes">Cargar Reporte</a>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <hr/>
                                    <a class="btn btn-success" type="button" href="HistorialReportes">Historial reportes</a>
                                    <a class="btn btn-success" type="button" href="CrearReporte">Crear Reporte</a>

                                </td>
                            </tr>
                        </table>



                    </div>
                    <div align="center">
                        <center>


                        </center>
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


