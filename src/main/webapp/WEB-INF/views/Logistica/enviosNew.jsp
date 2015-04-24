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
                                      <div class="form-group input-group has-success">
                                          <select  id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa ">
                                              <option>Nacional</option>
                                              <option>Extranjera</option>                           
                                          </select>
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
