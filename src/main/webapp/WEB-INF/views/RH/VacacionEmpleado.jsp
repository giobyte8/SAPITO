<%-- 
    Document   : ModificacionEmpleado
    Created on : 7/02/2015, 04:28:32 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->

        <title>SAPITO ITT</title>
    </head>
    <body>
        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <!--  ################################################-->
            
            
           <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Solicitud De Vacaciones
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <form onsubmit="return elementoSeleccionado()">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos Del Empleado</h3>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-16 col-md-offset-6text-center">
                                            <div class="col-lg-12">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered table-hover table-striped">

                                                        <thead>
                                                            <tr>
                                                                <th>ID De Empleado</th>
                                                                <th>Nombre(s)</th>
                                                                <th>Apellido Paterno</th>
                                                                <th>Apellido Materno</th>
                                                                <th>Departamento</th>
                                                                <th>Puesto</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            <tr><td>2535</td><td>Emmanuel</td><td>LÃ³pez</td><td>Sanches</td><td>Compras</td><td>Empleado</td></tr>

                                                        </tbody>
                                                    </table>            </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Indique Las Fechas De Su Periodo De Vacaciones</h3>
                                    </div>



                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de Inicio</label>
                                                <input id="fecha1" type="date" class="form-control">
                                            </div>
                                            <div class="form-group">

                                            </div>
                                            <h5></h5>
                                            <div class="radio">
                                                <label>

                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de Fin</label>
                                                <input id="fecha2" type="date" class="form-control"> </div>  
                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                        </div>  
                                    </div>
                                </div>
                            </div>

                            <div align="right">
                                <button type="submit" class="btn btn-success" onclick="checarFecha()">Aceptar</button>
                                <script src="js/fecha.js"></script>
                            </div>
                        </div>
                    </form>
                </div>

            
            <!--  ################################################-->

            
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
