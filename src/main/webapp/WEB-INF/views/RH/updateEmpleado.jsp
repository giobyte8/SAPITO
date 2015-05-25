<%-- 
    Document   : ModificacionEmpleado
    Created on : 7/02/2015, 04:28:32 AM
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

    <div id="page-wrapper">
      <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Modificar Usuario
            </h1>
          </div>
        </div>

        <form:form action="editEmpleado" method="POST" commandName="Empleado">
            <form:input  path="idempleado" type="hidden"/>
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
                        <form:select id="departamentosLista" name="departamentoId" 
                                     class="form-control" path="departamento.id">
                            <form:option value="0" label="Seleccione uno" />
                            <form:options items="${Departamento}"  itemValue="id" itemLabel="nombreDepartamento"/>                       
                        </form:select>
                      </div>
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>Puesto</label>
                        <form:select id="disabledSelect" name="puestoId" 
                                     class="form-control" path="puesto.id">                                                      
                            <form:option value="0" label="Seleccione uno" />
                            <form:options  items="${puesto}"   itemValue="id" itemLabel="nombre" />
                        </form:select>
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
                        <form:input path="nombre" class="form-control" placeholder="Nombre(s)" 
                                    onkeypress="return soloTexto(event);" maxlength="40" required="required"/>

                      </div>
                      <div class="form-group">
                        <label>Apellido Paterno</label>
                        <form:input  path="apaterno"  class="form-control" placeholder="Apellido Paterno" 
                                     onkeypress="return soloTexto(event);" maxlength="40" required="required"/>

                      </div>
                      <div class="form-group">
                        <label>Apellido Materno</label>
                        <form:input  path="amaterno" class="form-control" placeholder="Apellido Materno" 
                                     onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                      </div>

                      <div class="form-group">
                        <label>Estado civil</label>
                        <form:select path="estadoCivil" id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">
                            <option value="Soltero">Soltero(a)</option>
                            <option value="Casado">Casado(a)</option>
                            <option value="Divorciado">Divorciado(a)</option>
                            <option value="Viudo">Viudo(a)</option>
                            <option value="Sin especificar">Sin especificar</option>                                                        
                        </form:select>
                      </div>
                      <div class="form-group">
                        <label>Sexo</label>
                        <form:select class="form-control" path="sexo">
                            <form:option value="Masculino">Masculino</form:option>
                            <form:option value="Femenino">Femenino</form:option>
                            <form:option value="Otro">Otro</form:option>
                        </form:select>
                      </div>
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>E-mail</label>
                        <form:input path="email" class="form-control" placeholder="email"  maxlength="20" onkeypress="return validarRFC();" required="required"/>
                      </div> 
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>Fecha de nacimiento</label>
                        <form:input path="fechaNacimiento" class="form-control input-date" required="required"/>
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
                            <form:select path="estado" id="etados" class="form-control selectpicker show-tick show-menu-arrow" data-size="6">
                                <option value="Aguascalientes">Aguascalientes</option>
                                <option value="Baja California">Baja California</option>
                                <option value="Baja California Sur">Baja California Sur</option>
                                <option value="Campeche">Campeche</option>
                                <option value="Coahuila">Coahuila</option>
                                <option value="Colima">Colima</option>
                                <option value="Chiapas">Chiapas</option>
                                <option value="Chihuahua">Chihuahua</option>
                                <option value="Distrito Federal">Distrito Federal</option>
                                <option value="Durango">Durango</option>
                                <option value="Guanajuato">Guanajuato</option>
                                <option value="Guerrero">Guerrero</option>
                                <option value="Hidalgo">Hidalgo</option>
                                <option value="Jalisco">Jalisco</option>
                                <option value="México">México</option>
                                <option value="Michoacan">Michoacan</option>
                                <option value="Morelos">Morelos</option>
                                <option value="Nayarit">Nayarit</option>
                                <option value="Nuevo Leon">Nuevo Leon</option>
                                <option value="Oaxaca">Oaxaca</option>
                                <option value="Puebla">Puebla</option>
                                <option value="Querétaro">Querétaro</option>
                                <option value="Quintana Roo">Quintana Roo</option>
                                <option value="San Luis Potosí">San Luis Potosí</option>
                                <option value="Sinaloa">Sinaloa</option>
                                <option value="Sonora">Sonora</option>
                                <option value="Tabasco">Tabasco</option>
                                <option value="Tamaulipas">Tamaulipas</option>
                                <option value="Tlaxcala">Tlaxcala</option>
                                <option value="Veracruz">Veracruz</option>
                                <option value="Yucatan">Yucatan</option>
                                <option value="Zacatecas">Zacatecas</option>
                            </form:select>
                          </div>
                        </div>
                        <div class="col-lg-6 text-left">
                          <div class="form-group">
                            <label>Código Postal</label>
                            <form:input path="codigoPostal" class="form-control" placeholder="C.P."  maxlength="5" onkeypress="return soloNumeros(event);" required="required"/>
                          </div> 
                          <div class="form-group">
                            <label>Telefono </label>
                            <form:input path="telefono" class="form-control" placeholder="Telefono Principal"  maxlength="10" onkeypress="return soloNumeros(event);" required="required"/>
                          </div> 
                          <div class="form-group">
                            <label>Municipio</label>
                            <form:input path="municipio" class="form-control"   onkeypress="return soloNumeros(event);" required="required"/>
                          </div> 
                        </div>
                      </div>
                    </div>
                    <div align="right">
                      <button type="submit" class="btn btn-success">Guardar</button>                                            
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
    <script>
        $(document).ready(function () {
            $(".input-date").datepicker({
                dateFormat: "dd-mm-yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
        });
    </script>
  </body>
</html>
