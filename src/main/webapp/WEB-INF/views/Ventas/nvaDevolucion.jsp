<%-- 
    Document   : nvaDevolucion
    Created on : Apr 21, 2015, 1:02:35 AM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Devolución</title>
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
                Devolución
              </h1>
            </div>
          </div>

          <div class="col-md-6">
            <h2>Venta</h2>
            <label for="fcliente-id">Buscar venta</label>
            <div class="input-group">
              <input id="id-orden" type="text" class="form-control" placeholder="ID de orden de venta"/>
              <span class="input-group-btn">
                <button class="btn btn-primary" onclick="buscarOrdenVenta()">Buscar</button>
              </span>
            </div>
            <div id="alert-orden-notfound" class="alert alert-danger hidden">
              <span class="fa fa-exclamation-triangle"></span>
              <span>&nbsp;No se encontro ninguna venta con el ID ingresado</span>
            </div>

            <br/><h3>Cliente:</h3>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="fcliente-empresa">Empresa:</label>
                <input id="orden-empresa" readonly type="text" 
                       class="form-control" placeholder="Empresa cliente"/>
              </div>
              <div class="col-md-6">
                <br/><label for="fcliente-nombre">Nombre del contacto:</label>
                <input id="orden-cliente" readonly type="text" class="form-control" placeholder="Contacto en la empresa" />
              </div>
            </div>

            <br/><br/><h2>Vendedor</h2>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="ftipo-moneda">Vendedor:</label>
                <input class="form-control" placeholder="Vendedor"/>
              </div>
              <div class="col-md-6">
                <br/><label>Monto de sancióñ:</label>
                <input class="form-control" placeholder="Monto ($)"/>
              </div>
            </div>
          </div>


          <div class="col-md-6">
            <h2>Productos a devolver:</h2><br/>
            <table id="tproductos" class="table table-bordered table-hover table-striped table-responsive">
              <thead>
                <tr>
                  <th>Producto</th>
                  <th>Cantidad</th>
                  <th>Precio c/u</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
            <div class="col-sm-4 text-left">

            </div>
            <div class="col-sm-8 text-right bg-info">
              <h4 id="total-orden">Total de orden: $00.00 &nbsp;&nbsp;</h4>
            </div>

            <br/><br/><br/><h2>Totales ($)</h2>
            <div class="col-sm-9 col-sm-offset-3 bg-info text-right">
              <h4 id="total-orden-devuelta">Total de la orden devuelta: $00.00</h4>
            </div>
            <div class="col-sm-11 col-sm-offset-1 bg-danger text-right">
              <h4 id="total-orden-devuelta-cargos">Total con otros cargos $00.00</h4>
            </div>
            <div class="col-sm-12 col-sm-offset-0 bg-success text-right">
              <h2 id="total-final">Total final: $00.00</h2>
            </div>

            <div class="col-sm-12 text-right">
              <br/><br/>
              <button type="button" class="btn btn-danger" onclick="cancelarDevolucion()">
                Cancelar
              </button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-success" onclick="devolverOrden()">
                Guardar
              </button>
            </div>
            <br/><br/><br/><br/>&nbsp;
          </div>

        </div>
      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-devoluciones');
        });
    </script>
    <script src="${pageContext.request.contextPath}/resources/js/ventas/nvaDevolucion.js"></script>
  </body>
</html>
