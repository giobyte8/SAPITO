<%-- 
    Document   : AltaEmpleado
    Created on : 7/02/2015, 04:25:38 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->

        <title>SAPITO ITT</title>
    </head>
    <body>
        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <!--  ################################################-->
            <!--<div id="page-wrapper">-->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Nuevo Usuario
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <form onsubmit="validaNuevoUsuario()">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos del Departamento</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Departamento que lo solicita</label>
                                                <div class="form-group input-group">
                                                    <select id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa">
                                                        <option>Seleccione departamento</option>
                                                        <option>Recursos Humanos</option>
                                                        <option>Contabilidad</option>
                                                        <option>Ventas</option>
                                                        <option>Compras</option>
                                                        <option>Dirección</option>
                                                        <option>Almacén</option>
                                                        <option>Proveedor</option>
                                                        <option>Clientes</option>
                                                        <option>Activos fijos</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Puesto</label>
                                                <div class="form-group input-group">
                                                    <select id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">
                                                        <option>Seleccione puesto</option>
                                                        <option>Director</option>
                                                        <option>Gerente</option>
                                                        <option>Empleado</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Datos Personales</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Nombre(s)</label>
                                                <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Apellido Paterno</label>
                                                <input class="form-control" placeholder="Apellido Paterno" onkeypress="return soloTexto(event);" maxlength="40" required>
                                            </div>
                                            <h5>Sexo</h5>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                    Masculino
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                    Femenino
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Apellido Materno</label>
                                                <input class="form-control" placeholder="Apellido Materno"  maxlength="20" onkeypress="return soloTexto(event);" required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>RFC</label>
                                                <input class="form-control" placeholder="RFC"  maxlength="20" onkeypress="return validarRFC();"required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de nacimiento</label>
                                                <input type="date" class="form-control" required>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de Referencia</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-lg-6 text-left">
                                                    <div class="form-group">
                                                        <label>Calle</label>
                                                        <input class="form-control" placeholder="Calle" onkeypress="return soloTexto(event);"  maxlength="30" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Colonia</label>
                                                        <input class="form-control" placeholder="Colonia" onkeypress="return soloTexto(event);"  maxlength="30" required>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>Ciudad</label>
                                                        <input class="form-control" id="numInt" placeholder="Ciudad"  maxlength="30" onkeypress="return soloTexto(event);"required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <div class="form-group">
                                                        <label>C&oacute;digo Postal</label>
                                                        <input class="form-control" placeholder="C.P."  maxlength="5" onkeypress="return soloNumeros(event);" required>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>N&uacute;mero Exterior</label>
                                                        <input class="form-control" placeholder="N&uacute;mero exterior" onkeypress="return soloNumeros(event);" maxlength="4" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Poblaci&oacute;n</label>
                                                        <div class="form-group input-group">
                                                            <select id="etados" class="form-control selectpicker show-tick show-menu-arrow" data-size="6">
                                                                <option>Aguascalientes</option>
                                                                <option>Baja California</option>
                                                                <option>Baja California Sur</option>
                                                                <option>Campeche</option>
                                                                <option>Coahuila</option>
                                                                <option>Colima</option>
                                                                <option>Chiapas</option>
                                                                <option>Chihuahua</option>
                                                                <option>Distrito Federal</option>
                                                                <option>Durango</option>
                                                                <option>Guanajuato</option>
                                                                <option>Guerrero</option>
                                                                <option>Hidalgo</option>
                                                                <option>Jalisco</option>
                                                                <option>México</option>
                                                                <option>Michoacán</option>
                                                                <option>Morelos</option>
                                                                <option>Nayarit</option>
                                                                <option>Nuevo León</option>
                                                                <option>Oaxaca</option>
                                                                <option>Puebla</option>
                                                                <option>Querétaro</option>
                                                                <option>Quintana Roo</option>
                                                                <option>San Luis Potosí</option>
                                                                <option>Sinaloa</option>
                                                                <option>Sonora</option>
                                                                <option>Tabasco</option>
                                                                <option>Tamaulipas</option>
                                                                <option>Tlaxcala</option>
                                                                <option>Veracruz</option>
                                                                <option>Yucatán</option>
                                                                <option>Zacatecas</option>
                                                            </select>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
          <!--  </div>-->

            
            <!--  ################################################-->

            
        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
