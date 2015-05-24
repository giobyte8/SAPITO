<%-- 
    Document   : adminPrestacionesAdmin
    Created on : 24/04/2015, 10:41:30 AM
    Author     : Jovic
--%>

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
                           Andministrar Prestaciones
                        </h1>
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Prestaciones</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <label>Ingrese la clave del empleado para poder ver sus prestaciones:</label>
                                        <br>
                                        <br>
                                        <div class="form-group input-group">
                                            <input type="search" class="form-control" placeholder="clave del empleado" onkeypress="return soloNumeros(event);" maxlength="10">
                                            <span class="input-group-btn">
                                                <button id="empId" type="button" class="btn btn-success" onclick="buscaNoValido()"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <h3 class="panel-title">Prestaciones del empleado</h3>
                    </div>

                    <div class="panel-body">
                        <table class="table table-list-search">
                            <thead>
                                <tr>
                                    <th>Prestaci�n</th>
                                    <th>Fecha Alta</th>
                                    <th>Fecha Baja</th>
                                    <th>1200</th>
                                    <th>Detalles</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Seguro Social</td>
                                    <td>10/02/10</td>
                                    <td>No asignada</td>
                                    <td>1101</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                </tr>
                                <tr>
                                    <td>Prestamo</td>
                                    <td>10/02/11</td>
                                    <td>21/02/23</td>
                                    <td>10000</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                </tr>
                                <tr>
                                    <td>Aginaldo</td>
                                    <td>10/11/12</td>
                                    <td>10/11/12</td>
                                    <td>3220</td>
                                    <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                </tr>
                            </tbody>
                        </table>   
                    </div>

                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Historial del usuario actual</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <h3>Roberto Hernandez Gomez</h3>
                                        <a href="#" ><i class="btn  btn-warning fa fa-edit" data-toggle="modal" data-target="#myModal">  Editar</i></a>
                                        <a href="#" ><i class="btn  btn-warning fa fa-eraser" data-toggle="modal" data-target="#myModal">  Baja</i></a>
                                        <div>
                                        </div><!-- /col-sm-12 -->
                                    </div><!-- /row -->
                                    <div class="row">
                                        <div class="col-sm-1">
                                            <div class="thumbnail">
                                                <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                                            </div><!-- /thumbnail -->
                                        </div><!-- /col-sm-1 -->

                                        <div class="col-sm-5">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <strong>Datos</strong> <span class="text-muted">:</span>
                                                </div>
                                                <div class="panel-body">
                                                    <table class="table table-striped">
                                                        <tbody>
                                                            <tr>
                                                                <td>Departamento</td>
                                                                <td>Finanzas</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jefe inmediato</td>
                                                                <td>GERARDO ARIZMENDI ECHEGARAY</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Puesto</td>
                                                                <td>Empleado</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Nombre(s)</td>
                                                                <td>Roberto</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Apellido Paterno</td>
                                                                <td>Hernandez</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Apellido Materno</td>
                                                                <td>Gomez</td>
                                                            </tr>
                                                            <tr>
                                                                <td>RFC</td>
                                                                <td>CUPU800825569</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha de contratación</td>
                                                                <td>05/06/2013</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha de baja</td>
                                                                <td>18/09/2014</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Motivo de la baja</td>
                                                                <td>No cumplir con los requerimientos de productividad</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Periodos de Vacaciones</td>
                                                                <td>01/01/2014 - 05/04/2014</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Incapacidades</td>
                                                                <td>Ninguna</td>
                                                            </tr>
                                                            <tr>
                                                                <td>RFC</td>
                                                                <td>CUPU800825569</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sexo</td>
                                                                <td>Femenino</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fecha de Nacimiento</td>
                                                                <td>12/12/1981</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Calle</td>
                                                                <td>Carranza</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colonia</td>
                                                                <td>Centro</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ciudad</td>
                                                                <td>Toluca</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Código Postal</td>
                                                                <td>50478</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Número</td>
                                                                <td>104</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Población</td>
                                                                <td>Estado de México</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
                                        </body>
                                        </html>
