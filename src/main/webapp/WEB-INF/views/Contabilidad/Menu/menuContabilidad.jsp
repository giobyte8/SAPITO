<%-- 
    Document   : menuProduccion
    Created on : 7/02/2015, 08:08:42 PM
    Author     : Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../Default/Modal/proximamente.jsp"%>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="operaciones">SAPito</a>
    </div>
    <!-- /.navbar-header -->
    <ul class="nav navbar-top-links navbar-right">       
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="modal" data-target="#proximamente">
                <i class="fa fa-bell fa-fw"></i><i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                            <span class="pull-right text-muted small">12 minutes ago</span>
                        </div>
                    </a>
                </li>                                                                                                
            </ul>
            <!-- /.dropdown-alerts -->
        </li>
        <!-- /.dropdown -->
        <li class="dropdown">
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

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">   
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
                        <li>
                            <a href="contabilidad/contaPresupuesto">Presupuestos</a>
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
                        <li>
                            <a href="../contabilidad/contaPresupuesto">Presupuestos</a>
                        </li>
                        
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>

