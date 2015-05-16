<<%-- 
    Document   : inventarioMaximo
    Created on : Feb 23, 2015, 12:30:27 PM
    Author     : R2R
--%>

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
                            <h1 class="page-header">Existencias del inventario</h1>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12 text-left">
                                            <div>
                                                <ul id="myTab" class="nav nav-tabs" role="tablist">
                                                    <li class="active"><a href="#totales" role="tab" data-toggle="tab">Totales</a></li>
                                                    <li><a href="#minimos" role="tab" data-toggle="tab">Mínimos</a></li>
                                                    </br>
                                                    </br>
                                                    </br>
                                                </ul>
                                            </div>
                                            <div id="myTabContent" class="tab-content">
                                                <div class="tab-pane fade in active" id="totales">
                                                    <table id="tinventario" class="table table-bordered table-hover 
                                                           table-striped table-responsive" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Código inventario</th>
                                                                <th>Nombre</th>
                                                                <th>Tipo producto</th>
                                                                <th>Cantidad</th>
                                                                <th>Fecha entrada</th>
                                                                <th>Detalles</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${inventario}" var="inventario">
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
                                                <div class="tab-pane fade" id="minimos">
                                                    <table id="tinventario" class="table table-bordered table-hover 
                                                           table-striped table-responsive" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Código inventario</th>
                                                                <th>Nombre</th>
                                                                <th>Tipo producto</th>
                                                                <th>Cantidad</th>
                                                                <th>Fecha entrada</th>
                                                                <th>Detalles</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${inventario}" var="inventario">
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->

        <%@include file="inventariosFooter.jsp" %>
        <script >
            $(document).ready(function () {
                $('#tinventario').DataTable();
            });
        </script>

    </body>
</html>