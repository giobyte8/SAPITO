<%-- 
    Document   : menuProduccion
    Created on : 7/02/2015, 08:08:42 PM
    Author     : Edgar
--%>
!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet" type="text/css">

<!-- Morris css -->
<link href="${pageContext.request.contextPath}/resources/css/libs/morris.css" rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Datatables css -->
<link href="${pageContext.request.contextPath}/resources/css/libs/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

<!-- Sweetalert css -->
<link href="${pageContext.request.contextPath}/resources/css/libs/sweet-alert.css" rel="stylesheet" type="text/css">

<!-- SAPITO css -->
<link href="${pageContext.request.contextPath}/resources/css/sapito.css" rel="stylesheet" type="text/css">

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
        <a class="navbar-brand" href="${pageContext.request.contextPath}/contabilidad">SAPito</a>
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
                    <a href="javascript:;" data-toggle="collapse" data-target="#conta-submenus"> Contabilidad<span class="fa arrow"></span></a>
                    <ul id="conta-submenus" class="collapse">
                       <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaVentas">Cuenta Ventas</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCompras">Cuenta Compras</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaRH">Cuenta Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaActivoFijo">Cuenta Activos Fijos</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaAlmacen">Cuenta Inventarios</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaDireccion">Cuenta Dirección</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaFinanzas">Cuenta Finazas</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaOperaciones">Cuenta Operaciones</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaLogistica">Cuenta Logistica</a>
                        </li>
                      
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaInformes"> Informes</a>
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
                        </li>-->
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCrearCuenta">Nueva Cuenta Bancaria</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCrearPago">Nuevo Pago</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaMoneda">Moneda</a>
                        </li>
                    </ul>
                </li>
                <%
                } else {
                %>
                <li>
                    <a href="${pageContext.request.contextPath}/contabilidad"><i class="fa fa-dashboard fa-fw"></i> Contabilidad y Finanzas</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Contabilidad<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                       
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaVentas">Cuenta Ventas</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCompras">Cuenta Compras</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaRH">Cuenta Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaActivoFijo">Cuenta Activos Fijos</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaAlmacen">Cuenta Inventarios</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaDireccion">Cuenta Dirección</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaFinanzas">Cuenta Finazas</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaOperaciones">Cuenta Operaciones</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaLogistica">Cuenta Logistica</a>
                        </li>
                      
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaInformes"> Reportes</a>
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
                        -->
                         <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCrearCuenta">Nueva Cuenta Bancaria</a>
                        </li>
                         <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaCrearPago">Nuevo Pago</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/contabilidad/contaMoneda">Moneda</a>
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

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

<!-- Raphael js -->
<script src="${pageContext.request.contextPath}/resources/js/libs/raphael-min.js"></script>

<!--script src="${pageContext.request.contextPath}/resources/js/libs/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/libs/morris-data.js"></script-->

<!-- Datatables js -->
<script src="${pageContext.request.contextPath}/resources/js/libs/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/libs/dataTables.bootstrap.min.js"></script>

<!-- Sweetalert js -->
<script src="${pageContext.request.contextPath}/resources/js/libs/sweet-alert.min.js"></script>

<!-- Ventas js -->
<script src="${pageContext.request.contextPath}/resources/js/ventas/ventas.js"></script>