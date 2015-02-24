<%-- 
    Document   : vendedores
    Created on : Feb 23, 2015, 9:29:52 PM
    Author     : giovanni
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
                Vendedores
              </h1>
            </div>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tvendedores" class="table table-bordered table-hover table-responsive">
            <!-- Agrega el contenido de la tabla -->
          </table>

        </div>
      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-vendedores');
            $('#tvendedores').DataTable();
        });
    </script>
  </body>
</html>
