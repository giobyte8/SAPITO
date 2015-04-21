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
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Cambio</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Cambio</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Devolución</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
              <tr>
                <td>Nombre Apellido Otro</td>
                <td>RBNB Refacciones</td>
                <td>12EPRO311D123</td>
                <td>Lunes 26, Mayo 2019</td>
                <td>$ 3769.87</td>
                <td>Venta</td>
                <td><button class="btn btn-xs btn-success" type="button">
                    Detalles</button></td>
              </tr>
            </tbody>
          </table>
          <br/><br/>
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
