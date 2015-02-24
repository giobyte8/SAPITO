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
    <title>SAPito - Ventas - Ofertas</title>
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
               Ofertas
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
         

          <!-- Data table -->
          <br/><br/>
          <table id="tofertas" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Producto</th>
                <th>Descripcion</th>
                <th>Precio Anterior</th>
                <th>Precio Actual</th>
                <th>Descuento</th>
                 <th>Fecha Limite de Oferta</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
                <tr>
                <td>Gansito</td>
                <td>Rebaja</td>
                <td>$10</td>
                <td>$8</td>
                  <td>20%</td>
                <td>1 de marzo</td>
              </tr>
            </tbody>
          </table>
          <button class="btn btn-success btn-xs">Agregar</button>
          <button class="btn btn-success btn-xs">Editar</button>
          <button class="btn btn-success btn-xs">Borrar</button>
        </div>
      </div>
    </div>


    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-ofertas');
            $('#tofertas').DataTable();
        });
    </script>
  </body>
</html>