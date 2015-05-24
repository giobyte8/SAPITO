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
          <table id="tconsultaOrdenes" class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Id Orden</th>
                <th>Fecha de entrega</th>
                <th>Fecha de pedido</th>
                <th>Aprobada</th>
                <th>Forma de pago</th>
                <th>Costo total</th>                                
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${ordenes}" var="orden">
                  <tr>
                    <td>${orden.id}</td>
                    <td>${orden.fechaEntrega}</td>
                    <td>${orden.fechaPedido}</td>                                    
                    <td>${orden.aprobada}</td>
                    <td>${orden.formaPago}</td>
                    <td>${orden.costoTotal}</td>
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
                    <br/><label>Aprobada</label>
                    <input type="text" class="form-control" readonly value="${orden.aprobada}" />
                  </div>
                  <div class="col-md-6">
                    <br/><label>Fecha de pedido</label>
                    <input type="text" class="form-control" readonly value="${orden.fechaPedido}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Fecha de Entrega</label>
                    <input type="text" class="form-control" readonly value="${orden.fechaEntrega}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>Departamento que solicita</label>
                    <input type="text" class="form-control" readonly value="Activo fijo" />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Forma de pago</label>
                    <input type="text" class="form-control" readonly value="${orden.formaPago}" />
                  </div>
                  <div class="col-md-6">
                    <br/><label>Costo total</label>
                    <input type="text" class="form-control" readonly value="${orden.costoTotal}"/>
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
                      <c:forEach items="${orden.productosEnOrden}" var="producto">
                          <tr>
                            <td>${producto.productoProveedor.producto.nombreProducto}</td>
                            <td>${producto.cantidad}</td>
                            <td>${producto.productoProveedor.costo}</td>
                          </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-warning">Aprobar</button>
                <button type="button" class="btn btn-success">Marcar como recibida</button>
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



