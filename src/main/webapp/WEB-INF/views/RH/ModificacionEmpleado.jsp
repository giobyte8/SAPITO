<%-- 
    Document   : ModificacionEmpleado
    Created on : 7/02/2015, 04:28:32 AM
    Author     : Christian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="../RH/Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->

        <title>SAPITO ITT</title>
    </head>
    <body>
        <%@include file="../RH/Menus/MenuJefeRH.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <!--  ################################################-->
            
             <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Modificar Usuario
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <form onsubmit="return validaModificaUsuario()">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Buscar Usuario</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <div class="form-group input-group">
                                                    <input type="search" class="form-control" placeholder="ID del empleado" onkeypress="return soloNumeros(event);" maxlength="10">
                                                    <span class="input-group-btn">
                                                        <button id="empId" type="button" class="btn btn-info" onclick="buscaNoValido()"><i class="fa fa-search"></i></button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Departamento</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Departamento actual</label>
                                                <div class="form-group input-group">
                                                    <select id="departamentosLista" class="form-control selectpicker" disabled="">
                                                        <option>Seleccione departamento</option>
                                                        <option>Recursos Humanos</option>
                                                        <option>Contabilidad</option>
                                                        <option>Ventas</option>
                                                        <option>Compras</option>
                                                        <option>DirecciÃ³n</option>
                                                        <option selected>AlmacÃ©n</option>
                                                        <option>Proveedor</option>
                                                        <option>Clientes</option>
                                                        <option>Activos fijos</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Puesto actual</label>
                                                <div class="form-group input-group">
                                                    <select id="disabledSelect" class="form-control selectpicker" disabled>
                                                        <option>Seleccione rol</option>
                                                        <option>Director</option>
                                                        <option selected>Gerente</option>
                                                        <option>Empleado</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Transferir a nuevo departamento</label>
                                                <div class="form-group input-group">
                                                    <select id="departamentosLista" class="form-control selectpicker nuevoDepa">
                                                        <option>Seleccione departamento</option>
                                                        <option>Recursos Humanos</option>
                                                        <option>Contabilidad</option>
                                                        <option>Ventas</option>
                                                        <option>Compras</option>
                                                        <option>DirecciÃ³n</option>
                                                        <option>AlmacÃ©n</option>
                                                        <option>Proveedor</option>
                                                        <option>Clientes</option>
                                                        <option>Activos fijos</option>
                                                    </select>
                                                </div>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Asignar nuevo puesto</label>
                                                <div class="form-group input-group">
                                                    <select id="disabledSelect" class="form-control selectpicker nuevoPuesto">
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
                                        <h3 class="panel-title">Datos personales</h3>
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
                                                <input class="form-control" placeholder="Apellido Materno"  maxlength="20" required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>RFC</label>
                                                <input class="form-control" placeholder="RFC"  maxlength="20" required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de nacimiento</label>
                                                <input type="date" class="form-control" value="2013-01-08" disabled>
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
                                                        <input class="form-control" placeholder="Colonia" onkeypress="return soloTexto(event);"  maxlength="20" required>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>N&uacute;mero de Interior</label>
                                                        <input class="form-control" id="numInt" placeholder="N&uacute;mero de interior"  maxlength="4" onkeypress="return soloNumeros(event);"required>
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
                                                            <select id="etados" class="form-control selectpicker jaja show-tick show-menu-arrow" data-size="6">
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
                                                                <option>MÃ©xico</option>
                                                                <option>MichoacÃ¡n</option>
                                                                <option>Morelos</option>
                                                                <option>Nayarit</option>
                                                                <option>Nuevo LeÃ³n</option>
                                                                <option>Oaxaca</option>
                                                                <option>Puebla</option>
                                                                <option>QuerÃ©taro</option>
                                                                <option>Quintana Roo</option>
                                                                <option>San Luis PotosÃ­</option>
                                                                <option>Sinaloa</option>
                                                                <option>Sonora</option>
                                                                <option>Tabasco</option>
                                                                <option>Tamaulipas</option>
                                                                <option>Tlaxcala</option>
                                                                <option>Veracruz</option>
                                                                <option>YucatÃ¡n</option>
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

         
            
            <!--  ################################################-->

            
        </div>
        <%@include file="../RH/Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
