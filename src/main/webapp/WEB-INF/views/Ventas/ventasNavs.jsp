<%-- 
    Document   : ventasHeader
    Created on : Feb 16, 2015, 10:21:56 PM
    Author     : giovanni
--%>

<!-- New navigation bars -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">SAPito</a>
  </div>
  
  <!-- Top Menu Items -->
  <ul class="nav navbar-right top-nav">
    <!-- Messages -->
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
      <ul class="dropdown-menu message-dropdown">
        <li class="message-preview">
          <a href="#">
            <div class="media">
              <span class="pull-left">
                <img class="media-object" src="http://placehold.it/50x50" alt="">
              </span>
              <div class="media-body">
                <h5 class="media-heading"><strong>Alejandro Medina</strong>
                </h5>
                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                <p>Lorem ipsum dolor sit amet, consectetur...</p>
              </div>
            </div>
          </a>
        </li>
        <li class="message-preview">
          <a href="#">
            <div class="media">
              <span class="pull-left">
                <img class="media-object" src="http://placehold.it/50x50" alt="">
              </span>
              <div class="media-body">
                <h5 class="media-heading"><strong>Alejandro Medina</strong>
                </h5>
                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                <p>Lorem ipsum dolor sit amet, consectetur...</p>
              </div>
            </div>
          </a>
        </li>
        <li class="message-preview">
          <a href="#">
            <div class="media">
              <span class="pull-left">
                <img class="media-object" src="http://placehold.it/50x50" alt="">
              </span>
              <div class="media-body">
                <h5 class="media-heading"><strong>Otro Alejandro</strong>
                </h5>
                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                <p>Lorem ipsum dolor sit amet, consectetur...</p>
              </div>
            </div>
          </a>
        </li>
        <li class="message-footer">
          <a href="#">Read All New Messages</a>
        </li>
      </ul>
    </li>
    
    <!-- Alerts -->
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
      <ul class="dropdown-menu alert-dropdown">
        <li>
          <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
        </li>
        <li>
          <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
        </li>
        <li>
          <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
        </li>
        <li>
          <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
        </li>
        <li>
          <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
        </li>
        <li>
          <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
        </li>
        <li class="divider"></li>
        <li>
          <a href="#">View All</a>
        </li>
      </ul>
    </li>
    
    <!-- User menu -->
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Giovanni Aguirre <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li>
          <a href="#"><i class="fa fa-fw fa-user"></i> Perfile</a>
        </li>
        <li>
          <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
        </li>
        <li class="divider"></li>
        <li>
          <a href="#"><i class="fa fa-fw fa-power-off"></i> Cerrar sesión</a>
        </li>
      </ul>
    </li>
  </ul>
  
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
      <li id="nb-dashboard" class="">
        <a href="/SAPITO/ventas"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
      </li>
      <li id="nb-clientes">
        <a href="/SAPITO/clientes"><i class="fa fa-fw fa-list-alt"></i> Clientes</a>
      </li>
      <li id="nb-vendedores">
        <a href="/SAPITO/vendedores"><i class="fa fa-fw fa-users"></i> Vendedores</a>
      </li>
      <li>
        <a href="javascript:;" data-toggle="collapse" data-target="#ventas-subviews">
          <i class="fa fa-fw fa-money"></i> Ventas <i class="fa fa-fw fa-caret-down"></i>
        </a>
        <ul id="ventas-subviews" class="collapse">
          <li id="nb-nvaorden">
            <a href="#"><i class="fa fa-fw fa-file-text"></i> Nueva orden de venta</a>
          </li>
          <li id="nb-histventas">
            <a href="#"><i class="fa fa-fw fa-line-chart"></i> Historial de ventas</a>
          </li>
          <li id="nb-ordenesp">
            <a href="/SAPITO/ordenes"><i class="fa fa-fw fa-truck"></i> Ordenes en producción</a>
          </li>
          <li id="nb-facturas">
            <a href="#"><i class="fa fa-fw fa-bank"></i> Facturas </a>
          </li>
          <li id="nb-ofertas">
            <a href="#"><i class="fa fa-fw fa-tags"></i> Ofertas </a>
          </li>
          <li id="nb-devoluciones">
            <a href="#"><i class="fa fa-fw fa-cubes"></i> Devoluciones</a>
          </li>
          <li id="nb-cambios">
            <a href="#"><i class="fa fa-fw fa-exchange"></i> Cambios</a>
          </li>
        </ul>
      </li>
    </ul>
  </div>
  <!-- /.navbar-collapse -->
</nav>
