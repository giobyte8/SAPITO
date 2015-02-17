<%-- 
    Document   : AdmVacacionEmpleado
    Created on : 14/02/2015, 02:50:45 AM
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

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Empleados en Vacaciones
                                </h1>                        
                            </div>
                        </div>        

                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="table-responsive">
                                            <table id="vacacionesTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Nombre</th>
                                                        <th>Inicio De Vacaciones</th>
                                                        <th>Fin De Vacaciones</th>
                                                        <th>DÃ­as</th>
                                                        <th>Validacion</th>
                                                        <th>Puesto</th>
                                                        <th>Departamento</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr><td>6465</td><td>Alejandra Morales Montiel</td><td >01/10/2014</td><td>10/10/14</td><td>10</td><td>Asignado</td><td>Empleado</td><td>Recursos Humanos</td></tr>
                                                    <tr><td>3546</td><td>Mario Estrada Ramirez</td><td>05/10/2014</td><td>08/10/2014</td><td>4</td><td>Asignado</td><td>Gerente</td><td>Compras</td></tr>
                                                    <tr><td>5346</td><td>Cesar Mendoza Gonzalez </td><td >12/10/2014</td><td>17/10/2014</td><td>6</td><td>Asignado</td><td>Gerente</td><td>ventas</td></tr>
                                                    <tr><td>8674</td><td>Luis Camargo Cano</td><td >15/10/2014</td><td>20/10/2014</td><td>6</td><td>Asignado</td><td>Empleado</td><td>Compras</td></tr>
                                                    <tr><td>9768</td><td>Antonio Aristeo Rojas</td><td >18/10/2014</td><td>21/10/2014</td><td>4</td><td>Asignado</td><td>Empleado</td><td>Recursos Humanos</td></tr>
                                                    <tr><td>4658</td><td>Marco Morales Campos</td><td >20/10/2014</td><td>25/10/2014</td><td>6</td><td>Asignado</td><td>Gerente</td><td>Ventas</td></tr>
                                                    <tr><td>2535</td><td>Emmanuel Lopez Sanches</td><td >30/10/2014</td><td>03/11/2014</td><td>5</td><td>Pendiente</td><td>Empleado</td><td>Compras</td></tr>
                                                    <tr><td>2860</td><td>Jorge Mora Lara</td><td >05/11/2014</td><td>11/11/2014</td><td>7</td><td>Pendiente</td><td>Empleado</td><td>Almacen</td></tr>
                                                    <tr><td>2635</td><td>Victor Ramos Gomez</td><td >01/12/2014</td><td>09/12/2014</td><td>9</td><td>Pendiente</td><td>Empleado</td><td>Recursos Humanos</td></tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <!--  ################################################-->

            
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>

