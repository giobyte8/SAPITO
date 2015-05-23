<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
prueba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Logistica</title>
  </head>
  <body>
    <div id="wrapper">
      
      <!-- Navigation bar -->
      <%@include file="logisticaNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page header -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Bienvenido a Logistica de ventas
              </h1>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-3 col-md-6">
              <div class="panel panel-primary">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-3">
                      <i class="fa fa-comments fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                      <div class="huge">26</div>
                      <div>New Comments!</div>
                    </div>
                  </div>
                </div>
                <a href="#">
                  <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="panel panel-green">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-3">
                      <i class="fa fa-tasks fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                      <div class="huge">12</div>
                      <div>New Tasks!</div>
                    </div>
                  </div>
                </div>
                <a href="#">
                  <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="panel panel-yellow">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-3">
                      <i class="fa fa-shopping-cart fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                      <div class="huge">124</div>
                      <div>New Orders!</div>
                    </div>
                  </div>
                </div>
                <a href="#">
                  <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="panel panel-red">
                <div class="panel-heading">
                  <div class="row">
                    <div class="col-xs-3">
                      <i class="fa fa-support fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                      <div class="huge">13</div>
                      <div>Support Tickets!</div>
                    </div>
                  </div>
                </div>
                <a href="#">
                  <div class="panel-footer">
                    <span class="pull-left">View Details</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                  </div>
                </a>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> 
                    Ventas del dia
                  </h3>
                </div>
                <div class="panel-body">
                  <div id="morris-area-chart"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="panel panel-danger">
            <div class="panel-heading">
              Mensaje de alerta
            </div>
            <div class="panel-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
              </p>
              <button class="btn btn-primary">Detalles</button>
            </div>
          </div>

        </div> <!-- .container-fluid -->
      </div> <!-- .page-wrapper -->
    </div> <!-- .wrapper -->

    
    <!-- Footer and scripts -->
    <%@include file="logisticaFooter.jsp" %>
    
    <script type="text/javascript">
      $(document).ready(function() {
         activatenb('nb-dashboard');
      });
    </script>
  </body>
</html>
