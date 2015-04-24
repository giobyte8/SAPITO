<%-- 
    Document   : ordenes
    Created on : Feb 23, 2015, 10:29:52 PM
    Author     : irving c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Ordenes de producción</title>
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
               Ordenes de Venta
              </h1>
            </div>
          </div>

          <!-- Data table -->
          <table id="tordenes" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Prioridad</th>
                <th>Cliente</th>
                <th>Fecha de entrega</th>
                <th>Estado de la orden</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
           <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
             <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
             <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
             <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
             <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
              <tr>
                <td>Other data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Data more</td>
              <td><button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal">
               Detalles</button></td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>
    </div>

      
      
       <!-- Modal dialog para detalles de clientes -->
    <div id="cts-modal" class="modal fade" tabindex="-1" role="dialog" 
         aria-labelledby="cliente-modal-title" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true" id="cliente-modal-title">&times;</span>
            </button>
            <h4 class="modal-title">Detalles de Ordes de Venta</h4>
          </div>
          <div class="modal-body">
           
            <div class="row">
              <div class="col-md-6">
                <br/><label>Venta realizada:</label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-6">
                <br/><label>Fecha de Venta:</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <br/><label>Fecha de Entrega: </label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-6">
                <br/><label>Estado de la orden:</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <br/><label>Vendedor:</label>
                <input type="text" class="form-control" readonly/>
              </div>
                <div class="col-md-6">
                <br/><label>Cliente:</label>
                <input type="text" class="form-control" readonly/>
              </div>
                <div class="col-md-6">
                <br/><label>Prioridad:</label>
                <input type="text" class="form-control" readonly/>
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
      
      
    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-ordenes');
            $('#tordenes').DataTable();
        });
    </script>
  </body>
</html>