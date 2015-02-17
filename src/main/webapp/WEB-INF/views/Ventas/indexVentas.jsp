<%-- 
    Document   : indexVentas
    Created on : Feb 17, 2015, 4:33:38 AM
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
    
    <!-- Page Content -->
    <div id="page-wrapper">
      <div class="container-fluid">

        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Bienvenido
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

                      <!-- ////////////////////////////////////////////////////////////////////7-->





                      <div><img src="${pageContext.request.contextPath}/resources/img/proceso_ventas.jpg" /></div>
















                      <!--    ////////////////////////////////////////////////////////////-->
                    </div>

                  </div>

                </div>
                <!--    
                                                    Fin Codigo Para panel 5 o menos input 
                -->


                <div class="form-group ">
                  </br>
                  <button type="submit" class="btn btn-primary">Guardar</button>
                </div>



              </div>
              <!--                      Fin TODO aqui abajo-->
            </div>  
          </div>
        </div><!--Fin del tag de fila-->

      </div><!-- Fin del tag del contenedor-->
    </div>
    <!-- /#page-wrapper -->

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    
  </div>
</body>
</html>
