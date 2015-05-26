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
      <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Nuevo Empleado
            </h1>
          </div>
        </div>

        <form:form action="altaempleado" method="POST" commandName="empleado">
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
                                     class="form-control selectpicker show-tick show-menu-arrow listaDepa" 
                                     path="departamento.id">
                            <form:options items="${departamentos}"  itemValue="id" itemLabel="nombreDepartamento"/>
                        </form:select>
                      </div>
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>Puesto</label>
                        <form:select name="puesto" path="puesto.id" class="form-control">
                            <form:options items="${puestos}" itemValue="id" itemLabel="nombre" />
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
                        <form:errors path="nombre" element="div" class="alert alert-danger" />
                      </div>
                      <div class="form-group">
                        <label>Apellido Paterno</label>
                        <form:input  path="apaterno"  class="form-control" placeholder="Apellido Paterno" 
                                     onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                        <form:errors path="apaterno" element="div" class="alert alert-danger" />
                      </div>
                      <div class="form-group">
                        <label>Apellido Materno</label>
                        <form:input  path="amaterno" class="form-control" placeholder="Apellido Materno" 
                                     onkeypress="return soloTexto(event);" maxlength="40" required="required"/>
                        <form:errors path="amaterno" element="div" class="alert alert-danger" />
                      </div>

                      <div class="form-group">
                        <label>Estado civil</label>
                        <form:select path="estadoCivil" class="form-control">
                            <option value="Soltero">Soltero(a)</option>
                            <option value="Casado">Casado(a)</option>
                            <option value="Divorciado">Divorciado(a)</option>
                            <option value="Viudo">Viudo(a)</option>
                            <option value="No especificado">Sin especificar</option>                                                        
                        </form:select>
                      </div>

                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>Email</label>
                        <form:input path="email" class="form-control" placeholder="Email"  
                                    type="email" required="required"/>
                        <form:errors path="email" element="div" class="alert alert-danger" />
                      </div> 
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>Fecha de nacimiento</label>
                        <form:input path="fechaNacimiento" class="form-control input-date" 
                                    required="required" placeholder="Fecha de nacimiento" />
                        <form:errors path="fechaNacimiento" element="div" class="alert alert-danger" />
                      </div>
                    </div>
                    <div class="col-lg-6 text-left">
                      <div class="form-group">
                        <label>RFC</label>
                        <form:input path="rfc"  maxlength="13" class="form-control" 
                                    required="required" placeholder="RFC del empleado" />
                        <form:errors path="rfc" element="div" class="alert alert-danger" />
                      </div>  
                    </div>
                    <div class="col-md-6">
                      <label>Sexo</label>
                      <form:select path="sexo" class="form-control">
                          <form:option value="Masculino">Masculino</form:option>
                          <form:option value="Femenino">Femenino</form:option>
                          <form:option value="Otro">Otro</form:option>
                      </form:select>
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
                            <form:input path="calle" class="form-control" placeholder="Calle" 
                                        onkeypress="return soloTexto(event);" required="required"/>
                            <form:errors path="calle" element="div" class="alert alert-danger" />
                          </div>
                          <div class="form-group">
                            <label>Colonia</label>
                            <form:input path="colonia" class="form-control" placeholder="Colonia" 
                                        onkeypress="return soloTexto(event);" required="required"/>
                            <form:errors path="calle" element="div" class="alert alert-danger" />
                          </div>
                          <div class="form-group">
                            <label>Estado</label>
                            <form:select path="estado" id="estados" class="form-control selectpicker show-tick show-menu-arrow">
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
                            <form:input path="codigoPostal" class="form-control" 
                                        placeholder="C.P." minlength="5" maxlength="5" 
                                        onkeypress="return soloNumeros(event);" required="required"/>
                          </div> 
                          <div class="form-group">
                            <label>Teléfono </label>
                            <form:input path="telefono" class="form-control" 
                                        placeholder="Telefono Principal" required="required"/>
                            <form:errors path="telefono" element="div" class="alert alert-danger" />
                          </div> 
                          <div class="form-group">
                            <label>Municipio</label>
                            <form:input path="municipio" class="form-control" 
                                        onkeypress="return soloTexto(event);" 
                                        required="required" placeholder="Municipio" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div align="right">
                      <button type="submit" class="btn btn-success">Aceptar</button>                                            
                    </div>
                    <br/>
                  </div>
                </div>
              </div>
            </div>
        </form:form>
      </div>
    </div>

    <%@include file="Librerias/piegeneral.jsp"%>
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
