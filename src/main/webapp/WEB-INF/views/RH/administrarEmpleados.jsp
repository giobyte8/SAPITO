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
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Departamento</h3>
                            </div>
                            <div class="panel-body">          
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                        <label>Seleccione el departamento</label>
                                        <div class="form-group input-group">
                                            <select id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa">
                                                <option>Seleccione departamento</option>
                                                <option>Recursos Humanos</option>
                                                <option>Contabilidad</option>
                                                <option>Ventas</option>
                                                <option>Compras</option>
                                                <option>Dirección</option>
                                                <option>Almacén</option>
                                                <option>Proveedor</option>
                                                <option>Clientes</option>
                                                <option>Activos fijos</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                        <label>Seleccione el puesto</label>
                                        <div class="form-group input-group">
                                            <select id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">
                                                <option>Seleccione puesto</option>
                                                <option>Director</option>
                                                <option>Gerente</option>
                                                <option>Empleado</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Empleados</h3>
                            </div>
                            <div class="panel-body">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Busqueda" required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </div>
                            <table class="table table-list-search">
                                <thead>
                                    <tr>
                                        <th>Curp</th>
                                        <th>Nombre</th>
                                        <th>Edad</th>
                                        <th>Detalles</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>BADD110313HCMLNS12</td>
                                        <td>Roberto Hernandez Gomez</td>
                                        <td>34</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fa fa-user"></span></button></p></td>
                                    </tr>
                                    <tr>
                                        <td>JOSD110313HCMLPL87</td>
                                        <td>Jesus Montes Cruz</td>
                                        <td>23</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fa fa-user"></span></button></p></td>
                                    </tr>
                                    <tr>
                                        <td>PODD110313HCSER781</td>
                                        <td>Samantha Flores Ruiz</td>
                                        <td>38</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="fa fa-user"></span></button></p></td>
                                    </tr>
                                </tbody>
                            </table>   
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
    </body>
</html>
