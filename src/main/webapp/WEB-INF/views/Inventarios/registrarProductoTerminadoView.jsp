<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : Elizabeth
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp" %>
            <form:form action="nvo-producto" commandName="inventario" action="registrarProductoTerminadoView" method="POST" >
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Producto Terminado
                                </h1>
                            </div>
                        </div>
                        <!-- /.col-lg-4 -->

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <h2 class="panel-title">Datos del producto terminado </h2>
                                    </div>
                                    <div class="panel-body">

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="fnvoc-codigoInventario">Código Inventario</label>
                                                <form:input path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Código de inventario" required="required"/>
                                                <form:errors path="codigoInventario" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="fnvoc-nombre">Nombre</label>  
                                                <form:input path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre del producto" required="required"/>
                                                <form:errors path="nombre" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="fnvoc-cantidad">Cantidad</label> 
                                                <form:input path="cantidad" name="cantidad" id="fnoc-cantidad" type="text" class="form-control" placeholder="Cantidad del producto" required="required"/>
                                                <form:errors path="cantidad" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="fnvoc-maximo">Máximo</label>
                                                <form:input path="maximo" name="maximo" id="fnoc-maximo" type="text" class="form-control" placeholder="Cantidad máxima de producto" required="required"/>
                                                <form:errors path="maximo" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label for="fnvoc-minimo">Mínimo</label>
                                                <form:input path="minimo" name="minimo" id="fnoc-minimo" type="text" class="form-control" placeholder="Cantidad mínima de producto" required="required"/>
                                                <form:errors path="minimo" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 text-left">
                                            <div class="form-group">
                                                <label for="fnvoc-fechaEntrada">Fecha de entrada</label>
                                                <form:input  path="fechaEntrada" name="fechaEntrada" id="fnoc-fechaEntrada" type="text" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 text-left">
                                            <div class="form-group">
                                                <label for="fnvoc-fechaProduccion">Fecha de producción</label>
                                                <form:input   path="fechaProduccion" name="fechaProduccion" id="fnoc-fechaProduccion" type="text" class="form-control"/>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Ubicación</label> 
                                                <form:input path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicación del producto" required="required"/>
                                                <form:errors path="ubicacion" element="div" class="alert-danger pad-10"/>
                                            </div>
                                        </div>

                                    </div>  <!-- /#fin del panel -->
                                </div>
                                <div align="right">
                                    <button type="submit" class="btn btn-success">Aceptar</button>
                                </div> 

                            </div>
                        </div>

                        <!-- /.col-lg-4 -->
                    </div>
                </div>
            </div>

        </form:form>

        <%@include file="inventariosFooter.jsp" %>
        <script >
            $(document).ready(function () {
                activatenb('nb-nvoproducto');
            });
        </script>
    </body>
</html>