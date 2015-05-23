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


                    <div class="row-fluid">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Buscar Empleado por Clave</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <div class="form-group input-group">
                                            <input type="search" class="form-control" placeholder="nombre del departamento" onkeypress="return soloNumeros(event);" maxlength="10">
                                            <span class="input-group-btn">
                                                <button id="empId" type="button" class="btn btn-info" onclick="buscaNoValido()"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid user-infos cyruxx">
                        <div class="span10 offset1">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">User information</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row-fluid">
                                        <div class="span3">
                                            <img class="img-circle"
                                                 src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
                                                 alt="User Pic">
                                        </div>
                                        <div class="span6">
                                            <strong>Cyruxx</strong><br>
                                            <table class="table table-condensed table-responsive table-user-information">
                                                <tbody>
                                                    <tr>
                                                        <td>User level:</td>
                                                        <td>Administrator</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Registered since:</td>
                                                        <td>11/12/2013</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Topics</td>
                                                        <td>15</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Warnings</td>
                                                        <td>0</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <button class="btn  btn-primary" type="button"
                                            data-toggle="tooltip"
                                            data-original-title="Send message to user"><i class="icon-envelope icon-white"></i></button>
                                    <span class="pull-right">
                                        <button class="btn btn-warning" type="button"
                                                data-toggle="tooltip"
                                                data-original-title="Edit this user"><i class="icon-edit icon-white"></i></button>
                                        <button class="btn btn-danger" type="button"
                                                data-toggle="tooltip"
                                                data-original-title="Remove this user"><i class="icon-remove icon-white"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
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
                        </div>
                    </div>
                </form>
            </div>


            <!--  ################################################-->


        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
