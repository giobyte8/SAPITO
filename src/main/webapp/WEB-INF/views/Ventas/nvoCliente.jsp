<%-- 
    Document   : nvoCliente
    Created on : Apr 19, 2015, 8:38:35 PM
    Author     : giovanni
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Nuevo cliente</title>
  </head>
  <body>
    <div id="wrapper">

      <!-- Nav bar -->
      <%@include file="ventasNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">Nuevo cliente</h1>
            </div>
          </div>

          <!-- Formulario de nuevo cliente -->
          <form:form id="fnvo-cliente" commandName="cliente" action="nvocliente" method="POST">

              <div class="panel panel-success">
                <div class="panel-heading">
                  <h4>Datos de la empresa</h4>
                </div>
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-6">
                      <br/><label for="fnvoc-empresa">Empresa</label>
                      <form:input path="empresa" name="empresa" id="fnoc-empresa" 
                                  type="text" class="form-control"/>
                      <form:errors path="empresa" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-6">
                      <br/><label for="fnvoc-suc">Sucursal</label>
                      <form:input path="sucursal" name="sucursal" id="fnvoc-suc" 
                                  type="text" class="form-control"/>
                      <form:errors path="sucursal" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <br/><label for="fnvoc-rfc">RFC</label>
                      <form:input path="rfc" name="rfc" id="fnvoc-rfc" 
                                  type="text" class="form-control"/>
                      <form:errors path="rfc" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-3">
                      <br/><label for="fnvoc-pais">Pais</label>
                      <form:input path="pais" name="pais" id="fnvoc-pais" 
                                  type="text" class="form-control" />
                      <form:errors path="pais" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-3">
                      <br/><label for="fnvoc-edo">Estado</label>
                      <form:input path="estado" name="estado" id="fnvoc-edo"
                                  type="text" class="form-control" />
                      <form:errors path="estado" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-3">
                      <br/><label for="fnvoc-municipio">Municipio o ciudad</label>
                      <form:input path="municipio" name="municipio" id="fnvoc-mun"
                                  type="text" class="form-control" />
                      <form:errors path="municipio" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-3">
                      <br/><label for="fnvoc-cp">Código Postal</label>
                      <form:input path="cp" name="cp" id="fnvoc-cp" 
                                  type="text" class="form-control" />
                      <form:errors path="cp" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-6">
                      <br/><label for="fnvoc-col">Colonia</label>
                      <form:input path="colonia" name="colonia" id="fnvoc-col" 
                                  type="text" class="form-control" />
                      <form:errors path="colonia" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <br/><label for="fnvoc-calle">Calle</label>
                      <form:input path="calle" name="calle" id="fnvoc-calle" 
                                  type="text" class="form-control" />
                      <form:errors path="calle" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-3">
                      <br/><label for="fnvoc-nume">Número exterior</label>
                      <form:input path="numeroE" name="numeroE" id="fnvoc-nume"
                                  type="text" class="form-control" />
                      <form:errors path="numeroE" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-3">
                      <br/><label for="fnvoc-numi">Número interior</label>
                      <form:input path="numeroI" name="numeroI" id="fnvoc-numi"
                                  type="text" class="form-control" />
                      <form:errors path="numeroI" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                </div>
              </div>

              <br/><br/>
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h4>Datos del contacto</h4>
                </div>
                <div class="panel-body">
                  <div class="row">
                    <div class="col-md-4">
                      <br/><label for="fnvoc-nombre">Nombre (s)</label>
                      <form:input path="nombreContacto" name="nombreContacto" 
                                  type="text" class="form-control"/>
                      <form:errors path="nombreContacto" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-4">
                      <br/><label for="fnvoc-apaterno">Apellido paterno</label>
                      <form:input path="apellidoPaternoContacto" name="apellidoPaternoContacto"
                                  type="text" class="form-control"/>
                      <form:errors path="apellidoPaternoContacto" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-4">
                      <br/><label for="fnvoc-amaterno">Apellido materno</label>
                      <form:input path="apellidoMaternoContacto" name="apellidoMaternoContacto" 
                                  type="text" class="form-control"/>
                      <form:errors path="apellidoMaternoContacto" element="div" class="alert-danger pad-10" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <br/><label for="fnvoc-email">Email</label>
                      <form:input path="email" name="email" id="fnvoc-email" 
                                  type="email" class="form-control" />
                      <form:errors path="email" element="div" class="alert-danger pad-10" />
                    </div>

                    <div class="col-md-2">
                      <br/><label for="fnvoc-tel1">Teléfono</label>
                      <form:input path="telefono1" name="telefono1" 
                                  type="text" class="form-control"/>
                      <form:errors path="telefono1" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-2">
                      <br/><label>Extensión</label>
                      <form:input path="extension1" name="extension1"
                                  type="text" class="form-control" />
                      <form:errors path="extension1" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-2">
                      <br/><label for="fnvoc-tel2">Teléfono 2</label>
                      <form:input path="telefono2" name="telefono2" 
                                  type="text" class="form-control"/>
                      <form:errors path="telefono2" element="div" class="alert-danger pad-10" />
                    </div>
                    <div class="col-md-2">
                      <br/><label>Extensión 2</label>
                      <form:input path="extension2" name="extension2"
                                  type="text" class="form-control" />
                      <form:errors path="extension2" element="div" class="alert-danger pad-10" />
                    </div>

                  </div>
                </div>
              </div>

              <div class="row text-right">
                <div class="col-md-12">
                  <br/><br/>
                  <!--button onclick="submitNvoCliente()" class="btn btn-success right" type="button">
                    Guardar
                  </button-->
                  <button type="submit" class="btn btn-success right">Guardar</button>
                  &nbsp;&nbsp;
                  <button class="btn btn-primary right" type="reset">
                    Limpiar
                  </button>
                  <br/><br/>
                </div>
              </div>
          </form:form>

        </div>
      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-nvocliente');
        });
    </script>
  </body>
</html>
