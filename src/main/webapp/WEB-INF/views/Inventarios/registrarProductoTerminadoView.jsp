<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
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
            <form>
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
                        <form:form action="newProducto" method="POST" commandName="Inventario">
                            <div class="row">
                                <div class="col-lg-12 text-left">
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <h2 class="panel-title">Datos de producto terminado </h2>
                                        </div>
                                        <div class="panel-body">

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label for="fnvoc-codigoInventario">Código Inventario</label> 
                                                    <form:input  path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Codigo de Inventario"/>
                                                    <form:errors path="codigoInventario" element="div" class="alert-danger pad-10" />                                                                 
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label for="fnvoc-nombre">Nombre</label>  
                                                    <<form:input  path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre del producto"/>
                                                    <form:errors path="nombre" element="div" class="alert-danger pad-10" />
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label "fnvoc-categoria">Categoría</label> 
                                                    <div class="form-group input-group col-lg-12">
                                                        <form:select path="categoria" id="disableSelect" class="form-control selectpicker show-tick show-menu-arrow listaCategoria">
                                                            <option>Refacciones</option>
                                                            <option>Maquinaria</option>
                                                            <option>Auto</option>
                                                            <option>Otra</option>
                                                        </form:select>
                                                    </div>  
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Cantidad</label> 
                                                    <form:input  path="cantidad" name="cantidad" id="fnoc-cantidad" type="text" class="form-control" placeholder="Cantidad de producto"/>
                                                    <form:errors path="cantidad" element="div" class="alert-danger pad-10" />          
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label for="fnvoc-maximo">Máximo</label>   
                                                    <form:input  path="maximo" name="maximo" id="fnoc-maximo" type="text" class="form-control" placeholder="Maximo"/>
                                                    <form:errors path="maximo" element="div" class="alert-danger pad-10" />    
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label "fnvoc-minimo">Mínimo</label> 
                                                    <form:input  path="minimo" name="minimo" id="fnoc-minimo" type="text" class="form-control" placeholder="Minimo"/>
                                                    <form:errors path="minimo" element="div" class="alert-danger pad-10" />
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
                                                    <form:input  path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicacion"/>
                                        <form:errors path="ubicacion" element="div" class="alert-danger pad-10" />  
                                                </div>
                                            </div>

                                        </div>  <!-- /#fin del panel -->
                                    </div>
                                    <div align="right">
                                        <button type="submit" class="btn btn-success">Aceptar</button>
                                    </div> 

                                </div>
                            </div>
                        </form:form>
                        <!-- /.col-lg-4 -->
                    </div>
                </div>
        </div>
    </form>
</div>
<%@include file="inventariosFooter.jsp" %>
</body>
</html>