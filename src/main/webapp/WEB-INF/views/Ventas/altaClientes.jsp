<%-- 
    Document   : altaClientes
    Created on : Feb 16, 2015, 8:44:33 PM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>

    <title>Ventas - Alta de clientes</title>
  </head>
  <body>

    <!-- Navigation bar -->
    <%@include file="ventasNavs.jsp" %>

    <!-- Código de la página -->
    <div id="page-wrapper">
      <div class="container-fluid">

        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Alta Clientes
            </h1>                        
          </div>
        </div>        

        <div class="row">
          <div class="col-lg-12 text-left">
            <div class="panel panel-default">
              <div class="panel-body">
                <br/>                            
                <div class="panel panel-primary">
                  <div class="panel-heading">
                    <h3 class="panel-title" >Datos Cliente </h3>
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-lg-6 text-left">                                                                                        
                        <div class="form-group ">
                          <label class="control-label" >Empresa</label>
                          <input type="text" class="form-control" placeholder="Ingrese Empresa">
                        </div>                                                                                       
                        <div class="form-group">
                          <label class="control-label" >Nombre Contacto</label>
                          <input type="text" class="form-control"  placeholder="Ingrese Nombre">
                        </div>      
                        <div class="form-group ">
                          <label class="control-label" >RFC</label>
                          <input type="text" class="form-control" placeholder="ingrese RFC">
                        </div>                                                                                       
                        <div class="form-group">
                          <label class="control-label" >Calle</label>
                          <input type="text" class="form-control"  placeholder="Ingrese Calle">
                        </div>      
                        <div class="form-group ">
                          <label class="control-label" >Numero interior</label>
                          <input type="text" class="form-control" placeholder="Ingrese Numero Interior">
                        </div>                                                                                       
                        <div class="form-group">
                          <label class="control-label" >Numero Exterior</label>
                          <input type="text" class="form-control"  placeholder="Ingrese Numerior Exterior">
                        </div>    
                        <div class="form-group ">
                          <label class="control-label" > Colonia</label>
                          <input type="text" class="form-control" placeholder="Ingrese Colonia">
                        </div>                                                                                       


                      </div>
                      <!-- ////////////////////////////////////////////////////////////////////7-->
                      <div class="col-lg-6 text-left">                                                                                        
                        <div class="form-group ">
                          <label class="control-label" >Codigo Postal</label>
                          <input type="text" class="form-control" placeholder="Ingrese Codigo Postal">
                        </div>        

                        <div class="form-group ">
                          <label class="control-label" >Municipio</label>
                          <input type="text" class="form-control" placeholder="Ingrese Municipio">
                        </div>                                                                                       
                        <div class="form-group">
                          <label class="control-label" >Estado</label>
                          <input type="text" class="form-control"  placeholder="Ingrese Estado">

                        </div>  
                        <div class="form-group ">
                          <label class="control-label" >Tel1</label>
                          <input type="text" class="form-control" placeholder="Ingrese Tel1">
                        </div>                                                                                       
                        <div class="form-group">
                          <label class="control-label" >Tel2</label>
                          <input type="text" class="form-control"  placeholder="Ingrese Tel2">
                        </div>  
                        <div class="form-group ">
                          <label class="control-label" >Email</label>
                          <input type="text" class="form-control" placeholder="Ingrese Email">
                        </div>
                        <div class="form-group ">
                          </br>
                          <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>


                      </div>
                      <!--    ////////////////////////////////////////////////////////////-->
                    </div>

                  </div>

                </div>
                <!--                          Fin Codigo Para panel 5 o menos input -->
              </div>
              <!--                      Fin TODO aqui abajo-->
            </div>  
          </div>
        </div><!--Fin del tag de fila-->

      </div><!-- Fin del tag del contenedor-->
    </div>

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>

  </body>
</html>
