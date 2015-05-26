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
                <a href="operaciones"><i class="fa fa-fw fa-dashboard"></i> Operaciones</a>
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
                <a href="javascript:;" data-toggle="collapse" data-target="#ordenes-submenus">
                    <i class="fa fa-fw fa-folder-open"></i> Ordenes de Trabajo <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul id="ordenes-submenus" class="collapse">
                    <li id="nb-nvo">
                        <a href="AltaOrdenTrabajo"><i class="fa fa-fw fa-file-text-o"></i> Nueva Orden de Trabajo</a>
                    </li>
                    <li id="nb-lista">
                        <a href="AdminOrdenTrabajo"><i class="fa fa-fw fa-list-alt"></i> Administrar Ordenes de trabajo</a>
                    </li>
                    <li>                                        
                        <a href="BuscarOrdenTrabajo"><i class="fa fa-fw fa-upload"></i> Consulta Ordenes de Trabajo</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#estacion-submenus">
                    <i class="fa fa-fw fa-shekel"></i> Estaciones <i class="fa fa-fw fa-caret-down"></i>
                </a>
                <ul id="estacion-submenus" class="collapse">
                    <li id="nb">
                        <a href="AltaEstacion"><i class="fa fa-fw fa-file-text-o"></i> Nueva Estacion</a>
                    </li>
                    <li id="nb-lista-">
                        <a href="AdminEstaciones"><i class="fa fa-fw fa-list-alt"></i> Administrar Estaciones</a>
                    </li>
                    <li>                                        
                        <a href="BuscarEstacion"><i class="fa fa-fw fa-upload"></i> Consulta Estaciones</a>
                    </li>
                </ul>
            </li> 
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>
