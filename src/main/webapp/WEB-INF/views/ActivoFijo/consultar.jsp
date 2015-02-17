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
        
        <!-- DataTables CSS -->
    <link href="resources/js/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="resources/js/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    
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
                    <h1 class="page-header">Consultar Activo Fijo</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Activos fijos asignados
                            
                        </div>
                        <!-- /.panel-heading -->
                        
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <div class="dataTables_wrapper form-inline dt-bootstrap no-footer" id="dataTables-example_wrapper"><div class="row"><div class="col-sm-6"><div id="dataTables-example_length" class="dataTables_length"><label>Mostrar <select class="form-control input-sm" aria-controls="dataTables-example" name="dataTables-example_length"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> Activos</label></div></div><div class="col-sm-6"><div class="dataTables_filter" id="dataTables-example_filter"><label>Buscar:<input aria-controls="dataTables-example" placeholder="" class="form-control input-sm" type="search"></label></div></div></div><div class="row"><div class="col-sm-12"><table aria-describedby="dataTables-example_info" role="grid" class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example">
                                    <thead>
                                        <tr role="row"><th aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending" style="width: 175px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting_asc">Activo Fijo</th><th aria-label="Browser: activate to sort column ascending" style="width: 203px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Departamento</th><th aria-label="Platform(s): activate to sort column ascending" style="width: 184px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Propietario</th><th aria-label="Engine version: activate to sort column ascending" style="width: 150px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Fecha Adquisici&oacute;n</th><th aria-label="CSS grade: activate to sort column ascending" style="width: 108px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Acci&oacute;n</th></tr>
                                    </thead>
                                    <tbody>
                                    <tr role="row" class="gradeA odd">
                                            <td class="sorting_1">DRH0001</td>
                                            <td>Recursos Humanos</td>
                                            <td>Ing. Daniel Sanchez</td>
                                            <td class="center">17 de enero, 2015</td>
                                            <td class="center"><a href="mActivoFijo" title="Modificar"><i class="fa fa-pencil-square-o"></i></a>&nbsp;&nbsp;<a href="gdaBaja" title="Baja" onclick="return confirm('Esta acci&oacute;n dar&aacute; de baja el activo fijo seleccionado ¿desea continuar?');"><i class="fa fa-times"></i></a>
</td>
                                        </tr></tbody>
                                </table></div></div><div class="row"><div class="col-sm-6"><div aria-live="polite" role="status" id="dataTables-example_info" class="dataTables_info">P&aacute;gina 1 de 1 - 57 Registros en total</div></div><div class="col-sm-6"><div id="dataTables-example_paginate" class="dataTables_paginate paging_simple_numbers"><ul class="pagination"><li id="dataTables-example_previous" tabindex="0" aria-controls="dataTables-example" class="paginate_button previous disabled"><a href="#">Anterior</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button active"><a href="#">1</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button "><a href="#">2</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button "><a href="#">3</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button "><a href="#">4</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button "><a href="#">5</a></li><li tabindex="0" aria-controls="dataTables-example" class="paginate_button "><a href="#">6</a></li><li id="dataTables-example_next" tabindex="0" aria-controls="dataTables-example" class="paginate_button next"><a href="#">Siguiente</a></li></ul></div></div></div></div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>        
					
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
        
        <!-- DataTables JavaScript -->
    <script src="resources/js/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="resources/js/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
    </body>
</html>
