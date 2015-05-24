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
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title">Alta Prestaciones</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="table-responsive">
                                            <table id="vacacionesTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>Nombre Empleado</th>
                                                        <th>Fecha Inicio</th>
                                                        <th>Fecha Fin</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <core:forEach items="${detallevacaciones}" var="current">
                                                        <tr class='gradeX' id="${current.iddetallevacaciones}">


                                                            <td><core:out value="${current.idempleado.nomre} ${current.idempleado.apaterno} ${current.idempleado.amaterno}" /></td>
                                                            <td><core:out value="${current.idvacaciones.fechaalta}" /></td>
                                                            <td><core:out value="${current.idvacaciones.fechabaja}" /></td>
             
                                                        </tr>
                                                    </core:forEach>
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
        </div>
    </div>


    <!--  ################################################-->


</div>
<%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER las acciones del menu-->
</body>
</html>

