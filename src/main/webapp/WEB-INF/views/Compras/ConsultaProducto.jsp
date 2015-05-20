<%-- 
    Document   : consultaproducto
    Created on : 14/05/2015, 02:34:44 AM
    Author     : Monse
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


  <head>
    <link href="${pageContext.request.contextPath}/resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

    <meta charset="utf-8">
    <%@include file="MenusCompras/Cabesa compras.jsp"%>

    <title>SAPITO</title>
  </head>
  <body>

    <div id="wrapper">
      <%@include file="MenusCompras/Menude compras.jsp"%>
      <!-- Page Content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Consulta Productos
              </h1>                        
            </div>
          </div>        
          <!-- Data table -->
          <table id="tproductos" class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Marca</th>
                <th>Categoria</th>
                <th>Detalles</th>
                <th>Modificar</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${producto1}" var="producto">
                  <tr>
                    <td>${producto.id}</td>
                    <td>${producto.nombreProducto}</td>
                    <td>${producto.descripcion}</td>
                    <td>${producto.marca}</td>
                    <td>${producto.categoria}</td>
                    <td>
                      <button class="btn btn-success btn-xs" type="button"
                              data-toggle="modal" data-target="#cts-modal${producto.id}">Detalles</button>
                    </td>
                    <td>
                      <button class="btn btn-warning btn-xs">Editar</button>
                    </td>
                  </tr>
              </c:forEach>
            </tbody>
          </table>

        </div><!-- Fin del tag del contenedor-->
      </div>
    </div>

    <!-- Modal dialog para detalles de clientes -->
    <c:forEach items="${producto1}" var="producto">
        <div id="cts-modal${producto.id}" class="modal fade" tabindex="-1" role="dialog" 
             aria-labelledby="producto-modal-title" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">

              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                </button>
                <h4 class="modal-title">Detalles de producto:</h4>
              </div>
              <div class="modal-body">
                <h4>Datos del producto</h4>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Nombre</label>
                    <input type="text" class="form-control" readonly value="${producto.nombreProducto}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>Descripción</label>
                    <input type="text" class="form-control" readonly value="${producto.descripcion}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Marca</label>
                    <input type="text" class="form-control" readonly value="${producto.marca}" />
                  </div>
                  <div class="col-md-6">
                    <br/><label>Categoria</label>
                    <input type="text" class="form-control" readonly value="${producto.categoria}" />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <br/><h4>Proveedores del producto:</h4><br/>
                    <table id="tproveedores" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>Proveedor</th>
                          <th>Costo ($)</th>
                          <th>Inhabilitar</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${producto.productoProveedor}" var="productoProveedor">
                            <tr>
                              <td>${productoProveedor.proveedor.empresa}</td>
                              <td>${productoProveedor.costo}</td>
                              <td>
                                <button type="button" class="btn btn-danger btn-sm">Inhabilitar</button>
                              </td>
                            </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                    <a href="productoproveedor?idProducto=${producto.id}" 
                       class="btn btn-primary btn-sm">Asociar con un proveedor</a>
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
    </c:forEach>

    <%@include file="MenusCompras/Pie compras.jsp"%>
    <script >
        $(document).ready(function () {
            $('#tproductos').DataTable();
        });
    </script>

    <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/libs/dataTables.bootstrap.min.js"></script>
  </body>

</html>

