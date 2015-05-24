<%-- 
    Document   : generarFactura
    Created on : Feb 17, 2015, 1:01:47 AM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>JSP Page</title>
  </head>
  <body>

    <!-- Navigation bar -->
    <%@include file="ventasNavs.jsp" %>

    <div id="page-wrapper">
      <div class="container-fluid">

        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Generar factura
            </h1>                        
          </div>
        </div>
        <div class="row">
          <input type="text" class="form-control" placeholder="Buscar cliente">
          <br/> <button class="btn btn-primary">Buscar</button> <br/><br/><br/>
        </div>

        <div class="row">
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title" > Datos de la empresa </h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-lg-6 text-left">                                                                                        
                  <div class="form-group ">
                    <label class="control-label" >Empresa</label>
                    <label class="form-control">Pepe y Toño</label>
                  </div>                                                                                       
                  <div class="form-group">
                    <label class="control-label" >Folio Fiscal</label>
                    <label class="form-control">12EPRO311D</label>
                  </div>      
                  <div class="form-group ">
                    <label class="control-label" >RFC</label>
                    <label class="form-control">PEPE347D9E9V9</label>
                  </div>                                                                                       
                  <div class="form-group">
                    <label class="control-label" >Fecha</label>
                    <label class="form-control">15 De Febrero del 2014</label>
                  </div>      
                  <div class="form-group ">
                    <label class="control-label" >Hora de emision</label>
                    <label class="form-control">16:24</label>
                  </div>                                                                                       
                  <div class="form-group">
                    <label class="control-label" >Numero Exterior</label>
                    <label class="form-control">12</label>
                  </div>    
                  <div class="form-group ">
                    <label class="control-label" > Colonia</label>
                    <label class="form-control">La ascuncion</label>
                  </div>  
                </div>


                <!-- ////////////////////////////////////////////////////////////////////7-->
                <div class="col-lg-6 text-left">                                                                                        
                  <div class="form-group ">
                    <label class="control-label" >Codigo Postal</label>
                    <label class="form-control">50290</label>
                  </div>        

                  <div class="form-group ">
                    <label class="control-label" >Municipio</label>
                    <label class="form-control">Metepec</label>
                  </div>                                                                                       
                  <div class="form-group">
                    <label class="control-label" >Estado</label>
                    <label class="form-control">Edo. de México</label>

                  </div>  
                  <div class="form-group ">
                    <label class="control-label" >Tel1</label>
                    <label class="form-control">722 456 12 65</label>
                  </div>                                                                                       
                  <div class="form-group">
                    <label class="control-label" >Tel2</label>
                    <label class="form-control"> ... ...</label>
                  </div>  
                  <div class="form-group ">
                    <label class="control-label" >Email</label>
                    <label class="form-control">soy.cliente@clientes.com</label>
                  </div>
                  <div class="form-group">
                    <label class="control-label">ID de venta a facturar</label>
                    <input type="text" class="form-control" placeholder="Ingrese el ID de la venta">
                  </div>
                  <div class="form-group text-right">
                    </br>
                    <button type="submit" class="btn btn-primary btn-lg">Generar factura</button>
                  </div>


                </div>
                <!--    ////////////////////////////////////////////////////////////-->
              </div>

            </div>

          </div>
        </div>

      </div>
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>

  </body>
</html>
