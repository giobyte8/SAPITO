<!-- Navigation -->
<%@include file="../Default/Modal/proximamente.jsp"%>
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">SAPito</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="modal" data-target="#proximamente">
                			<i class="fa fa-bell fa-fw"></i><i class="fa fa-caret-down"></i>
            			</a>
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  Activo Fijo <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            
                            <li>
                                <a href="activofijo"><i class="fa fa-building fa-fw"></i> Activo Fijo</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-exchange fa-fw"></i> Operaciones<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="alta">Alta de Activo Fijo</a>
                                    </li>
                                    <li>
                                        <a href="asignar">Asignar Activo Fijo</a>
                                    </li>
                                    <li>
                                        <a href="consultar">Consultar Activo Fijo</a>
                                    </li>
                                    <li>
                                        <a href="traslado">Traslado de Activo Fijo</a>
                                    </li>                                  
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="rSolicitud"><i class="fa  fa-file-text  fa-fw"></i> Realizar Solicitud</a>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="existencia"><i class="fa  fa-database fa-fw"></i> Existencias en Almac&eacute;n</a>
                            </li>
                            <li>
                                <a href="historial"><i class="fa fa-calendar fa-fw"></i> Historial de Traslados</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

