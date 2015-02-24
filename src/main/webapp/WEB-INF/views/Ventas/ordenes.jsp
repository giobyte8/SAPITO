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
    <title>SAPito - Ventas - Vendedores</title>
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

          <!-- Buttons bar -->
         

          <!-- Data table -->
          <br/><br/>
          <table id="tordenes" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Orden de venta</th>
                <th>Fecha de entrega</th>
                <th>Estatus</th>
                <th>Monto Total</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
               <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
               <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
               <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
              <tr>
                <td>Other data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Data more</td>
              <td><button class="btn btn-xs btn-success" type="button">Detalles</button></td>
              </tr>
            </tbody>
          </table>

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