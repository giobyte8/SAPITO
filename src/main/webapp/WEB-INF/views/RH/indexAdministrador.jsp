<%-- 
    Document   : indexAdministrador
    Created on : 16/02/2015, 02:22:08 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Menus/MenuJefeDepartamento.jsp"%>
        <link href="${pageContext.request.contextPath}/resources/css/rh/index.rh.css" rel="stylesheet">
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12" data-wow-delay="0.2s">
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                            <!-- Bottom Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#quote-carousel" data-slide-to="0" class="active"><img class="img-responsive " src="https://icons.iconarchive.com/icons/graphicloads/flat-finance/256/dollar-stats-icon.png" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="http://icons.iconarchive.com/icons/graphicloads/flat-finance/256/market-flow-icon.png" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="2"><img class="img-responsive" src="http://icons.iconarchive.com/icons/graphicloads/flat-finance/256/stat-icon.png" alt="">
                                </li>
                            </ol>

                            <!-- Carousel Slides / Quotes -->
                            <div class="carousel-inner text-center container-fluid">

                                <!-- Quote 1 -->
                                <div class="item active">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>No contrates a un hombre que hace el trabajo por dinero, sino el que lo hace por amor.</p>
                                                <small>Henry David Thoreau.</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 2 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>El mundo esta lleno de gente con voluntad, algunos con voluntad de trabajar, otros con voluntad de dejar trabajar.. </p>
                                                <small>Robert Frost.</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 3 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p>Querer hacer crecer una empresa sin hacer crecer a sus empleados es como querer construir un edificio resistente sin ladrillos</p>
                                                <small>Robert Frost.</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>

                            <!-- Carousel Buttons Next/Prev -->
                            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                            <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row user-menu-container square">
                    <div class="col-md-7 user-details">
                        <div class="row coralbg white">
                            <div class="col-md-6 no-pad">
                                <div class="user-pad">
                                    <h3>Bienvenido administrador</h3>                                
                                </div>
                            </div>
                            <div class="col-md-6 no-pad">
                                <div class="user-image">
                                    <img src="http://icons.iconarchive.com/icons/vargas21/aquave-metal/512/User-icon.png" class="img-responsive thumbnail">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1 user-menu-btns">
                        <div class="btn-group-vertical square" id="responsive">
                            <a href="#" class="btn btn-block btn-default active">
                                <i class="fa fa-bell-o fa-3x"></i>
                            </a>
                            <a href="#" class="btn btn-default">
                                <i class="fa fa-envelope-o fa-3x"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 user-menu user-pad">
                        <div class="user-menu-content active">
                            <h3>
                                Pendientes
                            </h3>
                            <ul class="user-menu-list">
                                <li>
                                    <h4><i class="fa fa-user coral"></i> Contratacion .</h4>
                                </li>
                                <li>
                                    <h4><i class="fa fa-clock-o coral"></i> Vacaciones.</h4>
                                </li>
                                <li>
                                    <h4><i class="fa fa-paperclip coral"></i> Reportes.</h4>
                                </li>
                                <li>
                                    
                                </li>
                            </ul>
                        </div>
                        <div class="user-menu-content">
                            <h3>
                                Cumpleaños del Mes
                            </h3>
                            <ul class="user-menu-list">
                                <li>
                                    <h4>Roberto Hernandez Gomez <small class="coral"> 01/Feb.</small></h4>
                                </li>
                                <li>
                                    <h4>Jesus Montes Cruz <small class="coral">15/Feb</small></h4>
                                </li>
                                <li>
                                    <h4>Samantha Flores Ruiz<small class="coral">21/Feb</small></h4>
                                </li>
                            </ul>
                        </div>
                        <div class="user-menu-content">
                            <h3>
                                Trending
                            </h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="view">
                                        <div class="caption">
                                            <p>47LabsDesign</p>
                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                        </div>
                                        <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                                    </div>
                                    <div class="info">
                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                    </div>
                                    <div class="stats turqbg">
                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="view">
                                        <div class="caption">
                                            <p>47LabsDesign</p>
                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                        </div>
                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                    </div>
                                    <div class="info">
                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                    </div>
                                    <div class="stats turqbg">
                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="user-menu-content">
                            <h2 class="text-center">
                                START SHARING
                            </h2>
                            <center><i class="fa fa-cloud-upload fa-4x"></i></center>
                            <div class="share-links">
                                <center><button type="button" class="btn btn-lg btn-labeled btn-success" href="#" style="margin-bottom: 15px;">
                                        <span class="btn-label"><i class="fa fa-bell-o"></i></span>A FINISHED PROJECT
                                    </button></center>
                                <center><button type="button" class="btn btn-lg btn-labeled btn-warning" href="#">
                                        <span class="btn-label"><i class="fa fa-bell-o"></i></span>A WORK IN PROGRESS
                                    </button></center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="Librerias/piegeneral.jsp"%>
        <script src="${pageContext.request.contextPath}/resources/js/rh/indexRh.js"></script>
    </body>
</html>
