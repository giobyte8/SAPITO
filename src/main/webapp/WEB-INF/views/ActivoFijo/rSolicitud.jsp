<%-- 
    Document   : indexactivofijo
    Created on : Feb 7, 2015, 3:15:33 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="resources/css/sapito.css">
    
    	<!-- Bootstrap Core CSS -->
	    <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet">

    	<!-- MetisMenu CSS -->
	    <link href="resources/css/libs/metisMenu.min.css" rel="stylesheet">

    	<!-- Custom CSS -->
	    <link href="resources/css/libs/sb-admin-2.css" rel="stylesheet">

    	<!-- Custom Fonts -->
	    <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">
    
        <title>SAPito</title>
    </head>
    <body>
    	<div id="wrapper">
		    <%@include file="Menu.jsp"%>

        	<!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Realizar Solicitud
                            </h1>                        
                        </div>
                    </div>        
					<center>
                    <div class="row">
                        <div class="col-lg-12 text-left" >
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <br/>                            
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title" >Datos</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left"> 
                                                <form action="gdaSolicitud" method="post">                                                                 
                                                    <div class="form-group ">
                                                        <label class="control-label" >Producto</label>
                                                        <select name="sProducto" class="form-control" required>
                                                        	<option value="">Selecciona Producto</option>
                                                			<option>Laptop Lenovo</option>
			                                            </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label" >Cantidad</label>
                                                        <input type="text" pattern="[0-9]{2}" title="Únicamente números enteros" name="cantidad" class="form-control" required  placeholder="Escribe n&uacute;mero">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                               
                                                    	<div class="form-group" style="text-align:right">
                                                        	<input type="reset" class="btn btn-primary" value="Cancelar">
                                                        	<input type="submit" class="btn btn-primary" value="Continuar">
	                                                    </div>  
                                 
                                                </form>
                                    <!--                          Fin Codigo Para panel 5 o menos input -->
                                </div>
                                <!--                      Fin TODO aqui abajo-->               
							</div>
						</div>
					</div>
                    </center>
				</div>
			</div>
		</div>
	    <!-- jQuery -->
    	<script src="resources/js/libs/jquery.min.js"></script>

	    <!-- Bootstrap Core JavaScript -->
    	<script src="resources/js/libs/bootstrap.min.js"></script>

	    <!-- Metis Menu Plugin JavaScript -->
    	<script src="resources/js/libs/metisMenu.min.js"></script>
    
	    <!-- Custom Theme JavaScript -->
    	<script src="resources/js/libs/sb-admin-2.js"></script>
    </body>
</html>
