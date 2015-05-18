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
            

              <%
                  if (request.getAttribute("transporte") != null) {

                      if (request.getAttribute("transporte").equals("1")) 
                      {

              %>                
              <div class="alert alert-danger" role="alert" style="text-align: center">No hay transporte</div>
              <%      }
                  }
              %>
              
              <%
                  if (request.getAttribute("conductor") != null) {

                      if (request.getAttribute("conductor").equals("1")) 
                      {

              %>                
              <div class="alert alert-danger" role="alert" style="text-align: center">No hay conductor</div>
              <%      }
                  }
              %>
              
              <%
                  if (request.getAttribute("gastos") != null) {

                      if (request.getAttribute("gastos").equals("1")) 
                      {

              %>                
              <div class="alert alert-danger" role="alert" style="text-align: center">El cliente no tiene gastos</div>
              <%      }
                  }
              %>
           <a href="/SAPITO/logistica/pdfRecpcion?output=reporte" target="_blank"><button class="btn btn-success" type="button">Reporte</button></a>   
              
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tenviosPage" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <!--<th>Cliente</th>-->  
                <th>Empresa</th>
                <th>Fecha Entrega</th>
                <th>Nombre del receptor</th>                
                <th>Placas del tranporte</th>                
                <th>Licencia del Conducor</th>                
                <th>Agregar envio</th>                
                <th>Documento recepcion</th>                
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody >
             <c:forEach items="${envios}" var="envio">
              <tr>                                
                <!--<td>VW</td>-->
                <td>${envio.empresa}</td>
                <td>${envio.fechaEntrega}</td>
                <td>${envio.nombreRecibe}</td>
                <td>${envio.placasTransporte}</td>                                
                <td>${envio.licenciaConductor}</td>                                
                <td style="text-align: center;"><c:if test="${envio.idOrdenEnvio == 0}">                        
                        <a href="/SAPITO/logistica/envios/altaEnvio?idventa=${envio.idOrdenVenta}">
                                            <i class="btn-default fa fa-fw fa-plus-circle "></i></a>                                            
                                            
                    </c:if>                                            
                </td>                                
                <td style="text-align: center;"><c:if test="${envio.idOrdenEnvio != 0}">                        
                        <a href="/SAPITO/logistica/pdfRecpcion?output=recepcion&idenvio=${envio.idOrdenEnvio}" target="_blank">
                            <i class="btn-default fa fa-fw fa-file-pdf-o     "></i></a>
                        </c:if>                     
                    

                </td>                                
                
                
                <td style="text-align: center;">
                                        <a href="#">
                                            <i class="btn-default fa fa-fw fa-search" 
                                               data-toggle="modal" data-target="#cts-modal${envio.idOrdenEnvio}"></i></a>
                </td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
            <!-- Modal dialog para detalles de empresas -->
                    <c:forEach items="${envios2}" var="envio">
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
                                                <input readonly="" value=${envio.horaEntrega} type='text' class="form-control" />
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
                                          <input readonly="" value="${envio.tiempoEntrega}"  path="tiempoEntrega" name="tiempoEntrega" id="fnoc-tiempoEntrega" type="text" class="form-control" />
                                            </div>
                                        </div>
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

                                        <a href="/SAPITO/logistica/envios/modificaEnvio?idOrdenEnvio=${envio.id}&idventa=${envio.ordenVenta.id}" data-toggle="modal">
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
