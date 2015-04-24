<%-- 
    Document   : addPrestacionesAdministrador
    Created on : 24/04/2015, 10:41:15 AM
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
                                Alta Prestaciones
                            </h1>                        
                        </div>
                    </div>        
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title">Alta Prestaciones</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal" role="form">
                                        <fieldset>

                                            <!-- Form Name -->

                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="textinput">Empleado</label>
                                                <div class="col-sm-10">
                                                    <input type="text"  class="form-control">
                                                </div>
                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label"  for="textinput">Alta prestasion</label>
                                                <div class="col-sm-10">
                                                    <input  type="date"  class="form-control">
                                                </div>
                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label"   for="textinput">Baja de prestasion</label>
                                                <div class="col-sm-10">
                                                    <input  type="date" class="form-control" >
                                                </div>
                                            </div>

                                            <!-- Text input-->
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="textinput" >Antiguedad</label>
                                                <div class="col-sm-4">
                                                    <input type="text"  class="form-control" readonly>
                                                </div>

                                                <label class="col-sm-2 control-label" for="textinput">Días de prestación activa</label>
                                                <div class="col-sm-4">
                                                    <input type="text"  class="form-control">
                                                </div>

                                            </div>

                                            <label class="col-sm-2 control-label" for="textinput">Dias con goce de sueldo</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control">
                                            </div>


                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <div class="pull-right">
                                                        <button type="submit" class="btn btn-danger">Cancel</button>
                                                        <button type="submit" class="btn btn-success">Alta</button>
                                                    </div>
                                                </div>
                                            </div>

                                        </fieldset>
                                    </form>
                                </div><!-- /.col-lg-12 -->
                            </div><!-- /.row -->
                        </div><!-- /.row -->
                    </div><!-- /.row -->




                </div>
            </div>
        </div>
    </div>
    <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
</body>
</html>
