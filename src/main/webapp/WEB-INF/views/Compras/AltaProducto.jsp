<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->


    </head>

    <body>

        <div id="wrapper">

            <%@include file="MenusCompras/Menude compras.jsp"%>
            <!-- Page Content -->
            <form:form id="nvo-producto" commandName="producto" action="AltaProducto" method="POST"><
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Alta Producto
                                </h1>                    
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-body">
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos  Producto</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">

                                                            <br/><label for="nvo-nombre" class="control-label">Nombre</label>
                                                            <form:input path="nombreProducto" name="nombreProducto" type="text" class="form-control" 
                                                                        id="nvo-nombre" placeholder="Nombre" />
                                                            <form:errors path="nombreProducto" element="div" class="alert-danger pad-10" />

                                                        </div>
                                                        <div class="form-group ">
                                                            <br/><label for="nvo-descripcion" class="control-label">Descripcion</label>
                                                            <form:input path="descripcion" name="descripcion" type="text" class="form-control" 
                                                                        id="nvo-descripcion" placeholder="Descripcion" />
                                                            <form:errors path="descripcion" element="div" class="alert-danger pad-10" />

                                                        </div>
                                                        <div class="form-group ">
                                                            <br/><label for="nvo-marca" class="control-label">Marca</label>
                                                            <form:input path="marca" name="marca" type="text" class="form-control" 
                                                                        id="nvo-marca" placeholder="Marca" />
                                                            <form:errors path="marca" element="div" class="alert-danger pad-10" />

                                                        </div>
                                                        <div class="form-group ">

                                                            <br/><label for="nvo-categoria" class="control-label">Categoria</label>
                                                            <form:select id="nvo-categoria" path="categoria" items="${selectCategoria}">
                                                            </form:select> 
                                                        </div>  



                                                        <!--Fin  inputs    /!-->
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->


                                                         

                                                    </div>
                                                </div>     

                                            </div>
                                        </div>
                                        <div class="row">
                                            <input type="submit" value="Aceptar" class="btn btn-success  col-md-offset-11"  role="button">

                                        </div> 

                                    </div>                        
                                </div>  
                            </div>
                        </div><!--Fin del tag de fila-->
                    </div><!-- Fin del tag del contenedor-->
                </div>
                <!-- /#page-wrapper -->
            </form:form>

        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="resources/js/libs/metisMenu.min.js"></script>
        <script type="text/javascript" src="resources/js/compras/jscompras.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>
        <%@include file="MenusCompras/Pie compras.jsp"%>

    </body>

</html>
