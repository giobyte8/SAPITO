<%-- 
    Document   : indexactivofijo
    Created on : Feb 7, 2015, 3:15:33 AM
    Author     : Usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="resources/css/sapito.css">

        <!-- Bootstrap Core CSS -->
        <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- Morris css -->
        <link href="resources/css/libs/morris.css" rel="stylesheet" type="text/css">

        <!-- Custom CSS -->
        <link href="resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

        <!-- Custom Fonts -->
        <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- PARA FECHA -->
        <link href="resources/css/activofijo/jquery-ui.css" rel="stylesheet" />

        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">
            <%@include file="Menu.jsp"%>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Modificar Activo Fijo
                            </h1>                        
                        </div>
                    </div>        
                    <center>
                        <div class="row">
                            <div class="col-lg-12 text-left" >
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title" >Datos</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-6 text-left"> 
                                                        <form action="gdaModificacion" method="post">
                                                            <input hidden="true" name="idActivoFijo" value="${idActivoFijo}">
                                                            <div class="form-group ">
                                                                <label class="control-label" >Producto</label>
                                                                <select disabled="true" name="sProducto" class="form-control" required>
                                                                    <option value="">Selecciona Producto</option>
                                                                    <option selected>Laptop Lenovo</option>
                                                                </select>
                                                            </div>                                                                                       
                                                            <div class="form-group ">
                                                                <label class="control-label" >Tipo</label>
                                                                <select name="tipoAF" class="form-control">
                                                                    <option selected="true" value="${idTipoAF}">${nomTipoAF}</option>
                                                                    <c:forEach items="${tipoAF}" var="tAF">
                                                                        <option value="${tAF.id}">${tAF.nombre}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>                                                            
                                                    </div>


                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group ">
                                                            <label class="control-label" >Departamento</label>
                                                            <select disabled name="sProducto" class="form-control" required>
                                                                <option value="">Selecciona Departamento</option>
                                                                <option>Direcci&oacute;n</option>
                                                                <option selected>Recursos Humanos</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" >Propietario</label>
                                                            <select disabled="true" name="sProducto" class="form-control" required>
                                                                <option value="">Selecciona Propietario</option>
                                                                <option selected>Ing. Daniel Sanchez</option>
                                                                <option>Lic. Geraldine Morales</option>
                                                            </select>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>                               
                                        <div class="form-group" style="text-align:right">
                                            <a href="consultar" onclick="return confirm('¿Est&aacute; seguro de cancelar la operaci&oacute;n?');">
                                                <input type="button" class="btn btn-success" value="Cancelar">
                                            </a>
                                            <input type="submit" class="btn btn-success" value="Continuar">
                                        </div>  

                                        </form>
                                        <!--                          Fin Codigo Para panel 5 o menos input -->
                                    </div>
                                    <!--                      Fin TODO aqui abajo-->               
                                </div>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>

        <!-- PARA FECHA -->
        <script type="text/javascript" src="resources/js/activofijo/jquery-ui.js"></script>        
        <script type="text/javascript">
                                                $(document).ready(function () {
                                                    $("#fecha").datepicker({
                                                        dateFormat: "yy-mm-dd",
            dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                    monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
                    });
                                                });
        </script>
    </body>
</html>
