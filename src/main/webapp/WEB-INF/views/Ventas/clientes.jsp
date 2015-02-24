<%-- 
    Document   : clientes
    Created on : Feb 23, 2015, 4:08:36 PM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Clientes</title>
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
                Clientes registrados
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <button class="btn btn-success" type="button">Nuevo</button>
            <button class="btn btn-success" type="button">Editar</button>
            <button class="btn btn-success" type="button">Dar de baja</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tclientes" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Empresa</th>
                <th>RFC</th>
                <th>Nombre de contacto</th>
                <th>Email</th>
                <th>Prioridad</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Some data</td>
              </tr>
              <tr>
                <td>Other data</td>
                <td>Some data</td>
                <td>Some data</td>
                <td>Data more</td>
                <td>Some data</td>
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
            activatenb('nb-clientes');
            $('#tclientes').DataTable();
        });
    </script>
  </body>
</html>
