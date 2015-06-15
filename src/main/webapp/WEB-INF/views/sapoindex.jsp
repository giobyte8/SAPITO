<%-- 
    Document   : sapoindex
    Created on : Feb 6, 2015, 1:40:36 AM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <title>Topicos Avanzados de Ingenieria</title>


    <link href="${pageContext.request.contextPath}/resources/css/indexSap" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

</head>

<body>
    <!-- Header -->

    <div class="container">



        <ul class="nav nav-pills nav-justified">
            <li data-target="recursoshumanos/recursoshumanos" data-slide-to="0" class="active"><a href="recursoshumanos/recursoshumanos">Recursos Humanos</a></li>
            <li data-target="#myCarousel" data-slide-to="1"><a href="/SAPITO/activofijo">Activo Fijo</a></li>
            <li data-target="#myCarousel" data-slide-to="2"><a href="contabilidad/">Contabilidad y Finanzas</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="operaciones">Operaciones</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="ventas/">Ventas</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="/SAPITO/Direccion/indexprincipal">Dirección</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="inventario">Inventarios</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="compras">Compras</a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="logistica/">Logistica</a></li>
        </ul>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <img  class="responsive-image"  src="http://www.semanticbits.com/wp-content/uploads/2014/04/stock-photo-25727276-business-concepts.jpg">
 
                </div><!-- End Item -->

            </div><!-- End Carousel Inner -->


        </div><!-- End Carousel -->
    </div>

</body>

</html>
