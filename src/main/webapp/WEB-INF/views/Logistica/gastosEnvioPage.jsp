<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Gatos de envio</title>
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
                Gastos de envio
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
              <a href="/SAPITO/logistica/gastosEnvioN"><button class="btn btn-success" type="button">Agregar gasto</button></a>
          </div>
          <!-- Data table -->
          <br/><br/>
          <table id="tcamiones" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>                
                <!--<th>Cliente</th>-->
                <!--<th>Direccion</th>-->
                <th>Gasto Diesel</th>                
                <th>Gasto Alojamiento</th>
                <th>Gasto Casetas</th>                
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach items="${gastos}" var="gasto">
              <tr>                         
                  <!--<a href="/SAPITO/logistica/operadores" style="color: grey"><i class="fa fa-fw fa-eye"></i></a>-->
                  <td>${gasto.gastosEnvio}</td>                  
                <!--<a href="/SAPITO/logistica/operadores" style="color: grey"><i class="fa fa-fw fa-eye"></i></a>-->
                  <td>${gasto.gastosAlojamiento}</td>
                <td>${gasto.casetas}</td>                
                <!--<td>$800</td>-->                
                <!--<td>$900</td>-->                
                <td style="text-align: center;">
                                        <a href="#">
                                            <i class="btn-default fa fa-fw fa-search" 
                                               data-toggle="modal" data-target="#cts-modal${gasto.id}"></i></a>
                </td>
              </tr>                                          
                </c:forEach>
            </tbody>
          </table>
          <!--modal------------------------------------>
          
          <c:forEach items="${gastos}" var="gasto">
                        <div id="cts-modal${gasto.id}" class="modal fade" tabindex="-1" role="dialog" 
                             aria-labelledby="cliente-modal-title" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <!--cabecera--> 
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                                        </button>                
                                    </div>
                                    <!--fin de la cabecera-->
                                    <!--cuerpo-->
                                    <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Costos</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-gastosEnvio">Gastos de Envio </label>
                                                    <!--<input class="form-control" placeholder="Gastos de Diesel" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <input value="${gasto.gastosEnvio}" path="gastosEnvio" name="gastosEnvio"  type="text" class="form-control" />
                                                    
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-gastosAlojamiento">Alojamiento</label>
                                                    <!--<input class="form-control" placeholder="Alojamiento" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <input value="${gasto.gastosAlojamiento}" path="gastosAlojamiento" name="gastosAlojamiento" id="fnvoc-gastosAlojamiento" type="text" class="form-control"/>
                                                </div>
                                    </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-casetas">Costo de Casetas</label>
                                                    <!--<input class="form-control" placeholder="Costo del Transporte" onkeypress="return soloTexto(event);" maxlength="40" required>-->
                                                    <input value="${gasto.casetas}" path="casetas" name="casetas" id="fnvoc-casetas" type="text" class="form-control"/>
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
                                        <a href="/SAPITO/logistica/gastosenvio/bajaGastosEnvio?idGastosEnvio=${gasto.id}">
                                            <button class="btn btn-success" type="button">Elimniar</button>
                                        </a>

                                        <a href="/SAPITO/logistica/gastosenvio/modificaGastosEnvio?idGastosEnvio=${gasto.id}" data-toggle="modal">
                                            <button class="btn btn-success" type="button" >Actualizar</button>                                            
                                        </a>    
                                    </div>
                                    <!--fin pie -->
          </c:forEach>
        </div>
      </div>
    </div>
                                            
    <!-- Footer and scripts -->
    <%@include file="logisticaFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-camiones');
            $('#tcamiones').DataTable();
        });
    </script>
  </body>
</html>
