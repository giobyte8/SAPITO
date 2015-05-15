<%-- 
    Document   : menuOperacionesEmpleado
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

        <!-- User menu -->
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Operaciones <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="indexMain"><i class="fa fa-fw fa-power-off"></i> Cerrar sesi&oacute;nn</a>
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
                <a href="#"><i class="fa fa-fw fa-cogs"></i> Producci&oacute;n <span class="fa fa-caret-down"></span></a>
                <ul class="nav nav-second-level">                    
                </ul>
                <ul id="clientes-submenus" class="collapse">
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Lineas de Producci&oacute;n</a>
                    </li>
                </ul>               
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-cogs"></i> Ordenes de Trabajo <span class="fa fa-caret-down"></span></a>
                <ul class="nav nav-second-level">                    
                </ul>
                <ul id="clientes-submenus" class="collapse">
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Lineas de Producci&oacute;n</a>
                    </li>
                </ul>
            <li>
                <a href="#"><i class="fa fa-fw fa-cogs"></i> Estaciones <span class="fa fa-caret-down"></span></a>
                <ul class="nav nav-second-level">                    
                </ul>
                <ul id="clientes-submenus" class="collapse">
                    <li>                                        
                        <a href="BuscarLineaProduccion"><i class="fa fa-fw fa-upload"></i> Consulta Estaciones</a>
                    </li>
                </ul>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>
