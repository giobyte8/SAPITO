<%-- 
    Document   : enviosNew
    Created on : 23/04/2015, 11:36:03 PM
    Author     : logistica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Alta Envios</title>
    </head>
    <body>
        <div id="wrapper">
      
      <!-- Navigation bar -->
      <%@include file="logisticaNavs.jsp" %>
      <div id="page-wrapper">
          <div class="container-fluid">
              <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Nuevo Envio
              </h1>
            </div>
          </div>
              <form onsubmit="altaEnvio()">
                  <div class="row">
                      <div class="col-lg-12 text-left">
                          <div class="panel panel-success">
                              <div class="panel-heading">
                                  <h3 class="panel-title">Fechas de Envio</h3>
                              </div>
                              <div class="panel-success">
                                  <div class="col-lg-6 text-left">
                                      <label>Hora de envio</label>
                                      <div class="container">
                                          <div class="row">
                                              <div class='col-sm-6'>
                                                  <div class="form-group">
                                                      <div class='input-group date' id='datetimepicker1'>
                                                          <input type='text' class="form-control" />
                                                          <span class="input-group-addon">
                                                              <span class="glyphicon glyphicon-calendar">
                                                              </span>
                                                          </span>
                                                      </div>
                                                  </div>
                                              </div>
                                              <script type="text/javascript">
                                                  $(function () 
                                                  {
                                                      $('#datetimepicker1').datetimepicker();
                                                  });
                                              </script>
                                          </div>
                                      </div>
                                  </div>
                                  
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-lg-6 text-left">
                          <div class="panel panel-success">
                              <div class="panel-heading">
                                  <h3 class="panel-title">Datos del Responsable</h3>
                              </div>
                              <div class="panel-success">
                                  <div class="col-lg-6 text-left">
                                      <div class="form-group has-success">
                                          <label>Nombre (s)</label>
                                          <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="row">
                      <div class="col-lg-6 text-left">
                           <div class="panel-success">
                               <div class="panel-heading">
                                   <h3 class="panel-title">Datos de Transporte</h3>
                               </div>
                               <div class="col-lg-6 text-left">
                                   <div class="form-group has-success">
                                       <label>Transporte Asignado</label>
                                       <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                   </div>
                                   <div class="form-group has-success">
                                       <label>Nombre del Conductor</label>
                                       <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                   </div>
                               </div>
                               <div class="col-lg-6 text-left">
                                       <div class="form-group has-success">
                                       <label>Gastos para el envio</label>
                                       <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
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
    </body>
</html>
