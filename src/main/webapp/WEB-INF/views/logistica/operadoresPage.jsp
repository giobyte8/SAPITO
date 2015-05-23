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
    <title>SAPito - Operadores</title>
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
                Operadores
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <%
                            if (request.getAttribute("imprime") != null) {

                                if (request.getAttribute("imprime").equals("1")) {

                        %>                
                        <div class="alert alert-success" role="alert" style="text-align: center">Registro exitoso</div>
                        <%  }else
                                {
                                    %>
                        <div class="alert alert-success" role="alert" style="text-align: center">Modificacion Exitosa</div>            
                                    <%
                                }
                                
                            }
                        %>
            <a href="/SAPITO/logistica/altaOperador"><button class="btn btn-success" type="button">Nuevo operador</button></a>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="toperadores" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Nombre</th>  
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Numero Licencia</th>
                <th>Detalles</th>
              </tr>
            </thead>
            <tbody >
                
              <c:forEach items="${conductores}" var="conductor">
                  <tr>                                                    
                      <td>${conductor.nombre}</td>                                
                      <td>${conductor.apellidoPaterno}</td>                                
                      <td>${conductor.apellidoMaterno}</td>                                
                      <td>${conductor.licencia}</td>                                                                            
                      <td style="text-align: center;"><a href="#">
                              <i class="btn-default fa fa-fw fa-search" 
                                 data-toggle="modal" data-target="#cts-modal${conductor.id}"></i></a></td>
                  </tr>                             
              </c:forEach>                
              
            </tbody>
          </table>

          
          
          <!-- Modal dialog para detalles de clientes -->
    <c:forEach items="${conductores}" var="conductor">
        <div id="cts-modal${conductor.id}" class="modal fade" tabindex="-1" role="dialog" 
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
                <div class="modal-body">
                
                    
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos Personales</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group has-success">
                                            <label>Nombre(s) </label>
                                            <input class="form-control" readonly="" value="${conductor.nombre}" placeholder="Nombre(s)"  maxlength="40" required>
                                        </div>
                                        <div class="form-group has-success">
                                            <label>Apellido Paterno</label>
                                            <input class="form-control" readonly="" value="${conductor.apellidoPaterno}" maxlength="40" required>
                                        </div>                                        
                                        <div class="form-group has-success">
                                            <label>Apellido Materno</label>
                                            <input class="form-control" readonly="" value="${conductor.apellidoMaterno}" maxlength="40" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div> 
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos de Referencia y Documentos</h3>
                                </div>
                                <div class="panel-success">
                                    <div class="col-lg-6 text-left">                                                
                                        <div class="form-group has-success">
                                            <label>Licencia</label>
                                            <input class="form-control" readonly=""  value="${conductor.licencia}" maxlength="40" required>
                                        </div>
                                        <div class="form-group has-success">
                                            <label>Pago por dia</label>
                                            <input class="form-control" readonly=""  value="${conductor.pagoDia}" maxlength="40" required>
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fnvoc-tipo">Disponible</label>                                                
                                            <c:if test="${conductor.disponibleConductor = true}">
                                                <input value="Si" readonly="" path="tipo" name="tipo" id="fnoc-tipo" type="text" class="form-control" placeholder="tipo"/>
                                            </c:if>                                            
                                            <c:if test="${conductor.disponibleConductor = false}">
                                                <input value="No" readonly="" path="tipo" name="tipo" id="fnoc-tipo" type="text" class="form-control" placeholder="tipo"/>
                                            </c:if>                                                
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
                  
                  <a href="/SAPITO/logistica/bajaOperador?id=${conductor.id}">
                      <button class="btn btn-success" type="button">Elimniar</button>
                  </a>

                  <a href="/SAPITO/logistica/modificaOperador?id=${conductor.id}" data-toggle="modal">
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
            activatenb('nb-operadores');
            $('#toperadores').DataTable();
        });
    </script>
  </body>
>>>>>>> origin/master
</html>
