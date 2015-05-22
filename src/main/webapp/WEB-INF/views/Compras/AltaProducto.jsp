<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
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
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Registrar producto
                            </h1>                    
                        </div>
                    </div>

                    <div class="panel panel-green">
                        <div class="panel-heading">Alta producto</div>
                        <div class="panel-body">
                            <form:form id="nvo-producto" commandName="producto" action="AltaProducto" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <br/><label for="nvo-nombre" class="control-label">Nombre</label>
                                        <form:input path="nombreProducto" name="nombreProducto" type="text" class="form-control" 
                                                    id="nvo-nombre" placeholder="Nombre" />
                                        <form:errors path="nombreProducto" element="div" class="alert-danger pad-10" />
                                    </div>
                                    <div class="col-md-6">
                                        <br/><label for="nvo-descripcion" class="control-label">Descripcion</label>
                                        <form:input path="descripcion" name="descripcion" type="text" class="form-control" 
                                                    id="nvo-descripcion" placeholder="Descripcion" />
                                        <form:errors path="descripcion" element="div" class="alert-danger pad-10" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <br/><label for="nvo-marca" class="control-label">Marca</label>
                                        <form:input path="marca" name="marca" type="text" class="form-control" 
                                                    id="nvo-marca" placeholder="Marca" />
                                        <form:errors path="marca" element="div" class="alert-danger pad-10" />
                                    </div>
                                    <div class="col-md-6">
                                        <br/><label for="nvo-categoria" class="control-label">Categoria</label>
                                        <form:select id="nvo-categoria" path="categoria" items="${selectCategoria}" class="form-control" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6"></div>
                                    <div class="col-md-6 text-right">
                                        <br/>
                                        <button onclick="cancelarAltaProducto()" type="button" class="btn btn-danger">Cancelar</button>
                                        <button type="submit" value="Aceptar"
                                                class="btn btn-success" role="button">Aceptar</button>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>

                </div>                        
            </div>  
        </div>

   
        <%@include file="MenusCompras/Pie compras.jsp"%>
        <script src="${pageContext.request.contextPath}/resources/js/compras/jscompas.js"></script>
        <script >
                              $(document).ready(function () {
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
                                              window.location.href = '/SAPITO/compras/ConsultaProducto';
                                          });
                                      }, 500);

                                  }
                              });

                              function cancelarAltaProducto()
                              {
                                  swal({
                                      title: '¿Seguro que desea cancelar?',
                                      text: 'Esto eliminará los datos del Alta de Producto',
                                      type: 'warning',
                                      showCancelButton: true,
                                      confirmButtonColor: "#DD6B55",
                                      confirmButtonText: 'Si, cancelar alta',
                                      cancelButtonText: 'No',
                                      closeOnConfirm: true
                                  }, function (isConfirm) {
                                      if (isConfirm) {
                                          location.reload();
                                          window.location.href = '/SAPITO/compras/ConsultaProducto';

                                      }

                                  });
                              }
        </script>
    </body>
</html>