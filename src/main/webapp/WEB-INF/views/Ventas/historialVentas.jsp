<%-- 
    Document   : clientes
    Created on : Feb 23, 2015, 4:08:36 PM
    Author     : irving c
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Historial</title>
  </head>
  <body>
    <div id="wrapper">

      <!-- Navigation bar -->
      <%@include file="ventasNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Historial de Ventas
              </h1>
            </div>
          </div>

          <!-- Data table -->
          <table id="thistorial" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Id Orden</th>
                <th>Vendedor</th>
                <th>Cliente</th>
                <th>Fecha de la venta</th>
                <th>Status Venta</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${ordenes}" var="orden">
                  <tr>
                    <td>${orden.id}</td>
                    <td>${orden.vendedor.nombre}</td>
                    <td>${orden.cliente.empresa}</td>
                    <td>${orden.fechaEntrega}</td>
                    <td>${orden.status}</td>
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



    <!-- Modal dialog para detalles de clientes -->
    <c:forEach items="${ordenes}" var="orden">
        <div id="cts-modal${orden.id}" class="modal fade" tabindex="-1" role="dialog" 
             aria-labelledby="cliente-modal-title" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">

              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                </button>
                <h4 class="modal-title">Detalles de la venta</h4>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Vendedor:</label>
                    <input type="text" class="form-control" readonly/>
                  </div>

                  <div class="col-md-6">
                    <br/><label>Fecha en que se realizo:</label>
                    <input type="text" class="form-control" readonly value="${orden.fechaPedido}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Cliente:</label>
                    <input type="text" class="form-control" readonly value="${orden.cliente.empresa}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>RFC del Cliente:</label>
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
                    <br/><label>Monto de la Venta</label>
                    <input type="text" class="form-control" readonly value="${orden.montoConCargos}"/>
                  </div>

                  <div class="col-md-6">
                    <br/><label>Status de Venta</label>
                    <input type="text" class="form-control" readonly value="${orden.status}"/>
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



    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-historial');
            $('#thistorial').DataTable();
        });
    </script>
  </body>
</html>
