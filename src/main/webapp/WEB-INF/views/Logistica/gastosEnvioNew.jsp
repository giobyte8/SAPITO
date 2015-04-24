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
          <form onsubmit="gastosEnvio()">
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Calculo de Costos</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Gastos de Diesel </label>
                                                    <input class="form-control" placeholder="Gastos de Diesel" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Alojamiento</label>
                                                    <input class="form-control" placeholder="Alojamiento" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                        
                                    </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Costo del Transporte</label>
                                                    <input class="form-control" placeholder="Costo del Transporte" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Costo del Conductor</label>
                                                    <input class="form-control" placeholder="Costo del Conductor" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                            <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div> 
             </div> 
          </form>
      </div>
        </div>
        </div>
    </body>
</html>
