<%-- 
    Document   : altaEmpresa
    Created on : 26/02/2015, 11:24:45 AM
    Author     : logistica
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
          
             <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos de la Empresa</h3>
                                    </div>                                                                        
                                    <!--Inicio formulario-->
                                    <%
                            if (request.getAttribute("modificar") != null) 
                            {

                                    if (request.getAttribute("modificar").equals("1")) {
                                        %>
                                        
                                        <form:form id="fnvo-empresaTransporte" 
                                                   commandName="empresaTransporte" action="modificaEmpresa" method="POST">


                                        <div class="panel-success">
                                            <div class="col-lg-6 text-left">


                                                <div class="form-group has-success">
                                                    <label for="fnvoc-nombreEmpresa">Nombre(s) de la Empresa</label>                                                
                                                    <form:input  value="${empresaTransporte.nombreEmpresa}" path="nombreEmpresa" name="nombreEmpresa" id="fnoc-nombreEmpresa" type="text" class="form-control" placeholder="Nombe de la empresa"/>
                                                    <form:errors path="nombreEmpresa" element="div" class="alert-danger pad-10" />
                                                </div>

                                                <div class="form-group has-success">
                                                    <label for="fnvoc-pais">Pais</label>                                                
                                                    <form:input value="${empresaTransporte.pais}" path="pais" name="pais" id="fnoc-pais" type="text" class="form-control" placeholder="Pais"/>
                                                    <form:errors path="pais" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-ciudad">Ciudad</label>                                                
                                                    <form:input value="${empresaTransporte.ciudad}" path="ciudad" name="ciudad" id="fnoc-ciudad" type="text" class="form-control" placeholder="Ciudad"/>
                                                    <form:errors path="ciudad" element="div" class="alert-danger pad-10" />
                                                </div>                                            
                                            </div>
                                            <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-calle">Calle</label>                                                
                                                    <form:input value="${empresaTransporte.calle}" path="calle" name="calle" id="fnoc-calle" type="text" class="form-control" placeholder="Calle"/>
                                                    <form:errors path="calle" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-numero">Numero</label>                                                
                                                    <form:input  value="${empresaTransporte.numero}" path="numero" name="numero" id="fnoc-numero" type="text" class="form-control" placeholder="Numero"/>
                                                    <form:errors path="numero" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-rfc">RFC</label>                                                
                                                    <form:input value="${empresaTransporte.rfc}" path="rfc" name="rfc" id="fnoc-rfc" type="text" class="form-control" placeholder="RFC"/>
                                                    <form:errors path="rfc" element="div" class="alert-danger pad-10" />
                                                </div>
                                                
                                                <label for="fnvoc-tipo">Tipo empresa</label>                                                

                                                <select class="form-control" path="tipo" name="tipo" id="fnoc-tipo" type="text">
                                                    <option value="true">Nacional</option>
                                                    <option value="false">Extranjera</option>                                                    
                                                </select>                                                                                                
                                                <input value="${empresaTransporte.id}" path="id" name="id" id="fnoc-id" type="hidden" class="form-control" />
                                                <input value="${empresaTransporte.status}" path="status" name="status" id="fnoc-status" type="hidden" class="form-control" />
                                                <br>    
                                                <div align="right">
                                                    <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                                </div>
                                            </div>
                                        </div>

                                    </form:form>
                                    <!--fin formulario-->
                                        
                                        
                                        <%
                                    }
                             }else
                            {
                              %>
                              
                              <form:form id="fnvo-empresaTransporte" commandName="empresaTransporte" action="altaEmpresa" method="POST">


                                        <div class="panel-success">
                                            <div class="col-lg-6 text-left">


                                                <div class="form-group has-success">
                                                    <label for="fnvoc-nombreEmpresa">Nombre(s) de la Empresa</label>                                                
                                                    <form:input  path="nombreEmpresa" name="nombreEmpresa" id="fnoc-nombreEmpresa" type="text" class="form-control" placeholder="Nombe de la empresa"/>
                                                    <form:errors path="nombreEmpresa" element="div" class="alert-danger pad-10" />
                                                </div>

                                                <div class="form-group has-success">
                                                    <label for="fnvoc-pais">Pais</label>                                                
                                                    <form:input  path="pais" name="pais" id="fnoc-pais" type="text" class="form-control" placeholder="Pais"/>
                                                    <form:errors path="pais" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-ciudad">Ciudad</label>                                                
                                                    <form:input  path="ciudad" name="ciudad" id="fnoc-ciudad" type="text" class="form-control" placeholder="Ciudad"/>
                                                    <form:errors path="ciudad" element="div" class="alert-danger pad-10" />
                                                </div>                                            
                                            </div>
                                            <div class="col-lg-6 text-left">
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-calle">Calle</label>                                                
                                                    <form:input  path="calle" name="calle" id="fnoc-calle" type="text" class="form-control" placeholder="Calle"/>
                                                    <form:errors path="calle" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-numero">Numero</label>                                                
                                                    <form:input  path="numero" name="numero" id="fnoc-numero" type="text" class="form-control" placeholder="Numero"/>
                                                    <form:errors path="numero" element="div" class="alert-danger pad-10" />
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="fnvoc-rfc">RFC</label>                                                
                                                    <form:input  path="rfc" name="rfc" id="fnoc-rfc" type="text" class="form-control" placeholder="RFC"/>
                                                    <form:errors path="rfc" element="div" class="alert-danger pad-10" />
                                                </div>
                                                
                                                <label for="fnvoc-tipo">Tipo empresa</label>                                                

                                                <select class="form-control" path="tipo" name="tipo" id="fnoc-tipo" type="text">
                                                    <option value="true">Nacional</option>
                                                    <option value="false">Extranjera</option>                                                    
                                                </select>                                                                                                
                                                <br>    
                                                <div align="right">
                                                    <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                                </div>
                                            </div>
                                        </div>

                                    </form:form>
                                    <!--fin formulario-->
                              
                              <%
                            }

                        %>                
                                    
                                    
                                    

                                    
                                </div>
                            </div>
                        </div> 
          <!--fin formulario alta-->
          
        </div>
      </div>
        </div>
      <%@include file="logisticaFooter.jsp" %>
    </body>
</html>
