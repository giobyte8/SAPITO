<%-- 
    Document   : menuOperacionesJefeO
    Created on : 12/05/2015, 01:26:18 AM
    Author     : zgm_e_000
--%>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="operaciones">SAPito</a>
    </div>

    <!-- Top Menu Items -->
    <ul class="nav navbar-right top-nav">
        <!-- Messages -->
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>

        </li>

        <!-- Alerts -->
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>

        </li>
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
                                <h5 class="media-heading"><strong>Otros </strong>
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
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Operaciones <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
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

    <!--Menu derecho de links--> 
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav"  id="side-menu">
            <li id="nb-dashboard" class="">
                <a href="operaciones"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#produccion-submenus">
                    <i class="fa fa-fw fa-cogs"></i> Producci&oacute;n <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul id="produccion-submenus" class="collapse">
                    <li id="nb-menuProd">
                        <a href="AltaLineaProduccionJO"><i class="fa fa-fw fa-file-text-o"></i> Nueva Linea de Producci&oacute;n</a>
                    </li>
                    <li id="nb-listaProd">
                        <a href="AdministrarLineasProduccion"><i class="fa fa-fw fa-list-alt"></i> Administrar Lineas de Producci&oacute;n</a>
                    </li>
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Lineas de Producci&oacute;n</a>
                    </li>
                </ul>               
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#produccion-submenus">
                    <i class="fa fa-fw fa-folder-open"></i> Ordenes de Trabajo <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul id="clientes-submenus" class="collapse">
                    <li id="nb-nvo">
                        <a href="AltaOrdenTrabajo"><i class="fa fa-fw fa-file-text-o"></i> Nueva Orden de Trabajo</a>
                    </li>
                    <li id="nb-lista">
                        <a href="AdminOrdenTrabajo"><i class="fa fa-fw fa-list-alt"></i> Administrar Ordenes de trabajo</a>
                    </li>
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Lineas de Producci&oacute;n</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#produccion-submenus">
                    <i class="fa fa-fw fa-shekel"></i> Estaciones <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul id="clientes-submenus" class="collapse">
                    <li id="nb">
                        <a href="AltaEstacion"><i class="fa fa-fw fa-file-text-o"></i> Nueva Estacion</a>
                    </li>
                    <li id="nb-lista-">
                        <a href="AdminEstaciones"><i class="fa fa-fw fa-list-alt"></i> Administrar Estaciones</a>
                    </li>
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Estaciones</a>
                    </li>
                </ul>
            </li> 
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>
