<%-- 
    Document   : consultaproveedor
    Created on : 14/05/2015, 02:34:44 AM
    Author     : Monse
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    

    <head>
        <link href="${pageContext.request.contextPath}/resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

        <meta charset="utf-8">
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPITO</title>
    </head>
    <body>

        <div id="wrapper">
            <%@include file="MenusCompras/Menude compras.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta Proveedores
                            </h1>                        
                        </div>
                    </div>        
                    <!-- Data table -->
                    <table id="tproveedores" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Empresa</th>
                                <th>Teléfono</th>
                                <th>Email</th>
                                <th>Nombre del Contacto</th>
                                <th>Teléfono</th>
                                <th>Detalles</th>
                                <th>Modificar</th>                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${proveedores}" var="proveedor">
                                <tr>
                                    <td>${proveedor.empresa}</td>
                                    <td>${proveedor.telefono1}</td>
                                    <td>${proveedor.email}</td>
                                    <td>${proveedor.nombreContacto}</td>
                                    <td>${proveedor.telefono2}</td>
                                    <td>
                                        <button class="btn btn-xs btn-success" type="button" 
                                                data-toggle="modal" data-target="#cts-modal${proveedor.id}">
                                            Detalles
                                        </button>
                                    </td>
                                    <td>
                                        <a href="modificarproveedor?idproveedor=${proveedor.id}" class="btn btn-warning right btn-xs">Editar</a>                                        
                                    </td>                                   
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div><!-- Fin del tag del contenedor-->
            </div>
        </div>
        <!-- Modal dialog para detalles de proveedores -->
        <c:forEach items="${proveedores}" var="proveedor">
            <div id="cts-modal${proveedor.id}" class="modal fade" tabindex="-1" role="dialog" 
                 aria-labelledby="proveedor-modal-title" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                            </button>
                            <h4 class="modal-title">Detalles de Proveedor</h4>
                        </div>
                        <div class="modal-body">
                            <h4>Datos de la Empresa:</h4>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Empresa</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.empresa}"/>
                                </div>
                                <div class="col-md-6">
                                    <br/><label>País</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.pais}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>RFC</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.rfc}"/>
                                </div>
                                <div class="col-md-6">
                                    <br/><label>Calle</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.calle}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Código Postal</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.cp}"/>
                                </div>
                                <div class="col-md-6">
                                    <br/><label>Colonia</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.colonia}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Municipio</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.municipio}" />
                                </div>
                                <div class="col-md-6">
                                    <br/><label>Estado</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.estado}" />
                                </div>
                            </div>

                            <br/><br/><h4>Datos de contacto:</h4>
                            <div class="row">
                                <div class="col-md-4">
                                    <br/><label>Nombre (s)</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.nombreContacto}" />
                                </div>
                                <div class="col-md-4">
                                    <br/><label>Apellido paterno</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.apellidoPaternoContacto}" />
                                </div>
                                <div class="col-md-4">
                                    <br/><label>Apellido materno</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.apellidoMaternoContacto}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <br/><label>Email</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.email}" />
                                </div>
                                <div class="col-md-4">
                                    <br/><label>Teléfono</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.telefono1}" />
                                </div>
                                <div class="col-md-4">
                                    <br/><label>Teléfono 2.</label>
                                    <input type="text" class="form-control" readonly value="${proveedor.telefono2}"/>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">
                                Cerrar
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>
        
       

        <%@include file="MenusCompras/Pie compras.jsp"%>
        <script >
            $(document).ready(function () {
                $('#tproveedores').DataTable();
            });
        </script>
        
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/libs/dataTables.bootstrap.min.js"></script>
    </body>

</html>