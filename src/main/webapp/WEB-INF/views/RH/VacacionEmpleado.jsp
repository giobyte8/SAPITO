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
        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <!--  ################################################-->


            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Solicitud De Vacaciones
                        </h1>
                    </div>
                </div>
                <!-- /.row -->



                <div class="row-fluid">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title">Buscar Empleado por Clave</h3>
                        </div>
                        <div class="panel-body">
                            <form action="recursoshumanosdep/searchEmpleado" method="POST" >
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <div class="form-group input-group">
                                            <input type="search" name="idEmpleado" class="form-control" placeholder="clave del empleado" onkeypress="return soloNumeros(event);" maxlength="10" required>
                                            <span class="input-group-btn">
                                                <button  type="submit" class="btn btn-block " ><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </div>

                                </div>
                                ${NotFound}
                                ${Resultado}
                            </form>

                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="col-sm-12 ">
                        <h3></h3>
                    </div><!-- /col-sm-12 -->
                </div><!-- /row -->
                <div class="row col-lg-offset-2">
                    <div class="col-sm-1">
                        <div class="thumbnail">
                            <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                        </div><!-- /thumbnail -->
                    </div><!-- /col-sm-1 -->
                    ${ResultadoBusqueda}
                    <div class="col-sm-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <strong>${Empleado.nomre}  ${Empleado.apaterno}   ${Empleado.amaterno}</strong> <span class="text-muted">Clave : ${Empleado.idempleado}</span>
                            </div>
                            <div class="panel-body">
                                ${EmpleadoSeleccionado}
                            </div><!-- /panel-body -->
                        </div><!-- /panel panel-default -->
                    </div><!-- /col-sm-5 -->    
                </div>
                <form:form commandName="vacaciones" action="recursoshumanosdep/UpVacacionesAdmin" method="POST"> 
                    <input type="text" readyonly="true" name="idEmpleadoV" class="form-control" value="${Empleado.idempleado}" >

                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-green">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Indique Las Fechas De Su Periodo De Vacaciones</h3>
                                </div>



                                <div class="panel-body">
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Fecha de Inicio</label>
                                            <form:input id="fnoc-fechaInicio"  type="text" path="fechaalta" class="form-control" required="required"/>
                                        </div>

                                    </div>
                                    <div class="col-lg-6 text-left">
                                        <div class="form-group">
                                            <label>Fecha de Fin</label>
                                            <form:input  id="fnoc-fechaFin" path="fechabaja"  type="text" class="form-control" required="required"/>
                                        </div>  
                                    </div>
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                    </div>  
                                </div>
                            </div>
                        </div>

                        <div align="right">
                            <button type="submit" class="btn btn-success">Aceptar</button>
                        </div>
                    </div>
                </form:form>
            </div>


            <!--  ################################################-->


        </div>
        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/activofijo/jquery-ui.js"></script>      
    </body>
    <script >
        $(document).ready(function () {

            $("#fnoc-fechaInicio").datepicker({
                dateFormat: "dd/mm/yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
            $("#fnoc-fechaFin").datepicker({
                dateFormat: "dd/mm/yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
        });
    </script>

</html>
