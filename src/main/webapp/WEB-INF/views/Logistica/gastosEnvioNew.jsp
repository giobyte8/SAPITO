<%-- 
    Document   : gastosEnvioNew
    Created on : 24/04/2015, 03:40:14 AM
    Author     : logistica
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
          <form:form id="fnvo-gastosE" commandName="gastosE" action="gastosEnvioN" method="POST">
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Calculo de Costos</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-gastosEnvio">Gastos de Envio </label>
                                                    <!--<input class="form-control" placeholder="Gastos de Diesel" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="gastosEnvio" name="gastosEnvio"  type="text" class="form-control" placeholder="Gastos de Envio" />
                                                    <form:errors path="gastosEnvio" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-gastosAlojamiento">Alojamiento</label>
                                                    <!--<input class="form-control" placeholder="Alojamiento" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="gastosAlojamiento" name="gastosAlojamiento" id="fnvoc-gastosAlojamiento" type="text" class="form-control" placeholder="Alojamiento"/>
                                                    <form:errors path="gastosAlojamiento" element="div" class="alert-danger pad-10" />
                                                </div>
                                        
                                    </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-casetas">Costo de Casetas</label>
                                                    <!--<input class="form-control" placeholder="Costo del Transporte" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <form:input path="casetas" name="casetas" id="fnvoc-casetas" 
                                                                type="text" class="form-control" placeholder="Casetas"/>
                                                    <form:errors path="casetas" element="div" class="alert-danger pad-10" />
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
