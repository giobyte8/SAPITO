<%-- 
    Document   : buscarProducto
    Created on : 22-feb-2015, 22:08:25
    Author     : Elizabeth
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp" %>
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Búsqueda
                            </h1>
                        </div>
                    </div>

                    <!-- /.col-lg-4 -->
                    <div class="panel panel-default">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <h2 class="panel-title">Buscar producto 
                                        </h2>
                                    </div>
                                    <div class="panel-body">
                                        <!--inicio panel
                                        <!-- Data table -->
                                        <table id="tbusqueda" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>Código Inventario</th>
                                                    <th>Nombre</th>
                                                    <th>Tipo Producto</th>
                                                    <th>Cantidad</th>
                                                    <th>Fecha de entrada</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${inventarios}" var="inventario">
                                                    <tr>
                                                        <td>${inventario.codigoInventario}</td>
                                                        <td>${inventario.nombre}</td>
                                                        <td>${inventario.tipoProducto}</td>
                                                        <td>${inventario.cantidad}</td>
                                                        <td>${inventario.fechaEntrada}</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-success" type="button" 
                                                                    data-toggle="modal" data-target="#cts-modal${inventario.id}">
                                                                Detalles
                                                            </button>
                                                        </td> 
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>  

                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <!-- /.col-lg-4 -->
                </div>
            </div>
            <!-- Modal dialog para detalles de clientes -->
            <c:forEach items="${inventarios}" var="inventario">                     
                <div id="cts-modal${inventario.id}" class="modal fade" tabindex="-1" role="dialog" 
                     aria-labelledby="inventario-modal-title" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                                </button>
                                <h4 class="modal-title">Detalles de producto</h4>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Código inventario</label>
                                <input type="text" class="form-control" readonly value="${inventario.codigoInventario}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Nombre</label>
                                <input type="text" class="form-control" readonly value="${inventario.nombre}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Tipo de producto</label>
                                <input type="text" class="form-control" readonly value="${inventario.tipoProducto}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Cantidad</label>
                                <input type="text" class="form-control" readonly value="${inventario.cantidad}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Cantidad mínima </label>
                                <input type="text" class="form-control" readonly value="${inventario.minimo}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Cantidad máxima </label>
                                <input type="text" class="form-control" readonly value="${inventario.maximo}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Ubicación </label>
                                <input type="text" class="form-control" readonly value="${inventario.ubicacion}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Fecha de entrada </label>
                                <input type="text" class="form-control" readonly value="${inventario.fechaEntrada}"/>
                            </div>

                            <div class="col-md-12">
                                <br/><label>Fecha de producción </label>
                                <input type="text" class="form-control" readonly value="${inventario.fechaProduccion}"/>
                            </div>
                        </div>
                    </div>
                    <!-- /#fin del panel -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">
                            Cerrar
                        </button>
                    </div> 
                </div>
            </div>
            </c:forEach>

               <!-- Footer and scripts -->
            <%@include file="inventariosFooter.jsp" %>
        <script >
            $(document).ready(function () {
                activatenb('nb-buscarproducto');
                $('#tproducto').DataTable();
            });
        </script>
    </body>
</html>