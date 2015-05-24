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
                            Nuevo Empleado
                        </h1>
                    </div>
                </div>
                <!-- /.row -->
                <form:form action="newUser" method="POST" commandName="Empleado" onsubmit="confirmarAltas()">
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos del Departamento</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Departamento que lo solicita</label>
                                            <div class="form-group input-group">
                                                <form:select id="departamentosLista" name="departamentoId" class="form-control selectpicker show-tick show-menu-arrow listaDepa" path="departamentoIddepartamento.id">
                                                    <form:option value="0" label="Seleccione uno" />
                                                    <form:options items="${Departamento}"  itemValue="id" itemLabel="nombreDepartamento"/>                       
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Puesto</label>
                                            <div class="form-group input-group">
                                                <form:select id="disabledSelect" name="puestoId" class="form-control selectpicker show-tick show-menu-arrow listaPuesto" path="puestoIdpuesto.idpuesto">                                                      
                                                    <form:option value="0" label="Seleccione uno" />
                                                    <form:options  items="${puesto}"   itemValue="idpuesto" itemLabel="nombre" />
                                                </form:select>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Datos Personales</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Nombre(s)</label>
                                            <form:input path="nomre" class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido Paterno</label>
                                            <form:input  path="apaterno"  class="form-control" placeholder="Apellido Paterno" onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                                            
                                        </div>
                                        <div class="form-group">
                                            <label>Apellido Materno</label>
                                            <form:input  path="amaterno" class="form-control" placeholder="Apellido Materno" onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                                        </div>

                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Estado civil</label>
                                                <div class="form-group input-group">
                                                    <form:select path="estadoCivil" id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">
                                                        <option>Soltero(a)</option>
                                                        <option>Casado(a)</option>
                                                        <option>Divorciado(a)</option>
                                                        <option>Viudo(a)</option>
                                                        <option>Sin especificar</option>                                                        
                                                    </form:select>
                                                </div>
                                            </div>
                                        </div>


                                        <h5><label>Sexo</label></h5>
                                        <div class="radio">
                                            <div class="form-group input-group">
                                                <form:radiobutton path="sexo" checked="checked" value="M"/>Hombre  &nbsp;  &nbsp;  &nbsp;
                                                <form:radiobutton path="sexo" value="F"/>Mujer &nbsp;  &nbsp;  &nbsp; 
                                                <form:radiobutton path="sexo" value="O"/>Otro &nbsp;  &nbsp;  &nbsp; 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>E-mail</label>
                                            <form:input path="email" class="form-control" placeholder="e_mail"  maxlength="20" type="email" required="required"/>
                                        </div> 
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Fecha de nacimiento</label>
                                            <form:input path="fechaNacimiento" type="date" class="form-control" required="required"/>
                                        </div>  
                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>RFC</label>
                                            <form:input path="rfc"  maxlength="13" class="form-control" required="required"/>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-left">
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Datos de Referencia</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="col-lg-6 text-left">
                                                <div class="form-group">
                                                    <label>Calle</label>
                                                    <form:input path="calle" class="form-control" placeholder="Calle" onkeypress="return soloTexto(event);"  maxlength="30" required="required"/>
                                                </div>
                                                <div class="form-group">
                                                    <label>Colonia</label>
                                                    <form:input path="colonia" class="form-control" placeholder="Colonia" onkeypress="return soloTexto(event);"  maxlength="30" required="required"/>
                                                </div>  
                                                <div class="form-group">
                                                    <label>Estado</label>
                                                    <div class="form-group input-group">
                                                        <form:select path="estado" id="etados" class="form-control selectpicker show-tick show-menu-arrow" data-size="6">
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
                                                            <option>Michoacan</option>
                                                            <option>Morelos</option>
                                                            <option>Nayarit</option>
                                                            <option>Nuevo Leon</option>
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
                                                            <option>Yucatan</option>
                                                            <option>Zacatecas</option>
                                                        </form:select>

                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Municipio</label>
                                                    <form:input path="municipio" class="form-control"   onkeypress="return soloTexto(event);" required="required"/>
                                                </div> 
                                            </div>
                                            <div class="col-lg-6 text-left">
                                                <div class="form-group">
                                                    <label>C&oacute;digo Postal</label>
                                                    <form:input path="codigoPostal" class="form-control" placeholder="C.P." minlength="5" maxlength="5"  onkeypress="return soloNumeros(event);" required="required"/>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Telefono </label>
                                                    <form:input path="telefono" class="form-control" placeholder="Telefono Principal"   minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required="required"/>
                                                </div> 

                                            </div>
                                        </div>
                                    </div>
                                    <div align="right">
                                        <button type="submit" class="btn btn-primary">Aceptar</button>                                            
                                    </div>
                                    <br/>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    </body>
</html>
