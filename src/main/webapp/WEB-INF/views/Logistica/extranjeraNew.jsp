<%-- 
    Document   : extranjeraNew
    Created on : 24/04/2015, 04:44:51 AM
    Author     : logistica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Alta Empresa</title>
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
                Nueva Empresa
              </h1>
            </div>
          </div>
          <!--formulario alta-->
          <form onsubmit="altaEmpresa()">
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos de la Empresa</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Nombre(s) de la Empresa</label>
                                                    <input class="form-control" placeholder="Nombre1(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Pais</label>
                                                    <input class="form-control" placeholder="Pais" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Ciudad</label>
                                                    <input class="form-control" placeholder="Ciudad" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Estado</label>
                                                    <input class="form-control" placeholder="Estado" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                            </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Calle</label>
                                                    <input class="form-control" placeholder="Calle" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>No.</label>
                                                    <input class="form-control" placeholder="No." onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Rfc</label>
                                                    <input class="form-control" placeholder="Rfc" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                            <label>Tipo de Empresa</label>
                                                <div class="form-group has-success input-group">
                                                    <select  id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa ">
                                                        <option>Nacional</option>
                                                        
                                                        <option>Extranjera</option>
                                                        
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
