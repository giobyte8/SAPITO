<%-- 
    Document   : gastosEnvioNew
    Created on : 24/04/2015, 03:40:14 AM
    Author     : j0rd4n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Gastos de Envio</title>
    </head>
    <body>
        <div id="wrapper">
      
      <!-- Navigation bar -->
      <%@include file="logisticaNavs.jsp" %>

      <!-- Page content -->
      
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Gastos de Envio
              </h1>
            </div>
          </div>
          <!--formulario alta-->
          <form:form id="fnvo-gastosE" commandName="gastosE" action="altaGastosEnvio" method="POST">
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Calculo de Costos</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label fnvoc-gastosD>Gastos de Diesel </label>
                                                    <!--<input class="form-control" placeholder="Gastos de Diesel" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="gastosD" name="gastosD" id="fnvoc-gastosD" 
                                                        type="text" class="form-control" />
                                                    <form:errors path="gastosD" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-alojamiento">Alojamiento</label>
                                                    <!--<input class="form-control" placeholder="Alojamiento" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="alojamiento" name="alojamiento" id="fnvoc-alojamiento" 
                                                        type="text" class="form-control" />
                                                    <form:errors path="alojamiento" element="div" class="alert-danger pad-10" />
                                                </div>
                                        
                                    </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-costoTransporte">Costo del Transporte</label>
                                                    <!--<input class="form-control" placeholder="Costo del Transporte" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="costoTransporte" name="costoTransporte" id="fnvoc-costoTransporte" 
                                                                type="text" class="form-control" />
                                                    <form:errors path="costoTransporte" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-costoConductor">Costo del Conductor</label>
                                                    <!--<input class="form-control" placeholder="Costo del Conductor" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="costoConductor" name="costoConductor" id="fnvoc-costoConductor" 
                                                                type="text" class="form-control" />
                                                    <form:errors path="costoConductor" element="div" class="alert-danger pad-10" />
                                                </div>
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
        </div>
        </div>
    </body>
</html>
