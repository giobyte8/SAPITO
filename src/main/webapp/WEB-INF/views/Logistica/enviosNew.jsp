<%-- 
    Document   : enviosNew
    Created on : 23/04/2015, 11:36:03 PM
    Author     : logistica
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="com.sapito.db.entities.OrdenEnvio" %>
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
              <%
                            if (request.getAttribute("modificar") != null) 
                            {

                                    if (request.getAttribute("modificar").equals("1")) {
                                        %>
              <!--<form onsubmit="altaEnvio()">-->
              <form:form id="fnvo-ordenEnvio" commandName="#{ordenEnvio}" action="modificaOrdenEnvio" method="POST">
                  <div class="row">
                      <div class="col-lg-12 text-left">
                          <div class="panel panel-success">
                              <div class="panel-heading">
                                  <h3 class="panel-title">Fechas de Envio</h3>
                              </div>
                              <div class="panel-success">
                                  <div class="col-lg-6 text-left">
                                      <label  >Hora de entrega</label>
                                      <%--<form:input path="horaEntrega" name="horaEntrega" id="fnoc-horaEntrega"--%> 
                                                  <!--type="text" class="form-control"/>-->
                                      <%--<form:errors path="horaEntrega" element="div" class="alert-danger pad-10" />--%>
                            <div class="container">
                                <div class="row">
                                    <div class='col-sm-6'>
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker1'>
                                            <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                    $(function () {
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
                                          <!--<label>Nombre (s)</label>-->
                                          <label for="fnvoc-nombreRecibe">Nombre (s)</label>
                                          <!--<input class="form-control" placeholder="Nombre (s)" onkeypress="return soloTexto(event);" maxlength="40" required class="alert-danger pad-10">-->
                                          <form:input  value="${ordenEnvio.nombreRecibe}" path="nombreRecibe" name="nombreRecibe" id="fnoc-nombreRecibe" type="text" class="form-control" placeholder="Nombre (s)"/>
                                          <form:errors path="nombreRecibe" element="div" class="alert-danger pad-10" />
                                      </div>
                                  </div>
                                  
                                      <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group has-success">
                                                <!--<label>Nombre (s)</label>-->
                                                <label for="fnvoc-tiempoEntrega">Tiempo de Entrega</label>
                                          <!--<input class="form-control" placeholder="Nombre (s)" onkeypress="return soloTexto(event);" maxlength="40" required class="alert-danger pad-10">-->
                                                <form:input value="${ordenEnvio.tiempoEntrega}"  path="tiempoEntrega" name="tiempoEntrega" id="fnoc-tiempoEntrega" type="text" class="form-control" placeholder="Tiempo de Entrega"/>
                                                <form:errors path="tiempoEntrega" element="div" class="alert-danger pad-10" />
                                            </div>
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
                                       <label for ="fnvoc-transporteAsignado">Transporte Asignado</label>
                                       <input value="${ordenEnvio.idTransporte}" class="form-control" placeholder="Transporte Asignado" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                       <%--<form:input  path="transporteAsignado" name="transporteAsignado" id="fnoc-transporteAsignado" type="text" class="form-control" placeholder="Transporte Asignado"/>--%>
                                       <%--<form:errors path="transporteAsignado" element="div" class="alert-danger pad-10" />--%>
                                   </div>
                                   <div class="form-group has-success">
                                       <label for="fnvoc-nombreConductor">Nombre del Conductor</label>
                                       <input value="${ordenEnvio.idConductor}" class="form-control" placeholder="Nombre del Conductor" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                       <%--<form:input  path="nombreConductor" name="nombreConductor" id="fnoc-nombreConductor" type="text" class="form-control" placeholder="Nombre del Conductor"/>--%>
                                       <%--<form:errors path="nombreConductor" element="div" class="alert-danger pad-10" />--%>
                                   </div>
                               </div>
                               <div class="col-lg-6 text-left">
                                       <div class="form-group has-success">
                                       <label>Gastos para el envio</label>
                                       <input  value="${ordenEnvio.idConductor}" class="form-control" placeholder="Gastos para el envio" onkeypress="return soloNumeros(event);" maxlength="40" required alert-danger pad-10>
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
              <%
                                    }
                             }else
                            {
                              %>
                              <form:form id="fnvo-ordenEnvio" commandName="ordenEnvio" action="altaEnvio" method="POST">
                  <div class="row">
                      <div class="col-lg-12 text-left">
                          <div class="panel panel-success">
                              <div class="panel-heading">
                                  <h3 class="panel-title">Fechas de Envio</h3>
                              </div>
                              <div class="panel-success">
                                  <div class="col-lg-6 text-left">
                                      <label  >Hora de entrega</label>
                                      <%--<form:input path="horaEntrega" name="horaEntrega" id="fnoc-horaEntrega"--%> 
                                                  <!--type="text" class="form-control"/>-->
                                      <%--<form:errors path="horaEntrega" element="div" class="alert-danger pad-10" />--%>
                            <div class="container">
                                <div class="row">
                                    <div class='col-sm-6'>
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker1'>
                                            <input type='text' class="form-control" />
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                    $(function () {
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
                                          <!--<label>Nombre (s)</label>-->
                                          <label for="fnvoc-nombreRecibe">Nombre (s)</label>
                                          <!--<input class="form-control" placeholder="Nombre (s)" onkeypress="return soloTexto(event);" maxlength="40" required class="alert-danger pad-10">-->
                                          <form:input  value="${ordenEnvio.nombreRecibe}" path="nombreRecibe" name="nombreRecibe" id="fnoc-nombreRecibe" type="text" class="form-control" placeholder="Nombre (s)"/>
                                          <form:errors path="nombreRecibe" element="div" class="alert-danger pad-10" />
                                      </div>
                                  </div>
                                  
                                      <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group has-success">
                                                <!--<label>Nombre (s)</label>-->
                                                <label for="fnvoc-tiempoEntrega">Tiempo de Entrega</label>
                                          <!--<input class="form-control" placeholder="Nombre (s)" onkeypress="return soloTexto(event);" maxlength="40" required class="alert-danger pad-10">-->
                                                <form:input value="${ordenEnvio.tiempoEntrega}"  path="tiempoEntrega" name="tiempoEntrega" id="fnoc-tiempoEntrega" type="text" class="form-control" placeholder="Tiempo de Entrega"/>
                                                <form:errors path="tiempoEntrega" element="div" class="alert-danger pad-10" />
                                            </div>
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
                                       <label for ="fnvoc-transporteAsignado">Transporte Asignado</label>
                                       <input value="${ordenEnvio.idTransporte}" class="form-control" placeholder="Transporte Asignado" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                       <%--<form:input  path="transporteAsignado" name="transporteAsignado" id="fnoc-transporteAsignado" type="text" class="form-control" placeholder="Transporte Asignado"/>--%>
                                       <%--<form:errors path="transporteAsignado" element="div" class="alert-danger pad-10" />--%>
                                   </div>
                                   <div class="form-group has-success">
                                       <label for="fnvoc-nombreConductor">Nombre del Conductor</label>
                                       <input value="${ordenEnvio.idConductor}" class="form-control" placeholder="Nombre del Conductor" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                       <%--<form:input  path="nombreConductor" name="nombreConductor" id="fnoc-nombreConductor" type="text" class="form-control" placeholder="Nombre del Conductor"/>--%>
                                       <%--<form:errors path="nombreConductor" element="div" class="alert-danger pad-10" />--%>
                                   </div>
                               </div>
                               <div class="col-lg-6 text-left">
                                       <div class="form-group has-success">
                                       <label>Gastos para el envio</label>
                                       <input  class="form-control" placeholder="Gastos para el envio" onkeypress="return soloNumeros(event);" maxlength="40" required alert-danger pad-10>
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
                              <%
                            }
                            %>
          </div>
      </div>
        </div>
    </body>
</html>