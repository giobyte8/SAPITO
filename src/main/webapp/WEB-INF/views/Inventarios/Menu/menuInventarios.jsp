<%-- 
    Document   : menuInventarios
    Created on : Feb 14, 2015, 10:03:18 PM
    Author     : R2R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="inventarios">SAPITO</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> Usuario</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Ajustes</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                    	<li>
                        	<h6>Inventarios</h6>
                        </li>
                
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="#"> Control de existencias </a>
                        </li>
                        <li>
                            <a href="inventarios/checarInventarios"> Checar inventarios </a>
                        </li>
                        <li>
                            <a href="tables.html"> Agregar producto terminado </a>
                        </li>
                        <li>
                            <a href="forms.html"> Agregar meteria prima </a>
                        </li>
                        <li>
                            <a href="index.html"> Reportes de inventario </a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
             
            <!-- /.navbar-static-side -->
        </nav>
