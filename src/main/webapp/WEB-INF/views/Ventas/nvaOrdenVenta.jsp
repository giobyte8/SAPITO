<%-- 
    Document   : nvaOrdenVenta
    Created on : Feb 23, 2015, 9:45:30 PM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Nueva orden</title>
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
                Orden de venta
              </h1>
            </div>
          </div>

          <div class="col-md-6">
            <h3>Detalles de la orden</h3>
            <br/><label>Descuentos</label>
            <table id="tdescuentos" class="table table-bordered table-hover table-responsive">
              <thead>
                <tr>
                  <th>Concepto</th>
                  <th>Cantidad</th>
                  <th>Editar</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Oferta paquete xxx1</td>
                  <td>$50.94</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                <tr>
                  <td>Retraso en producción</td>
                  <td>$700.50</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                </tr>
              </tbody>
            </table>
            <div class="col-sm-6 text-left">
              <button class="btn btn-danger btn-sm">Agregar descuento</button>
            </div>
            <div class="col-sm-6 text-right">
              <h4>Total: $751.44 &nbsp;&nbsp;</h4>
            </div>

            <br/><br/><br/><label>Cargos extra</label>
            <table id="tcargos" class="table table-bordered table-hover">
              <thead>
                <tr>
                  <th>Concepto</th>
                  <th>Cantidad</th>
                  <th>Editar</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Pedido de entrega urgente</td>
                  <td>$5000.00</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                <tr>
                  <td>Algun otro cargo</td>
                  <td>$700.50</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                </tr>
              </tbody>
            </table>
            <div class="col-sm-6 text-left">
              <button class="btn btn-danger btn-sm">Agregar cargo</button>
            </div>
            <div class="col-sm-6 text-right">
              <h4>Total: $5700.50 &nbsp;&nbsp;</h4>
            </div>
            
            <br/><br/><br/><br/>
          </div>
          <div class="col-md-6">
            <h3>Productos en la orden</h3>
            <table id="tproductos" class="table table-bordered table-hover table-striped table-responsive">
              <thead>
                <tr>
                  <th>Producto</th>
                  <th>Cantidad</th>
                  <th>Precio c/u</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Gansito de prueba</td>
                  <td>50</td>
                  <td>$7.20</td>
                </tr>
                <tr>
                  <td>Motores diesel</td>
                  <td>10</td>
                  <td>$7000.50</td>
                </tr>
                <tr>
                  <td>Parabrisas xtreme</td>
                  <td>80</td>
                  <td>$850.00</td>
                </tr>
                <tr>
                  <td>Tires</td>
                  <td>40</td>
                  <td>$585.00</td>
                </tr>
              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-nvaorden');
        });
    </script>
  </body>
</html>
