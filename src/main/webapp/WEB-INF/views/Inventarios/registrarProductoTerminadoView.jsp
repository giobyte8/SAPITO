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
                                            <h2 class="panel-title">Registro de producto terminado </h2>
                                        </div>
                                        <div class="panel-body">
                                            
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Código Inventario</label> 
                                                   <form:input path="codigoInventario" class="form-control" autofocus placeholder="Código de inventario" required="required"/>
                                                 </div>
                                            </div>
                                            
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Nombre</label>  
                                                    <form:input path="nombre" class="form-control" autofocus placeholder="Nombre del producto" required="required"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Categoría</label> 
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
                                                    <form:input path="cantidad" class="form-control" autofocus placeholder="Cantidad del producto" required="required"/>
                                                </div>
                                            </div>
                                                
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Máximo</label>   
                                                   <form:input path="maximo" class="form-control" autofocus placeholder="Cantidad máxima de producto" required="required"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Mínimo</label> 
                                                    <form:input path="minimo" class="form-control" autofocus placeholder="Cantidad mínima de producto" required="required"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-12 text-left">
                                                <div class="form-group">
                                                    <label>Fecha de entrada</label>
                                                     <form:input path="fechaEntrada" type="date" class="form-control" autofocus required="required"/>
                                                </div>
                                            </div>
                                           <div class="col-lg-12 text-left">
                                                <div class="form-group">
                                                    <label>Fecha de producción</label>
                                                    <form:input path="fechaProduccion" type="date" class="form-control" autofocus required="required"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Ubicación</label> 
                                                    <form:input path="ubicacion" class="form-control" autofocus placeholder="Ubicación del producto" required="required"/>
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