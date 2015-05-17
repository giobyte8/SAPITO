<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>
<%@page import="com.sapito.db.entities.OrdenEnvio" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Envios</title>
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
                Envios
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <a href="/SAPITO/logistica/envios/altaEnvio"><button class="btn btn-success" type="button">Nuevo envio</button></a>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tenviosPage" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <!--<th>Cliente</th>-->  
                <th>Cliente</th>
                <th>Hora de entrega</th>
                <th>Tiempo de entrega</th>
                <th>Nombre del receptor</th>
                <th>Transporte asignadoo</th>                
                <th>Conductor asignado</th>
                <th>Gastos para el envio</th>                
                <th>Opciones</th>                
              </tr>
            </thead>
            <tbody >
             <c:forEach items="${envios}" var="envio">
              <tr>                                
                <!--<td>VW</td>-->
                <td>${"Javier"}</td>
                <td>${envio.id}</td>
                <td>${envio.tiempoEntrega}</td>
                <td>${envio.nombreRecibe}</td>
                <td>3FDRT</td>
                <td>Jose Perez Leon</td>
                <td>10000</td>
                <td style="text-align: center;">
                                        <a href="#">
                                            <i class="btn-default fa fa-fw fa-search" 
                                               data-toggle="modal" data-target="#cts-modal${envio.id}"></i></a>
                </td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
            <!-- Modal dialog para detalles de empresas -->
                    <c:forEach items="${envios}" var="envio">
                        <div id="cts-modal${envio.id}" class="modal fade" tabindex="-1" role="dialog" 
                             aria-labelledby="cliente-modal-title" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <!--cabecera--> 
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                                        </button>                
                                    </div>
                                    <!--fin cabecera-->

                                    <!--cuerpo-->
                                    <div class="row">
                      <div class="col-lg-12 text-left">
                          <div class="panel panel-success">
                              <div class="panel-heading">
                                  <h3 class="panel-title">Fechas de Envio</h3>
                              </div>
                              <div class="panel-success">
                                  <div class="col-lg-6 text-left">
                                      <label  >Hora de entrega</label>
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
                                          <input   value="${envio.nombreRecibe}" readonly="" path="nombreRecibe" name="nombreRecibe" id="fnoc-nombreRecibe" type="text" class="form-control" />                                          
                                      </div>
                                  </div>
                                  
                                      <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group has-success">
                                                <!--<label>Nombre (s)</label>-->
                                                <label for="fnvoc-tiempoEntrega">Tiempo Entrega</label>
                                          <!--<input class="form-control" placeholder="Nombre (s)" onkeypress="return soloTexto(event);" maxlength="40" required class="alert-danger pad-10">-->
                                                <input value="${envio.tiempoEntrega}"  path="tiempoEntrega" name="tiempoEntrega" id="fnoc-tiempoEntrega" type="text" class="form-control" />
                                            </div>
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
                                       <input value="${envio.idTransporte}" class="form-control" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                   </div>
                                   <div class="form-group has-success">
                                       <label for="fnvoc-nombreConductor">Nombre del Conductor</label>
                                       <input value="${envio.idConductor}" class="form-control" onkeypress="return soloTexto(event);" maxlength="40" required alert-danger pad-10>
                                   </div>
                               </div>
                               <div class="col-lg-6 text-left">
                                       <div class="form-group has-success">
                                       <label>Gastos para el envio</label>
                                       <input  class="form-control" onkeypress="return soloNumeros(event);" maxlength="40" required alert-danger pad-10>
                                   </div>
                                </div>
                          </div>
                      </div>
                  </div>            
                                    <!--fin cuerpo-->    

                                    <!--pie-->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">
                                            Cerrar
                                        </button>
                                        <a href="/SAPITO/logistica/envios/bajaEnvio?idOrdenEnvio=${envio.id}">
                                            <button class="btn btn-success" type="button">Elimniar</button>
                                        </a>

                                        <a href="/SAPITO/logistica/envios/modificaEnvio?empresaid=${envio.id}" data-toggle="modal">
                                            <button class="btn btn-success" type="button" >Actualizar</button>                                            
                                        </a>    
                                    </div>
                                    <!--fin pie-->
                                </div>
                            </div>
                        </div>
                    </c:forEach>
        </div>
      </div>
    </div>
    
    <!-- Footer and scripts -->
    
    
    
    <%@include file="logisticaFooter.jsp" %>
    
    <script >
        $(document).ready(function () {
            activatenb('nb-enviosPage');
            $('#tenviosPage').DataTable();
        });
    </script>
  </body>
</html>
