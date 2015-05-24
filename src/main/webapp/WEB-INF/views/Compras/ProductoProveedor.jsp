<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <%@include file="MenusCompras/Cabesa compras.jsp"%>
    <title>SAPITO</title>
  </head>

  <body>
    <div id="wrapper">
      <%@include file="MenusCompras/Menude compras.jsp"%>

      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-md-12">
              <h1 class="page-header">Asociar un producto con proovedor</h1>
            </div>
          </div>

          <div class="panel panel-green">
            <div class="panel-heading">Producto - Proveedor</div>
            <div class="panel-body">
              <form:form id="as-prod-prov" commandName="productoProveedor" 
                         action="productoproveedor" method="POST">
                  <div class="row">
                    <div class="col-md-6">
                      <br/><label>Unidad</label>
                      <form:select path="unidad" items="${unidades}" class="form-control" />
                      <form:errors path="unidad" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-6">
                      <br/><label>Costo ($)</label>
                      <form:input id="as-prod-prov-costo" path="costo" name="costo"
                                  type="" class="form-control" />
                      <form:errors path="costo" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <br/><label>Producto</label>
                      <input class="form-control" readonly value="${producto.nombreProducto}" />
                      <form:input path="producto.id" class="form-control hidden" value="${producto.id}" />
                    </div>
                    <div class="col-md-6">
                      <br/><label>Proveedor</label>
                      <form:select path="proveedor.id" items="${proveedores}" 
                                   itemValue="id" itemLabel="empresa" class="form-control" />
                      <form:errors path="proveedor" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row hidden">
                    <div class="col-md-12">
                      <form:input path="status" value="true" class="form-control" />
                    </div>
                  </div>
                  <div class="row text-right">
                    <div class="col-md-6 col-md-offset-6">
                      <br/><br/>
                      <a href="ConsultaProducto" class="btn btn-danger">Cancelar</a>
                      <button type="submit" class="btn btn-success">Guardar</button>
                    </div>
                  </div>
              </form:form>
            </div>
          </div>

        </div>
      </div>

    </div>

    <!-- jQuery -->
    <script src="resources/js/libs/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/libs/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/libs/metisMenu.min.js"></script>
    <script type="text/javascript" src="resources/js/compras/jscompras.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/libs/sb-admin-2.js"></script>
    <%@include file="MenusCompras/Pie compras.jsp"%>

  </body>
</html>