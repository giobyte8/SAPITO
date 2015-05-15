<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : Monse
--%>
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


    </head>

    <body>

        <div id="wrapper">

            <%@include file="MenusCompras/Menude compras.jsp"%>
            <form:form id="nuv-proveedor" commandName="proveedor" action="altaproveedor" method="POST">
                <!-- Page Content -->
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Alta Proveedor
                                </h1>                        
                            </div>
                        </div>        

                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                        
                                        <br/>                            
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de la Empresa</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">
                                                            <label for="alp-empresa">Empresa</label>
                                                            <form:input path="empresa" name="empresa" id="empresaC" type="text" class="form-control"  
                                                                        placeholder="Empresa" />
                                                            <form:errors path="empresa" element="div" class="alert-danger pad-10" />
                                                        </div>

                                                        <div class="form-group ">
                                                            <label for="alp-pais" class="control-label">País</label>
                                                            <form:input path="pais" name="pais" type="text" class="form-control" 
                                                                        id="paisC" placeholder="País" />
                                                            <form:errors path="pais" element="div" class="alert-danger pad-10" />
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="fnvoc-edo">Estado</label>
                                                            <form:input path="estado" name="estado" id="fnvoc-edo"
                                                                        type="text" class="form-control" />
                                                            <form:errors path="estado" element="div" class="alert-danger pad-10" />
                                                        </div>

                                                        <div class="form-group ">
                                                            <label for="alp-mun" class="control-label">Municipio</label>
                                                            <form:input path="municipio" name="municipio" type="text" class="form-control" 
                                                                        id="municipioC" placeholder="Municipio" />
                                                            <form:errors path="municipio" element="div" class="alert-danger pad-10" />
                                                        </div>

                                                        <div class="form-group ">
                                                            <label for="alp-col" class="control-label">Colonia</label>
                                                            <form:input path="colonia" name="colonia" type="text" class="form-control" 
                                                                        id="coloniaC" placeholder="Colonia" />
                                                            <form:errors path="colonia" element="div" class="alert-danger pad-10" />
                                                        </div>

                                                        <div class="form-group ">
                                                            <label for="alp-calle" class="control-label">Calle</label>
                                                            <form:input path="calle" name="calle" type="text" class="form-control" 
                                                                        id="calleC" placeholder="Calle" />
                                                            <form:errors path="calle" element="div" class="alert-danger pad-10" />
                                                        </div>
                                                    </div>


                                                    <div class="col-lg-6 text-left">                                                        
                                                        <div class="form-group ">                                                            
                                                            <div class="form-group ">
                                                                <label for="alp-numint" class="control-label">Número Interior</label>
                                                                <form:input path="numeroI" name="numeroI" type="text" class="form-control" id="numextC" 
                                                                            placeholder="Número Interior" />
                                                                <form:errors path="numeroI" element="div" class="alert-danger pad-10" />
                                                            </div>

                                                            <div class="form-group ">
                                                                <label for="alp-numext" class="control-label">Número Exterior</label>
                                                                <form:input path="numeroE" name="numeroE" type="text" class="form-control" id="numintC" 
                                                                            placeholder="Número Exterior" />
                                                                <form:errors path="numeroE" element="div" class="alert-danger pad-10" />
                                                            </div>

                                                            <div class="form-group ">
                                                                <label for="alp-cp" class="control-label">Código Postal</label>
                                                                <form:input path="cp" name="cp" type="text" class="form-control" id="cpC" 
                                                                            placeholder="Código Postal" />
                                                                <form:errors path="cp" element="div" class="alert-danger pad-10" />
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="alp-rfc" class="control-label" >RFC</label>
                                                                <form:input path="rfc" name="rfc" type="text" class="form-control" id="rfcC" 
                                                                            placeholder="RFC" />
                                                                <form:errors path="rfc" element="div" class="alert-danger pad-10" />
                                                            </div>

                                                            <div class="form-group ">
                                                                <label for="alp-tel1" class="control-label">Teléfono</label>
                                                                <form:input path="telefono1" name="telefono1" type="text" class="form-control" id="telefono1C" 
                                                                            placeholder="Teléfono" />
                                                                <form:errors path="telefono1" element="div" class="alert-danger pad-10" />
                                                            </div>                                                           
                                                        </div>

                                                        <div class="form-group ">
                                                            <label for="alp-email" class="control-label">Correo</label>
                                                            <form:input path="email" name="email" type="email" class="form-control" id="emailC" 
                                                                        placeholder="Correo" />
                                                            <form:errors path="email" element="div" class="alert-danger pad-10" />
                                                        </div>



                                                        <!--Fin  inputs/!-->
                                                    </div>                                                    
                                                </div>                                                 
                                            </div>
                                        </div> 
                                        <div class="panel panel-green">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos Contacto</h3>
                                            </div>
                                            <div class="panel-body">
                                                <!-- Fila de inputs/!-->
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group ">
                                                            <label for="nombre" class="control-label">Nombre</label>
                                                            <form:input path="nombreContacto" name="nombreContacto" type="text" class="form-control" 
                                                                        id="nombreCC" placeholder="Nombre" />
                                                            <form:errors path="nombreContacto" element="div" class="alert-danger pad-10" />
                                                        </div>
                                                        <div class="form-group ">
                                                            <label for="alp-apm" class="control-label">Apellido Materno</label>
                                                            <form:input path="apellidoMaternoContacto" name="apellidoMaternoContacto" type="text" class="form-control" id="apMC" 
                                                                        placeholder="Apellido Materno" />
                                                            <form:errors path="apellidoMaternoContacto" element="div" class="alert-danger pad-10" />
                                                        </div>                                                       

                                                        <!--Fin  inputs/!-->
                                                    </div>
                                                    <div class="col-lg-6 text-left">
                                                        <!-- inputs/!-->
                                                        <div class="form-group">
                                                            <label for="alp-app" class="control-label" >Apellido Paterno</label>
                                                            <form:input path="apellidoPaternoContacto" name="apellidoPaternoContacto" type="text" class="form-control" id="apPC" 
                                                                        placeholder="Apellido Paterno" />
                                                            <form:errors path="apellidoPaternoContacto" element="div" class="alert-danger pad-10" />
                                                        </div>                        
                                                        <div class="form-group ">
                                                            <label for="alp-tel2" class="control-label">Teléfono</label>
                                                            <form:input path="telefono2" name="telefono2" type="text" class="form-control" id="telefonoC" 
                                                                        placeholder="Teléfono" />
                                                            <form:errors path="telefono2" element="div" class="alert-danger pad-10" />
                                                        </div>
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
        <!-- Custom Theme JavaScript -->
        <script src="resources/js/libs/sb-admin-2.js"></script>
        <script type="text/javascript" src="resources/js/compras/jscompras.js"></script>

        <%@include file="MenusCompras/Pie compras.jsp"%>
        <script >
            $(document).ready(function () {
                activatenb('nuv-proveedor');
            });
        </script>

    </body>

</html>




