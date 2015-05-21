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
        
        <!-- PARA FECHA -->
    <link href="${pageContext.request.contextPath}/resources/css/activofijo/jquery-ui.css" rel="stylesheet" />
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp" %>
            <div id="page-wrapper">
                <div class="container-fluid">
            <!-- Title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Materia prima
                            </h1>
                        </div>
                    </div>

            <form:form id="fnvo-Inventario" commandName="inventario" action="registrarMateriaPrima" method="POST">

                <div class="row">
                    <div class="col-lg-12 text-left">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos de la Materia prima</h3>
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-6 text-left">                                                      
                                    <div class="form-group">
                                        <label for="fnvoc-codigoInventario">Codigo de Inventario</label>                                                
                                        <form:input  path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Código de inventario"/>
                                        <form:errors path="codigoInventario" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group">
                                        <label for="fnvoc-nombre">Nombre</label>                                                
                                        <form:input  path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre"/>
                                        <form:errors path="nombre" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group">
                                        <label for="fnvoc-categoria">Categoría</label>                                                
                                        <form:input  path="categoria" name="categoria" id="fnoc-categoria" type="text" class="form-control" placeholder="Categoría"/>
                                        <form:errors path="categoria" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group">
                                        <label for="fnvoc-precioUnitario">Precio Unitario</label>                                                
                                        <form:input  path="precioUnitario" name="precioUnitario" id="fnoc-precioUnitario" type="text" class="form-control" placeholder="Precio Unitario"/>
                                        <form:errors path="precioUnitario" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                    <div class="form-group">
                                        <label for="fnvoc-cantidad">Cantidad</label>                                                
                                        <form:input  path="cantidad" name="cantidad" id="fnoc-cantidad" type="text" class="form-control" placeholder="Cantidad"/>
                                        <form:errors path="cantidad" element="div" class="alert-danger pad-10" />                                                                                                                    
                                    </div>
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                        <label for="fnvoc-minimo">Mínimo</label>                                                
                                        <form:input  path="minimo" name="minimo" id="fnoc-minimo" type="text" class="form-control" placeholder="Cantidad mínima de producto"/>
                                        <form:errors path="minimo" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                  
                                    </div>
                                    <div class="form-group">
                                        <label for="fnvoc-maximo">Máximo</label>                                                
                                        <form:input  path="maximo" name="maximo" id="fnoc-maximo" type="text" class="form-control" placeholder="Cantidad máxima de producto"/>
                                        <form:errors path="maximo" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                    </div>                                                                                                            
                                    <div class="form-group">
                                        <label for="fnvoc-ubicacion">Ubicación</label>                                                
                                        <form:input  path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicación"/>
                                        <form:errors path="ubicacion" element="div" class="alert-danger pad-10" />                                                                                                                                                                                                                                                                                                                                                                                                                      
                                    </div>                                                                                                                                                
                                    <div class="form-group">
                                        <label for="fnvoc-fechaEntrada">Fecha de entrada</label>                                                
                                        <form:input  path="fechaEntrada" name="fechaEntrada" id="fnoc-fechaEntrada" type="text" class="form-control"/>
                                        
                                    </div>                                                                                                                                                
                                    <div class="form-group">
                                        <label for="fnvoc-fechaProduccion">Fecha de producción</label>                                                
                                        <form:input   path="fechaProduccion" name="fechaProduccion" id="fnoc-fechaProduccion" type="text" class="form-control"/>
                                    </div>                                                                                                                                                
                                    <input value="Materia Prima"  path="tipoProducto" name="tipoProducto" id="fnoc-fechaProduccion" type=hidden class="form-control"/>
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
                </div></div>
<!-- jQuery -->       </div>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/inventarios/jsinventarios.js"></script>
    <%@include file="inventariosFooter.jsp" %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/activofijo/jquery-ui.js"></script>        
    <script >
        $(document).ready(function () {
            
            $("#fnoc-fechaEntrada").datepicker({
                dateFormat: "dd-mm-yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
            $("#fnoc-fechaProduccion").datepicker({
                dateFormat: "dd-mm-yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
            
            var showConfirm = "${showConfirm}";
            console.log(showConfirm);
            if (showConfirm === 'true') {
                setTimeout(function () {
                    swal({
                        title: 'Registro exitoso',
                        text: 'El producto ha sido registrado exitosamente',
                        type: 'success',
                        showCancelButton: false,
                        closeOnConfirm: true
                    }, function (isConfirm) {
                        !isConfirm;
                    });
                }, 500);

            }
            
            $("#fnoc-codigoInventario").val("");
            $("#fnoc-nombre").val("");
            $("#fnoc-cantidad").val("");
            $("#fnoc-maximo").val("");
            $("#fnoc-minimo").val("");
            $("#fnoc-categoria").val("");
            $("#fnoc-fechaEntrada").val("");
            $("#fnoc-fechaProduccion").val("");
            $("#fnoc-ubicacion").val("");
            $("#fnoc-cantidad").val("");
            $('#fnoc-precioUnitario').val('');
        });
    </script>





        
       
    </body>
</html>