<%-- 
    Document   : administrarEmpleados
    Created on : 16/02/2015, 03:46:44 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->
        <title>Jefe Operativo RH</title>
    </head>
    <body>

        <%@include file="Menus/MenuJefeOperativo.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Ver Empleados
                    </h1>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-left">


                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Empleados de Recursos Humanos</h3>
                            </div>
                            <div class="panel-body">
                                <div class="input-group">

                                    <input class="form-control" id="system-search" name="q" placeholder="Busqueda" onkeypress="return soloTexto(event);"required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </div>
                            <table class="table table-list-search">
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>RFC</th>
                                        <th>Fecha Nacimiento</th>
                                        <th>Telefono</th>
                                        <th>Detalles</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <core:forEach items="${Empleados}" var="current">
                                        <tr class='gradeX' id="${current.idempleado}">


                                            <td><core:out value="${current.nomre} ${current.apaterno} ${current.amaterno}" /></td>
                                            <td><core:out value="${current.rfc}" /></td>
                                            <td><core:out value="${current.fechaNacimiento}" /></td>
                                            <td><core:out value="${current.telefono}" /></td>
                                            <td>
                                                <a class="fancyRHOperativo"  href="facyAdminEmpleadosCOper?id=${current.idempleado}">
                                                    <span class="btn  btn-warning fa fa-user"></span>
                                                </a>                                        
                                            </td>
                                        </tr>
                                    </core:forEach>
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
                                                    </div><!-- /panel-body -->
                                                </div><!-- /panel panel-default -->
                                            </div><!-- /col-sm-5 -->                  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
                        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
                        </body>
                        </html>
