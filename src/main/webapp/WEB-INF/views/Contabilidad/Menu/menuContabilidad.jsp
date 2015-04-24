<%-- 
    Document   : menuProduccion
    Created on : 7/02/2015, 08:08:42 PM
    Author     : Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Default/Modal/proximamente.jsp"%>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="Contabilidad">SAPito</a>
    </div>
    <!-- /.navbar-header -->
    <ul class="nav navbar-right top-nav">       
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" data-target="#proximamente">
                <i class="fa fa-envelope"></i><b class="caret"></b>
            </a>
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
                <li class="divider"></li>
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
            </ul>
            <!-- /.dropdown-alerts -->
        </li>
        <!-- /.dropdown -->
        <li class="message-footer">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> Contabilidad y Finanzas <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                                
                <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

       <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">   
                <%
                    if (request.getAttribute("javax.servlet.forward.request_uri").equals("/SAPITO/contabilidad")) {
                %>

                <li>
                    <a href="contabilidad"><i class="fa fa-dashboard fa-fw"></i> Contabilidad y Finanzas</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Contabilidad<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="contabilidad/contaVentas">Reporte Ventas</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaCompras">Reporte Compras</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaRH">Reporte Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaActivoFijo">Reporte Activos Fijos</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaAlmacen">Reporte Inventarios</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaDireccion">Reporte Dirección</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaInformes"> Informes</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-wrench fa-fw"></i>Finanzas<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                         <!--<li>
                            <a href="contabilidad/contaPresupuesto">Presupuesto Area</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaPresupuestos">Presupuestos Usuarios</a>
                        </li>
                        <li>
                            <a href="contabilidad/contaCatalogo">Catalogo de Cuentas</a>
                        </li>-->
                        <li>
                            <a href="contabilidad/contaMoneda">Moneda</a>
                        </li>
                    </ul>
                </li>
                <%
                } else {
                %>
                <li>
                    <a href="../contabilidad"><i class="fa fa-dashboard fa-fw"></i> Contabilidad y Finanzas</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Contabilidad<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="../contabilidad/contaVentas">Reporte Ventas</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaCompras">Reporte Compras</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaRH">Reporte Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaActivoFijo">Reporte Activos Fijos</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaAlmacen">Reporte Inventarios</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaDireccion">Reporte Direccion</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaInformes"> Informes</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-wrench fa-fw"></i>Finanzas<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                       <!-- <li>
                            <a href="../contabilidad/contaPresupuesto">Presupuesto Area</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaPresupuestos">Presupuestos Usuarios</a>
                        </li>
                        <li>
                            <a href="../contabilidad/contaCatalogo">Catalogo de Cuentas</a>
                        </li>-->
                        <li>
                            <a href="../contabilidad/contaMoneda">Moneda</a>
                        </li>
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
   
    <!-- /.navbar-static-side -->
</nav>

