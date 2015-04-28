<%-- 
    Document   : transporteNew
    Created on : 24/04/2015, 04:20:51 AM
    Author     : logistica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Alta Transporte</title>
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
                Nuevo Transporte
              </h1>
            </div>
          </div>
          <!--formulario alta-->
          <form onsubmit="altaTransporte()">
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos del Transporte</h3>
                                    </div>
                                    <div class="panel-success">
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Empresa Perteneciente</label>
                                                    <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Placas</label>
                                                    <input class="form-control" placeholder="Placas" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                            </div>
                                        <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label>Dimensión</label>
                                                    <input class="form-control" placeholder="Dimensión" onkeypress="return soloTexto(event);" maxlength="40" required>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label>Costo por Dias</label>
                                                    <input class="form-control" placeholder="Costo por Dias" onkeypress="return soloTexto(event);" maxlength="40" required>
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
