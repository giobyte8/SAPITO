<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : Elizabeth
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
                Producto Terminado
              </h1>
            </div>
          </div>

          <form:form id="fnvo-producto" commandName="inventario" action="nvoproducto" method="POST" >
              <div class="row">
                <div class="col-lg-12 text-left">
                  <div class="panel panel-green">
                    <div class="panel-heading">
                      <h2 class="panel-title">Registro de producto terminado </h2>
                    </div>
                    <div class="panel-body">

                      <div class="col-lg-6 text-left">
                        <div class="form-group">
                          <label for="fnvoc-codigoInventario">Código Inventario</label>
                          <form:input path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Código de inventario" required="required"/>
                          <form:errors path="codigoInventario" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-nombre">Nombre</label>  
                          <form:input path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre del producto" required="required"/>
                          <form:errors path="nombre" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-cantidad">Cantidad</label> 
                          <form:input path="cantidad" name="cantidad" id="fnoc-cantidad" type="number" class="form-control" placeholder="Cantidad del producto" required="required"/>
                          <form:errors path="cantidad" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-maximo">Máximo</label>
                          <form:input path="maximo" name="maximo" id="fnoc-maximo" type="number" class="form-control" placeholder="Cantidad máxima de producto" required="required"/>
                          <form:errors path="maximo" element="div" class="alert-danger pad-10"/>
                        </div>
                        <div class="form-group">
                          <label for="fnvoc-minimo">Mínimo</label>
                          <form:input path="minimo" name="minimo" id="fnoc-minimo" type="number" class="form-control" placeholder="Cantidad mínima de producto" required="required"/>
                          <form:errors path="minimo" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-6 text-left">


                        <div class="form-group">
                          <label for="fnvoc-fechaEntrada">Fecha de entrada</label>
                          <form:input path="fechaEntrada" name="fechaEntrada" id="fnoc-fechaEntrada" class="form-control" placeholder="dd-mm-aaaa"/>
                          <form:errors path="fechaEntrada" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-fechaProduccion">Fecha de producción</label>
                          <form:input path="fechaProduccion" name="fechaProduccion" id="fnoc-fechaProduccion" class="form-control" placeholder="dd-mm-aaaa"/>
                          <form:errors path="fechaProduccion" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-ubicacion">Ubicación</label> 
                          <form:input path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicación del producto" required="required"/>
                          <form:errors path="ubicacion" element="div" class="alert-danger pad-10"/>
                        </div>

                        <div class="form-group">
                          <label for="fnvoc-categoria">Categoria</label>
                          <form:input path="categoria" name="categoria" id="fnoc-categoria" type="text" class="form-control" placeholder="Categoría del producto" required="required"/>
                          <form:errors path="categoria" element="div" class="alert-danger pad-10" />
                        </div>
                      </div>
                      <div class="form-group hidden">
                        <label>Tipo de producto:</label>
                        <form:input path="tipoProducto" name="tipoProducto" id="fnop-tipoProducto" 
                                    class="form-control" placeholder="Tipo de producto" value="Producto Terminado" />
                        <form:errors path="tipoProducto" element="div" class="alert-danger pad-10" />
                      </div>




                    </div>
                  </div>
                  <div align="right">
                    <button onclick="" type="submit" class="btn btn-success">Aceptar</button>
                  </div> 

                </div>
              </div>
          </form:form>
        </div>
      </div>
    </div>

    <!-- jQuery -->       
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/inventarios/jsinventarios.js"></script>
    <%@include file="inventariosFooter.jsp" %>
    <!-- PARA FECHA -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/activofijo/jquery-ui.js"></script>        
    <script type="text/javascript">
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
        });
        $("#fnoc-codigoInventario").val("");
        $("#fnoc-nombre").val("");
        $("#fnoc-cantidad").val("");
        $("#fnoc-maximo").val("");
        $("#fnoc-minimo").val("");
        $("#fnoc-fechaEntrada").val("");
        $("#fnoc-fechaProduccion").val("");
        $("#fnoc-ubicacion").val("");
        $("#fnoc-cantidad").val("");
        $('#fnoc-categoria').val("");
    </script>
  </body>
</html>