<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : LAWL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="tags" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                        <table>
                            <tr>
                                <td>
                                    <select class="form-control" name="seleccionado" id="seleccionado">
                                        <option value="Ventas">Ventas</option>
                                        <option value="Compras">Compras</option>
                                        <option value="ActivosFijos">Activos Fijos</option>
                                        <option value="Operaciones"> Operaciones</option>
                                        <option value="Logística">Logística</option>
                                        <option value="RecursosHumanos">Recursos Humanos</option>
                                        <option value="Inventarios">Inventarios</option>
                                        <option value="Finanzas">Finanzas</option>
                                    </select>
                                    <INPUT TYPE="button" class="btn btn-success" value="Aceptar" name="Aceptar" id="btn_aceptar">
                                </td>

                            </tr>

                            <tr>
                                <td>
                                    <hr/>
                                    <a class="btn btn-success" type="button" href="HistorialReportes">Historial reportes</a>
                                    <a class="btn btn-success" type="button" href="ReportePrueba">Crear Reporte</a>

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
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>
        <script>
            $(document).ready(function () {
                $("#btn_aceptar").click(function () {

                    var valor = $("#seleccionado").find("option:selected").attr("value");

                    if (valor == "Ventas") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Ventas";

                    }if (valor == "Compras") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Compras";

                    }
                    if (valor == "ActivosFijos") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "ActivosFijos";

                    }
                    if (valor == "Operaciones") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Operaciones";

                    }
                    if (valor == "Logística") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Logística";

                    }
                    if (valor == "RecursosHumanos") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "RecursosHumanos";

                    }
                    if (valor == "Inventarios") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Inventarios";

                    }
                    if (valor == "Finanzas") {
                        //document.location.href("ventas.com")
                        alert(valor);
                        window.location.href = "Finanzas";

                    }
                    

                });

            });
        </script>
    </body>

</html>


