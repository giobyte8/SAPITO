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
            <h2>Cliente</h2>
            <label for="fcliente-id">Buscar cliente</label>
            <div class="input-group">
              <input id="cliente-rfc" type="text" class="form-control" placeholder="RFC del cliente"/>
              <span class="input-group-btn">
                <button class="btn btn-success" onclick="buscarCliente()">Buscar</button>
                <a href="nvocliente" class="btn btn-primary">Registrar nuevo</a>
              </span>
            </div>
            <div id="alert-rfc" class="alert alert-danger hidden">
              <h5>Ingrese el RFC del cliente.</h5>
            </div>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="fcliente-empresa">Empresa:</label>
                <input id="fcliente-empresa" readonly type="text" 
                       class="form-control" placeholder="Empresa cliente"/>
              </div>
              <div class="col-md-6">
                <br/><label for="fcliente-nombre">Nombre del contacto:</label>
                <input id="fcliente-nombre" readonly type="text" 
                       class="form-control" placeholder="Contacto en la empresa" />
              </div>
            </div>

            <br/><h2>Venta</h2>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="ftipo-moneda">Tipo de cambio:</label>
                <select class="form-control">
                  <option value="dollar">Dollar</option>
                  <option value="pesos">Pesos mexicanos</option>
                  <option value="yenes">Yenes</option>
                </select>
              </div>
              <div class="col-md-6">
                <br/><label>Entrega a cliente:</label>
                <select class="form-control">
                  <option value="inmediata">Entrega inmediata</option>
                  <option value="solproduccion">Solicitar a producción</option>
                </select>
              </div>
            </div>

            <br/><h3>Cargos extra:</h3>
            <table id="tcargos" class="table table-bordered table-hover">
              <thead>
                <tr>
                  <th>Concepto</th>
                  <th>Cantidad</th>
                  <th>Editar</th>
                </tr>
              </thead>
              <tbody>
                <!--tr>
                  <td>Pedido de entrega urgente</td>
                  <td>$5000.00</td>
                  <td><button class="btn btn-success btn-xs">Editar</button></td>
                </tr-->
              </tbody>
            </table>
            <div class="col-sm-4 text-left">
              <button class="btn btn-primary" type="button"
                      data-toggle="modal" data-target="#addc-modal">
                Agregar cargo
              </button>
            </div>
            <div class="col-sm-8 text-right bg-warning">
              <h4 id="cargos-total">Cargo total: $00.00 &nbsp;&nbsp;</h4>
            </div>

            <!--br/><br/><h3>Descuentos:</h3>
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
            <div class="col-sm-4 text-left">
              <button class="btn btn-primary">Agregar descuento</button>
            </div>
            <div class="col-sm-8 text-right bg-danger">
              <h4>Descuento total: $751.44 &nbsp;&nbsp;</h4>
            </div-->
          </div>

          <div class="col-md-6">
            <h2>Productos en la orden</h2><br/>
            <div id="alert-productos" class="alert alert-danger hidden">
              <h5>Agregue al menos un producto al a orden</h5>
            </div>
            <table id="tproductos" class="table table-bordered table-hover table-striped table-responsive">
              <thead>
                <tr>
                  <th>Producto</th>
                  <th>Cantidad</th>
                  <th>Precio c/u</th>
                </tr>
              </thead>
              <tbody>
                <!--tr>
                  <td>Gansito de prueba</td>
                  <td>50</td>
                  <td>$7.20</td>
                </tr-->
              </tbody>
            </table>
            <div class="col-sm-5 text-left">
              <button class="btn btn-primary" type="button"
                      data-toggle="modal" data-target="#addp-modal">
                Agregar producto (+)
              </button>
            </div>
            <div class="col-sm-7 text-right bg-info">
              <h4 id="costo-totalorden">Total de orden: $00.0 &nbsp;&nbsp;</h4>
            </div>

            <!--br/><br/><h3>Facturación</h3>
            <div class="btn-group">
              <h5 class=""><input type="radio" name="genfactura" id="inputWalls" value="genfactura" checked>
                Autogenerar factura 
              </h5>

              <h5 class=""><input type="radio" name="genfactura" id="inptWalls" value="nogenfactura">
                Dejar pendiente la generacióñ de factura 
              </h5>
            </div-->

            <br/><br/><br/><h2>Totales ($)</h2>
            <div class="col-sm-9 col-sm-offset-3 bg-info text-right">
              <h4 id="total-orden">Total de la orden: 00.00</h4>
            </div>
            <div class="col-sm-10 col-sm-offset-2 bg-warning text-right">
              <h4 id="total-concargos">Total con cargos extra: $00.00</h4>
            </div>
            <div class="col-sm-12 col-sm-offset-0 bg-success text-right">
              <h2 id="total-final">Total final: $00.00</h2>
            </div>

            <div class="col-sm-12 text-right">
              <br/><br/>
              <button type="button" class="btn btn-danger btn-lg" 
                      onclick="cancelarNvaOrdenVenta()">
                Cancelar orden
              </button>
              &nbsp;&nbsp;
              <button type="button" class="btn btn-success btn-lg" 
                      onclick="enviarOrden()">
                Guardar orden
              </button>
            </div>
          </div>

        </div>
      </div>
    </div>

    <!-- Hiden form to add products to order -->
    <div id="addp-modal" class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span id="close-nvoc-modal">&times;</span>
            </button>
            <h3>Agregar producto a la orden</h3>
          </div>

          <div class="modal-body">
            <div class="row">
              <div class="col-md-6">
                <br/><label>Código de inventario</label>
                <div class="input-group">
                  <input id="addp-cinventario" type="text" 
                         class="form-control" name="addp-cinventario" />
                  <span class="input-group-btn">
                    <button class="btn btn-primary" onclick="buscarProducto()">Buscar</button>
                  </span>
                </div>
              </div>
              <div class="col-md-6">
                <br/><label>Cantidad a agregar</label>
                <input id="addp-cantidad" type="number" min="1"
                       class="form-control" name="addp-cantidad" value="1" />
              </div>
            </div>
            <div id="addp-notfound-alert" class="alert alert-danger row hidden">
              <h5>No se encontro ningun producto con el código ingresado</h5>
            </div>
            <div class="row">
              <div class="col-md-4">
                <br/><label>Nombre</label>
                <input id="addp-nombre" type="text" readonly
                       class="form-control" name="addp-nombre" />
              </div>
              <div class="col-md-4">
                <br/><label>Categoria</label>
                <input id="addp-categoria" type="text" readonly
                       class="form-control" name="addp-categoria" />
              </div>
              <div class="col-md-4">
                <br/><label>Tipo de producto</label>
                <input id="addp-tipo" type="text" readonly
                       class="form-control" name="addp-tipo" />
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <br/><label>Ubicación</label>
                <input id="addp-ubicacion" type="text" readonly
                       class="form-control" name="addp-ubicacion" />
              </div>
              <div class="col-md-4">
                <br/><label>Cantidad disponible</label>
                <input id="addp-cantidaddisp" type="number" readonly
                       class="form-control" name="addp-cantidaddisp" />
              </div>
              <div class="col-md-4">
                <br/><label>Costo</label>
                <input id="addp-costo" type="number" readonly
                       class="form-control" name="addp-costo" />
              </div>
            </div>
          </div>

          <div class="modal-footer">
            <button class="btn btn-danger"  data-dismiss="modal"
                    onclick="clearAddPForm()">
              Cancelar
            </button>
            <button class="btn btn-success" data-dismiss="modal"
                    onclick="agregarAOrden()">
              Agregar a la orden
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Hiden form to add extra charges to roder -->
    <div id="addc-modal" class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span id="close-nvoc-modal">&times;</span>
            </button>
            <h3>Agregar cargo extra a la orden</h3>
          </div>

          <div class="modal-body">
            <div class="row">
              <div class="col-md-8">
                <br/><label>Concepto</label>
                <input id="addc-concepto" type="text" class="form-control" />
              </div>
              <div class="col-md-4">
                <br/><label>Cantidad ($)</label>
                <input id="addc-cantidad" type="number" class="form-control" />
              </div>
            </div>
            <div id="addc-alert" class="alert alert-danger row hidden">
              <h5>Asegurese de ingresar concepto y cantidad</h5>
            </div>
          </div>

          <div class="modal-footer">
            <button class="btn btn-danger"  data-dismiss="modal"
                    onclick="clearAddCForm()">
              Cancelar
            </button>
            <button class="btn btn-success" onclick="agregarCargo()">
              Agregar a la orden
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-nvaorden');
        });</script>
    <script src="${pageContext.request.contextPath}/resources/js/ventas/nvaOrdenVenta.js"></script>
  </body>
</html>
