<%-- 
    Document   : ordenCompra
    Created on : 14/02/2015, 01:49:39 AM
    Author     : D4NY
--%>

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

      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Orden de Compra
              </h1>
            </div>
          </div>
          <div class="col-md-6">
            <h2>Productos en la Orden</h2><br/>
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
              </tbody>
            </table>
            <div class="col-sm-5 text-left">
              <button onclick="" class="btn btn-primary" type="button"
                      data-toggle="modal" data-target="#addp-modal">
                Agregar Producto (+)
              </button>
            </div>
            <br/><br/><br/><h2>Compra</h2>
            <div class="row">
              <div class="col-md-12">
                <br/><label for="cforma-pago">Forma de Pago:</label>
                <select class="form-control">
                  <option value="contado">Contado</option>
                  <option value="cheque">Cheque</option>
                  <option value="credito">Credito</option>
                </select>
              </div>                            
              <div class="col-md-12">
                <br/><label for="cfecha-entrega">Fecha de Entrega:</label>
                <input id="cfecha-entrega" type="date" 
                       class="form-control" />
              </div>
            </div>
          </div>                       
          <div class="row">
            <div class="col-lg-6 text-right">
              <h2>Totales ($)</h2>

              <div class="col-sm-12 bg-success text-right">
                <h3 id="total-final">Total final: $00.00</h3>
              </div>

              <div class="col-sm-12 text-right">
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <button type="button" class="btn btn-danger btn-lg" 
                        onclick="cancelarNvaOrdenCompra()">
                  Cancelar Orden
                </button>
                &nbsp;&nbsp;
                <button type="button" class="btn btn-success btn-lg" 
                        onclick="enviarOrdenCompra()">
                  Guardar Orden
                </button>
              </div>
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
                <br/><label>Código de Producto</label>
                <div class="input-group">
                  <input id="addp-cproducto" type="text" 
                         class="form-control" name="addp-cproducto" />
                  <span class="input-group-btn">
                    <button class="btn btn-primary" onclick="buscarProducto()">Buscar</button>
                  </span>
                </div>
                <div id="addp-notfound-alert" class="alert alert-danger hidden text-center">
                  <span class="fa fa-exclamation-triangle"></span>
                  <span>No se encontro ningún producto con el código ingresado</span>
                </div>
              </div>
              <div class="col-md-6">
                <br/><label>Cantidad a agregar</label>
                <input id="addp-cantidad" type="number" min="1" max="1000000"
                       class="form-control" name="addp-cantidad" value="1" />
                <div id="addp-cantidad-alert" class="alert alert-danger hidden text-center">
                  <span class="fa fa-exclamation-triangle"></span>
                  <span>Ingrese una cantidad valida</span>
                </div>
              </div>
            </div>

            <div class="row">                            
              <div class="col-md-6">
                <br/><label for="cproveedor" class="control-label">Proveedor(s)</label>
                <select id="cproveedor" name="cproveedor" class="form-control"> 
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <br/><label>Nombre</label>
                <input id="addc-nombre" type="text" readonly
                       class="form-control" name="addc-nombre" />
              </div>
              <div class="col-md-4">
                <br/><label>Categoria</label>
                <input id="addc-categoria" type="text" readonly
                       class="form-control" name="addc-categoria" />
              </div>                            

              <div class="col-md-4">
                <br/><label>Costo</label>
                <input id="addc-costo" type="number" readonly
                       class="form-control" name="addc-costo" />
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button class="btn btn-danger"  data-dismiss="modal"
                    onclick="limpiar()">
              Cancelar
            </button>
            <button class="btn btn-success"
                    onclick="agregarAOrden()">
              Agregar a la Orden
            </button>
          </div>
        </div>
      </div>
    </div>
    <%@include file="MenusCompras/Pie compras.jsp"%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/compras/jscompas.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/compras/nvaOrdenCompra.js"></script>
  </body>
</html>
