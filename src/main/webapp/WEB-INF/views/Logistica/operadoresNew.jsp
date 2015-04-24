<%-- 
    Document   : operadoresNew
    Created on : 24/04/2015, 03:01:47 AM
    Author     : logistica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Alta Operadores</title>
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
                Nuevo Operador
              </h1>
            </div>
          </div>
          <!--formulario alta-->
          <form onsubmit="altaOperador()">
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
                                                    <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Apellidos</label>
                                                    <input class="form-control" placeholder="Pais" onkeypress="return soloTexto(event);" maxlength="40" required>
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
                                                    <label>Dirección </label>
                                                    <input class="form-control" placeholder="Dirección" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Licencia</label>
                                                    <input class="form-control" placeholder="Licencia" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                            <label>Disponibilidad</label>
                                                <div class="form-group has-success input-group">
                                                    <select  id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa ">
                                                        <option>Disponible</option>
                                                        
                                                        <option>No Disponible</option>
                                                        
                                                    </select>
                                                    
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
