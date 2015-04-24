<%-- 
    Document   : clientes
    Created on : Feb 23, 2015, 4:08:36 PM
    Author     : irving c
--%>

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
                <th>Vendedor</th>
                <th>Cliente</th>
                <th>RFC del Cliente</th>
                <th>Fecha de la venta</th>
                <th>Monto de la venta</th>
                <th>Status Venta</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Cambio</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td>></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Cambio</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Devolución</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button"
                    data-toggle="modal" data-target="#cts-modal">
                    Detalles</button></td>
              </tr>
            </tbody>
          </table>
          <br/><br/>
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
            <h4 class="modal-title">Detalles del historial </h4>
          </div>
          <div class="modal-body">
            <h4>Ventas:</h4>
            <div class="row">
              <div class="col-md-6">
                <br/><label>Vendedor:</label>
                <input type="text" class="form-control" readonly/>
              </div>
                
              <div class="col-md-6">
                <br/><label>Fecha en que se realizo:</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <br/><label>Cliente:</label>
                <input type="text" class="form-control" readonly/>
              </div>
                 <div class="col-md-6">
                <br/><label>RFC del Cliente:</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
               <div class="row">
              <div class="col-md-6">
                <br/><label>Monto  Venta</label>
                <input type="text" class="form-control" readonly/>
              </div>
                 
              <div class="col-md-6">
                <br/><label>Status de Venta</label>
                <input type="text" class="form-control" readonly/>
              </div>
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
            activatenb('nb-historial');
            $('#thistorial').DataTable();
        });
    </script>
  </body>
</html>
