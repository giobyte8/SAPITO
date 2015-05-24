<%-- 
    Document   : downPrestacionesAdministrador
    Created on : 24/04/2015, 10:41:48 AM
    Author     : Jovic
--%>

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

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Baja de Prestaciones
                            </h1>                        
                        </div>
                    </div>        
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title">Prestaciones</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12 text-left">
                                    <label>Ingrese la clave del empleado para poder ver sus prestaciones:</label>
                                    <br>
                                    <br>
                                    <div class="form-group input-group">
                                        <input type="search" class="form-control" placeholder="clave del empleado" onkeypress="return soloNumeros(event);" maxlength="10">
                                        <span class="input-group-btn">
                                            <button id="empId" type="button" class="btn btn-success" onclick="buscaNoValido()"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title">Prestaciones del empleado</h3>
                        </div>

                        <div class="panel-body">
                            <table class="table table-list-search">
                                <thead>
                                    <tr>
                                        <th>Prestación</th>
                                        <th>Fecha Alta</th>
                                        <th>Fecha Baja</th>
                                        <th>1200</th>
                                        <th>Dar de Baja</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Seguro Social</td>
                                        <td>10/02/10</td>
                                        <td>No asignada</td>
                                        <td>1101</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-danger  fa fa-eraser" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                    <tr>
                                        <td>Prestamo</td>
                                        <td>10/02/11</td>
                                        <td>21/02/23</td>
                                        <td>10000</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                    <tr>
                                        <td>Aginaldo</td>
                                        <td>10/11/12</td>
                                        <td>10/11/12</td>
                                        <td>3220</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-danger fa fa-eraser" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                </tbody>
                            </table>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
</body>
</html>
