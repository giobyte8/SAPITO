<%-- 
    Document   : inventariosNavs
    Created on : Feb 22, 2015, 9:19:52 PM
    Author     : R2R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
        <a class="navbar-brand" href="inventarios">SAPito</a>
    </div>

    <!-- Top Menu Items -->
    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
            <ul class="dropdown-menu alert-dropdown">
                <li>
                    <a href="#">Proximamente</span></a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Inventarios <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="#"><i class="fa fa-fw fa-user"></i> Usuario</a>
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
            <li>
                <a href="${pageContext.request.contextPath}/inventario/existencias"><i class="fa fa-list-alt fa-fw"></i> Checar existencias</a>
            </li>
            
            <li>
                <a href="${pageContext.request.contextPath}/inventario/buscarproducto" data-toggle="collapse" data-target="#demo1"><i class="fa fa-search fa-fw"></i> Buscar producto <span class="fa arrow"></span></a>
                
            </li>
            
            <li>
                <a href="javascript:" data-toggle="collapse" data-target="#demo1"><i class="fa fa-expand fa-fw"></i> Máximos y mínimos<span class="fa arrow"></span></a>
                <ul id="demo1" class="collapse">
                    <li>
                        <a href="${pageContext.request.contextPath}/inventario/maximoMinimoMateria">Materia prima</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/inventario/maximoMinProducto">Producto terminado</a>
                    </li>
                </ul>            
            </li>
            <li>
                <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class="fa fa-arrow-up fa-fw"></i>Alta nuevos productos<span class="fa arrow"></span></a>
                <ul id="demo2" class="collapse">
                    <li>
                        <a href="${pageContext.request.contextPath}/inventario/registrarMateriaPrima">Materia prima</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/inventario/nvoproducto">Producto terminado</a>
                    </li>
                </ul>            
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/inventario/bajaMateriaPrima"><i class="fa fa-fw fa-mail-forward"></i> Salida materia prima</a>
            </li>
        </ul>
    </div>
</nav>