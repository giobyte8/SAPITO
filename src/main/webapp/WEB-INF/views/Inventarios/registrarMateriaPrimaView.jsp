<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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



            <form:form id="fnvo-Inventario" commandName="inventario" action="registrarMateriaPrima" method="POST">

                <div class="row">
                    <div class="col-lg-12 text-left">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos de la Materia prima</h3>
                            </div>
                            <div class="panel-success">
                                <div class="col-lg-6 text-left">                                                      
                                    <div class="form-group has-success">
                                        <label for="fnvoc-nombre">Nombre</label>                                                
                                        <form:input  path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre"/>
                                        <form:errors path="nombre" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group has-success">
                                        <label for="fnvoc-codigoInventario">Codigo de Inventario</label>                                                
                                        <form:input  path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Codigo de Inventario"/>
                                        <form:errors path="codigoInventario" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group has-success">
                                        <label for="fnvoc-categoria">Categoria</label>                                                
                                        <form:input  path="categoria" name="categoria" id="fnoc-categoria" type="text" class="form-control" placeholder="categoria"/>
                                        <form:errors path="categoria" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group has-success">
                                        <label for="fnvoc-precioUnitario">Precio Unitario</label>                                                
                                        <form:input  path="precioUnitario" name="precioUnitario" id="fnoc-precioUnitario" type="text" class="form-control" placeholder="Precio Unitario"/>
                                        <form:errors path="precioUnitario" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group has-success">
                                        <label for="fnvoc-cantidad">Cantidad</label>                                                
                                        <form:input  path="cantidad" name="cantidad" id="fnoc-cantidad" type="text" class="form-control" placeholder="Cantidad"/>
                                        <form:errors path="cantidad" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group has-success">
                                        <label for="fnvoc-minimo">Minimo</label>                                                
                                        <form:input  path="minimo" name="minimo" id="fnoc-minimo" type="text" class="form-control" placeholder="Minimo"/>
                                        <form:errors path="minimo" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                  
                                    </div>
                                    <div class="form-group has-success">
                                        <label for="fnvoc-maximo">Maximo</label>                                                
                                        <form:input  path="maximo" name="maximo" id="fnoc-maximo" type="text" class="form-control" placeholder="Maximo"/>
                                        <form:errors path="maximo" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                    </div>                                                                                                            
                                    <div class="form-group has-success">
                                        <label for="fnvoc-ubicacion">Ubicacion</label>                                                
                                        <form:input  path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicacion"/>
                                        <form:errors path="ubicacion" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                    </div>                                                                                                                                                
                                    <div class="form-group has-success">
                                        <label for="fnvoc-fechaEntrada">Fechade Entrada</label>                                                
                                        <form:input  path="fechaEntrada" name="fechaEntrada" id="fnoc-fechaEntrada" type="text" class="form-control"/>
                                        
                                    </div>                                                                                                                                                
                                    <div class="form-group has-success">
                                        <label for="fnvoc-fechaProduccion">Fecha de Produccion</label>                                                
                                        <form:input   path="fechaProduccion" name="fechaProduccion" id="fnoc-fechaProduccion" type="text" class="form-control"/>
                                    </div>                                                                                                                                                
                                    <input value="Materia"  path="tipoProducto" name="tipoProducto" id="fnoc-fechaProduccion" type=hidden class="form-control"/>
                                    <br>    
                                    <div align="right">
                                        <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                        

            </form:form>







        </div>
        <%@include file="inventariosFooter.jsp" %>
    </body>
</html>