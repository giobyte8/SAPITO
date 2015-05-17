<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPITO</title>       
    </head>
    <body>
        <div id="wrapper">
            <%@include file="MenusCompras/Menude compras.jsp"%>
            <!-- Page content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consulta de Orden Compra
                            </h1>
                        </div>
                    </div>

                    <!-- Data table -->
                    <table id="tconsultaOrdenes" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Id Orden</th>
                                <th>Empresa</th>
                                <th>RFC</th>
                                <th>Proveedor</th>
                                <th>Fecha de la Orden</th>                                
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ordenes}" var="orden">
                                <tr>
                                    <td>${orden.id}</td>
                                    <td>Some vendor</td>
                                    <td>${orden.cliente.empresa}</td>                                    
                                    <td>${orden.fechaEntrega}</td>
                                    <td>${orden.montoConCargos}</td>                                    
                                    <td><button class="btn btn-xs btn-success" type="button"
                                                data-toggle="modal" data-target="#cts-modal${orden.id}">
                                            Detalles</button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br/><br/>
                </div>
            </div>
        </div>
        <!-- Modal dialog para detalles de Ordenes de Compra-->
        <c:forEach items="${ordenes}" var="orden">
            <div id="cts-modal${orden.id}" class="modal fade" tabindex="-1" role="dialog" 
                 aria-labelledby="orden-modal-title" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                            </button>
                            <h4 class="modal-title">Detalles de la Compra</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Empresa:</label>
                                    <input type="text" class="form-control" readonly/>
                                </div>

                                <div class="col-md-6">
                                    <br/><label>Fecha en que se realizo:</label>
                                    <input type="text" class="form-control" readonly value="${orden.fechaPedido}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Proveedor:</label>
                                    <input type="text" class="form-control" readonly value="${orden.cliente.empresa}"/>
                                </div>
                                <div class="col-md-6">
                                    <br/><label>RFC:</label>
                                    <input type="text" class="form-control" readonly value="${orden.cliente.rfc}"/>
                                </div>
                            </div>
                            <div class="rw">
                                <h2>Productos en la orden</h2><br/>
                                <table id="tproductos" class="table table-bordered table-hover table-striped table-responsive">
                                    <thead>
                                        <tr>
                                            <th>Producto</th>
                                            <th>Cantidad</th>
                                            <th>Precio c/u</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${orden.productosVendidos}" var="producto">
                                            <tr>
                                                <td>${producto.productoInventario.nombre}</td>
                                                <td>${producto.cantidad}</td>
                                                <td>${producto.productoInventario.precioUnitario}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <br/><label>Fecha de Entrega</label>
                                    <input type="text" class="form-control" readonly value="${orden.montoConCargos}"/>
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
    </body>
</html>



