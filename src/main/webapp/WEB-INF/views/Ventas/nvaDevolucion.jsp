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
              <input type="text" class="form-control" placeholder="ID de venta"/>
              <span class="input-group-btn">
                <button class="btn btn-primary">Buscar</button>
              </span>
            </div>
            <br/><br/><h4>Cliente:</h4>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="fcliente-empresa">Empresa:</label>
                <input id="fcliente-empresa" readonly type="text" 
                       class="form-control" placeholder="Empresa cliente"/>
              </div>
              <div class="col-md-6">
                <br/><label for="fcliente-nombre">Nombre del contacto:</label>
                <input readonly type="text" class="form-control" placeholder="Contacto en la empresa" />
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
            <div class="col-sm-4 text-left">
              
            </div>
            <div class="col-sm-8 text-right bg-info">
              <h4>Total de orden: $7751.44 &nbsp;&nbsp;</h4>
            </div>

            <br/><br/><br/><h2>Totales ($)</h2>
            <div class="col-sm-9 col-sm-offset-3 bg-info text-right">
              <h4>Total de la orden devuelta: $7550.00</h4>
            </div>
            <div class="col-sm-11 col-sm-offset-1 bg-danger text-right">
              <h4>Total con otros cargos $7550.00</h4>
            </div>
            <div class="col-sm-12 col-sm-offset-0 bg-success text-right">
              <h2>Total final: $7550.00</h2>
            </div>

            <div class="col-sm-12 text-right">
              <br/><br/>
              <button type="button" class="btn btn-primary" onclick="imprimirTicket()">
                Imprimir ticket
              </button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-danger" onclick="cancelarDevolucion()">
                Cancelar
              </button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-success" onclick="guardarDevolucion()">
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
  </body>
</html>
