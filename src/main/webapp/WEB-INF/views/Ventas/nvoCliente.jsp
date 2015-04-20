<%-- 
    Document   : nvoCliente
    Created on : Apr 19, 2015, 8:38:35 PM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Nuevo cliente</title>
  </head>
  <body>
    <div id="wrapper">

      <!-- Nav bar -->
      <%@include file="ventasNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">Nuevo cliente</h1>
            </div>
          </div>

          <!-- Formulario de nuevo cliente -->
          <form id="fnvo-cliente">
            <div class="row">
              <h3>&nbsp;&nbsp;Datos de la empresa</h3>
              <div class="col-md-6">
                <br/><label for="fnvoc-empresa">Empresa</label>
                <input type="text" class="form-control"/>
              </div>
              
              <div class="col-md-6">
                <br/><label for="fnvoc-suc">Sucursal</label>
                <input type="text" class="form-control"/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <br/><label for="fnvoc-rfc">RFC</label>
                <input type="text" class="form-control"/>
              </div>
              
              <div class="col-md-6">
                <br/><label for="fnvoc-direccion">Dirección</label>
                <input type="text" class="form-control">
              </div>
            </div>
              
            <br/><br/>
            <div class="row">
              <h3>&nbsp;&nbsp;Datos del contacto</h3>
              <div class="col-md-4">
                <br/><label for="fnvoc-nombre">Nombre (s)</label>
                <input type="text" class="form-control"/>
              </div>

              <div class="col-md-4">  
                <br/><label for="fnvoc-apaterno">Apellido paterno</label>
                <input type="text" class="form-control"/>
              </div>

              <div class="col-md-4">
                <br/><label for="fnvoc-amaterno">Apellido materno</label>
                <input type="text" class="form-control"/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <br/><label for="fnvoc-email">Email</label>
                <input type="email" class="form-control" />
              </div>

              <div class="col-md-4">
                <br/><label for="fnvoc-empresa">Teléfono</label>
                <input type="text" class="form-control"/>
              </div>
              
              <div class="col-md-4">
                <br/><label for="fnvoc-rfc">Teléfono mobil</label>
                <input id="fnvoc-rfc" type="text" class="form-control"/>
              </div>
            </div>

            <div class="row text-right">
              <div class="col-md-12">
                <br/><br/>
                <button class="btn btn-success btn-lg right" type="submit">
                  Guardar
                </button>
                &nbsp;&nbsp;
                <button class="btn btn-primary btn-lg right" type="reset">
                  Limpiar
                </button>
                <br/><br/>
              </div>
            </div>
          </form>

      </div>
    </div>
  </div>

  <!-- Footer and scripts -->
  <%@include file="ventasFooter.jsp" %>
  <script >
      $(document).ready(function () {
          activatenb('nb-nvocliente');
      });
  </script>
</body>
</html>
