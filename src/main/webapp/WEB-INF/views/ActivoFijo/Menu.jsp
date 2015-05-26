<!-- Navigation -->
<%@include file="../Default/Modal/proximamente.jsp"%>
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
                <a class="navbar-brand" href="index.html">SAPito</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Solicitud <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="formularioSolicitudCorrecta"><i class="fa fa-sign-out fa-fw"></i> AF: Producto1, cantidad:2 </a>
                        </li>
                        <li>
                            <a href="formularioSolicitudErronea"><i class="fa fa-sign-out fa-fw"></i> AF: Producto2, cantidad:1 </a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-target="#proximamente">
                        <i class="fa fa-bell"></i> <b class="caret"></b>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Activo Fijo <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="activofijo"><i class="fa fa-building fa-fw"></i> Activo Fijo</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-exchange fa-fw"></i> Operaciones <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="alta">Alta de Activo Fijo</a>
                            </li>
                            <li>
                                <a href="consultar">Consultar Activo Fijo</a>
                            </li>
                            <li>
                                <a href="traslado">Traslado de Activo Fijo</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="reporteInversion"><i class="fa  fa-database fa-fw"></i> Reporte de inversi&oacute;n</a>
                    </li>
                    <li>
                        <a href="reporteDepreciacion"><i class="fa fa-calendar fa-fw"></i> Reporte de depreciaci&oacute;n</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>