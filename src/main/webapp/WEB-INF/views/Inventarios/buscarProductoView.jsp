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

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Búsqueda
                            </h1>
                        </div>
                    </div>

                    <!-- /.col-lg-4 -->
                    <div class="panel panel-default">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <h2 class="panel-title">Buscar producto </h2>
                                    </div>
                                    <div class="panel-body">

                                        <div class="col-lg-12">
                                            <label>Buscar</label> 
                                            <div class="form-group input-group">
                                                <input type="text" class="form-control" autofocus placeholder="Ingrese el producto que desea buscar" required>
                                                <span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></span>
                                            </div>
                                            <div align="right">
                                                <button type="submit" class="btn btn-success">Aceptar</button>
                                            </div>
                                        </div>  <!-- /#fin del panel -->
                                    </div>
                                    <!-- Data table -->
                                    <table id="tbusqueda" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Código Inventario</th>
                                                <th>Nombre</th>
                                                <th>Categoría</th>
                                                <th>Cantidad</th>
                                                <th>Fecha de entrada</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${buscarProducto}" var="inventario">
                                            <tr>
                                                <td>${inventario.codigoInventario}</td>
                                                <td>${inventario.nombre}</td>
                                                <td>${inventario.categoria}</td>
                                                <td>${inventario.cantidad}</td>
                                                <td>${inventario.fechaEntrada}</td>
                                                
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>


                                </div> 
                            </div>
                            <!-- /.col-lg-4 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="inventariosFooter.jsp" %>
    </body>
</html>

