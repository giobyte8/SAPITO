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
        <title>JSP Page</title>
    </head>
    <body>

        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Administrar Empleados
                    </h1>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-12 text-left">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Departamento</h3>
                            </div>
                            <div class="panel-body">  
                                <form:form action="#" method="POST" commandName="Empleado">
                                    <div class="col-lg-4 text-left">
                                        <div class="form-group">
                                            <label>Seleccione el departamento</label>
                                            <div class="form-group input-group">
                                                <form:select class="form-control" path="departamentoIddepartamento.id">
                                                    <form:option value="0" label="Seleccione uno" />
                                                    <form:options items="${Departamento}"  itemValue="iddepartamento" itemLabel="nombreDepartamento"/>                       
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 text-left">
                                        <div class="form-group">
                                            <label>Seleccione el puesto</label>
                                            <div class="form-group input-group">
                                                <form:select id="disabledSelect" class="form-control" path="puestoIdpuesto.idpuesto">                                                      
                                                    <form:option value="0" label="Seleccione uno" />
                                                    <form:options  items="${puesto}"   itemValue="idpuesto" itemLabel="nombre" />
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label>Buscar</label>
                                            <div class="form-group input-group">
                                                <button type="submit" class="btn btn-primary fa fa-search"/>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>

                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Empleados</h3>
                            </div>
                            <div class="panel-body">
                                <div class="input-group">

                                    <input class="form-control" id="system-search" placeholder="Busqueda" onkeypress="return soloTexto(event);" required>
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
                                                <a class="fancyRH"  href="facyAdminEmpleadosC?id=${current.idempleado}">
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
                    <div class="modalcontent">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">Historial del usuario actual</h4>
                        </div>
                        <div class="modal-body">
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
        
    </body>
</html>
