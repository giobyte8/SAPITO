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
            
            
           
 <!--<div id="page-wrapper">-->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Historial de Usuarios
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <ul id="myTab" class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#rh" role="tab" data-toggle="tab">Recursos Humanos</a></li>
                                <li><a href="#activos" role="tab" data-toggle="tab">Activos</a></li>
                                <li><a href="#almacen" role="tab" data-toggle="tab">AlmacÃ©n</a></li>
                                <li><a href="#compras" role="tab" data-toggle="tab">Compras</a></li>
                                <li><a href="#direccion" role="tab" data-toggle="tab">DirecciÃ³n</a></li>
                                <li><a href="#finanzas" role="tab" data-toggle="tab">Finanzas</a></li>
                                <li><a href="#ventas" role="tab" data-toggle="tab">Ventas</a></li> 
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="rh">
                                    <table id="rhTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Estado</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="activos">
                                    <table id="activosTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="almacen">
                                    <table id="almacenTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="compras">
                                    <table id="comprasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="direccion">
                                    <table id="direccionTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="finanzas">
                                    <table id="finanzasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="ventas">
                                    <table id="ventasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÃNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel">Historial del usuario actual</h4>
                            </div>
                            <div class="modal-body">
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
                                            <td>LAURA MIREYA</td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Paterno</td>
                                            <td>GUTIERREZ</td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Materno</td>
                                            <td>QUINTAL</td>
                                        </tr>
                                        <tr>
                                            <td>RFC</td>
                                            <td>CUPU800825569</td>
                                        </tr>
                                        <tr>
                                            <td>Fecha de contrataciÃ³n</td>
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
                                            <td>CÃ³digo Postal</td>
                                            <td>50478</td>
                                        </tr>
                                        <tr>
                                            <td>NÃºmero</td>
                                            <td>104</td>
                                        </tr>
                                        <tr>
                                            <td>PoblaciÃ³n</td>
                                            <td>Estado de MÃ©xico</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
         <!--   </div>-->
            
            <!--  ################################################-->

            
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
