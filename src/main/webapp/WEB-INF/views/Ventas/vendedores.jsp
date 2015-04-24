<%-- 
    Document   : vendedores
    Created on : Feb 23, 2015, 9:29:52 PM
    Author     : giovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                Vendedores registrados
              </h1>
            </div>
          </div>

          <!-- Data table -->
          <table id="tvendedores" class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Nombre (s)</th>
                <th>Apellidos</th>
                <th>Monto vendido hoy ($)</th>
                <th>Salario</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach begin="1" end="20" varStatus="loop">
                  <tr>
                    <td>Some data</td>
                    <td>Some data</td>
                    <td>Some data</td>
                    <td>Some data</td>
                    <td>
                      <button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#vendedores-modal">
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

    <!-- Modal dialog para detalles de vendedores -->
    <div id="vendedores-modal" class="modal fade" tabindex="-1" role="dialog" 
         aria-labelledby="vendedor-modal-title" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true" id="vendedor-modal-title">&times;</span>
            </button>
            <h4 class="modal-title">Detalles de vendedor</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-4">
                <br/><label>Nombre (s)</label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-4">
                <br/><label>Apellido paterno</label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-4">
                <br/><label>Apellido materno</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <br/><label>Email</label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-4">
                <br/><label>Teléfono</label>
                <input type="text" class="form-control" readonly/>
              </div>
              <div class="col-md-4">
                <br/><label>Monto vendido hoy:</label>
                <input type="text" class="form-control" readonly/>
              </div>
            </div>
            <div class="rw">
              <br/><h4>Ultimos periodos de venta:</h4>
              <table id="tvendedores" class="table table-bordered table-hover 
                     table-striped table-responsive" cellspacing="0" width="80%">
                <thead>
                  <tr>
                    <th>Periodo</th>
                    <th>Monto vendido ($)</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>&nbsp; ** &nbsp;</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>&nbsp; ** &nbsp;</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>&nbsp; ** &nbsp;</td>
                    <td></td>
                  </tr>
                </tbody>
              </table>
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
            activatenb('nb-vendedores');
            $('#tvendedores').DataTable();
        });
    </script>
  </body>
</html>
