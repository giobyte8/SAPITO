<%-- 
    Document   : fancyAdminEmpleados
    Created on : 12/05/2015, 10:45:53 PM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <h3>${Empleado.nomre}  ${Empleado.apaterno}   ${Empleado.amaterno}</h3>

                        <div>
                        </div><!-- /col-sm-12 -->
                    </div><!-- /row -->
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="thumbnail">
                                <img class="img-responsive user-photo" src="http://wraggelabs.com/static/images/default_avatar-2.gif">
                            </div><!-- /thumbnail -->
                        </div><!-- /col-sm-1 -->

                        <div class="col-sm-10">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <strong>Datos</strong> <span class="text-muted">:</span>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <td>Clave</td>
                                                <td>${Empleado.idempleado}</td>
                                            </tr>
                                            <tr>
                                                <td>Departamento</td>
                                                <td>${Empleado.departamentoIddepartamento.nombreDepartamento}</td>
                                            </tr>
                                            <tr>
                                                <td>Puesto</td>
                                                <td>${Empleado.puestoIdpuesto.nombre}</td>
                                            </tr>

                                            <tr>
                                                <td>Salario</td>
                                                <td>$ ${Empleado.puestoIdpuesto.sueldobase}</td>
                                            </tr>
                                            <tr>
                                                <td>Nombre(s)</td>
                                                <td>${Empleado.nomre}</td>
                                            </tr>
                                            <tr>
                                                <td>Apellido Paterno</td>
                                                <td>${Empleado.apaterno}</td>
                                            </tr>
                                            <tr>
                                                <td>Apellido Materno</td>
                                                <td>${Empleado.amaterno}</td>
                                            </tr>
                                            <tr>
                                                <td>RFC</td>
                                                <td>${Empleado.rfc}</td>
                                            </tr>
                                            <tr>
                                                <td>Seguro Social</td>
                                                <td>${Empleado.numSeguro}</td>
                                            </tr>
                                            <tr>
                                                <td>Periodos de Vacaciones</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Incapacidades</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Sexo</td>
                                                <td>${Empleado.sexo}</td>
                                            </tr>
                                            <tr>
                                                <td>Sexo</td>
                                                <td>${Empleado.estadoCivil}</td>
                                            </tr>
                                            <tr>
                                                <td>Fecha de Nacimiento</td>
                                                <td>${Empleado.fechaNacimiento}</td>
                                            </tr>
                                            <tr>
                                                <td>Calle</td>
                                                <td>${Empleado.calle}</td>
                                            </tr>
                                            <tr>
                                                <td>Colonia</td>
                                                <td>${Empleado.colonia}</td>
                                            </tr>
                                            <tr>
                                                <td>Estado</td>
                                                <td>${Empleado.estado}</td>
                                            </tr>
                                            <tr>
                                                <td>Municipio</td>
                                                <td>${Empleado.municipio}</td>
                                            </tr>
                                            <tr>
                                                <td>Codigo Postal</td>
                                                <td>${Empleado.codigoPostal}</td>
                                            </tr>
                                            <tr>
                                                <td>Telefono</td>
                                                <td>${Empleado.telefono}</td>
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
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
    </body>
</html>
