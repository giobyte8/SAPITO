<%-- 
    Document   : buscarProducto
    Created on : 22-feb-2015, 22:08:25
    Author     : Elizabeth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="inventariosHead.jsp" %>
    <title>SAPito</title>
  </head>
  <body>

    <div id="wrapper">           
      <%@include file="inventariosNavs.jsp" %>
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Productos en inventario
              </h1>
            </div>
          </div>
          
          <!-- Data table -->
          <table id="tinventario" class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Código inventario</th>
                <th>Nombre</th>
                <th>Tipo producto</th>
                <th>Cantidad</th>
                <th>Fecha entrada</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${inventario}" var="inventario">
                  <tr>
                    <td>${inventario.codigoInventario}</td>
                    <td>${inventario.nombre}</td>
                    <td>${inventario.tipoProducto}</td>
                    <td>${inventario.cantidad}</td>
                    <td>${inventario.fechaEntrada}</td>
                    <td>
                      <button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal${inventario.id}">
                        Detalles
                      </button>
                    </td>
                  </tr>
              </c:forEach>
            </tbody>
          </table>
          
        </div>
      </div>
    </div>
    <%@include file="inventariosFooter.jsp" %>
    <script >
        $(document).ready(function () {
            $('#tinventario').DataTable();
        });
    </script>
  </body>
</html>

