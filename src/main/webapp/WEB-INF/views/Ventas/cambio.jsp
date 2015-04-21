<%-- 
    Document   : cambio
    Created on : Apr 21, 2015, 1:25:05 AM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Cambio</title>
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
                Cambio de productos vendidos
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
            <br/><h3>Cliente:</h3>
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
            <br/><h3>Productos a devolver:</h3><br/>
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
            <div class="col-sm-8 text-right bg-danger">
              <h4>Total de la orden: $7751.44 &nbsp;&nbsp;</h4>
            </div>
          </div>
                     
          <div class="col-md-6">
            <h2>Cambio</h2>
            <h3>Productos de reemplazo</h3>
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
              <h4>Total de la orden: $7751.44 &nbsp;&nbsp;</h4>
            </div>
            
            <br/><br/><br/><h3>Cargos extra:</h3>
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
                  <td>Cambio de productos</td>
                  <td>$700.50</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                </tr>
                <tr>
                  <td>Pedido de entrega urgente</td>
                  <td>$5000.00</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                </tr>
              </tbody>
            </table>
            <div class="col-sm-4 text-left">
              <button class="btn btn-primary">Agregar cargo</button>
            </div>
            <div class="col-sm-8 text-right bg-warning">
              <h4>Cargo total: $5700.50 &nbsp;&nbsp;</h4>
            </div>

            <br/><br/><br/><h2>Totales ($)</h2>
            <div class="col-sm-9 col-sm-offset-3 bg-info text-right">
              <h4>Total de la orden $7550.00</h4>
            </div>
            <div class="col-sm-11 col-sm-offset-1 bg-warning text-right">
              <h4>Total con otros cargos $7550.00</h4>
            </div>
            <div class="col-sm-11 col-sm-offset-1 bg-danger text-right">
              <h4>Total menos total devuelto $50.00</h4>
            </div>
            <div class="col-sm-12 col-sm-offset-0 bg-success text-right">
              <h2>Total final: $50.00</h2>
            </div>

            <div class="col-sm-12 text-right">
              <br/><br/>
              <button type="button" class="btn btn-primary">Imprimir ticket</button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-danger">Cancelar</button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-success">Guardar</button>
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
