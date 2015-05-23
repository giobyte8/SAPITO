<%-- 
    Document   : indexactivofijo
    Created on : Feb 7, 2015, 3:15:33 AM
    Author     : Usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" rel="stylesheet" href="resources/css/sapito.css">

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Morris css -->
    <link href="resources/css/libs/morris.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

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
              <h1 class="page-header">Reporte de Inversión de Activos Fijos</h1>
            </div>
            <!-- /.col-lg-12 -->
          </div>
          <!-- /.row -->
          <div class="row">
            <div class="col-lg-12">
              <div class="panel panel-green">
                <div class="panel-heading">
                  Reporte De Activos Fijos Por Tipo

                </div>
                <!-- /.panel-heading -->

                <div class="panel-body">
                  <div class="dataTable_wrapper">
                    <div class="dataTables_wrapper form-inline dt-bootstrap no-footer" id="dataTables-example_wrapper"><div class="row"><div class="col-sm-12"><table aria-describedby="dataTables-example_info" role="grid" class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example">
                            <thead>
                              <tr role="row">
                                <th aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending" style="width: 175px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting_asc">Tipo de Activo Fijo</th>
                                <th aria-label="Browser: activate to sort column ascending" style="width: 203px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Valor Original</th>
                                <th aria-label="Platform(s): activate to sort column ascending" style="width: 184px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Depreciaci&oacute;n actual</th>
                                <th aria-label="Engine version: activate to sort column ascending" style="width: 150px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Valor Actual</th>                                            
                            </thead>
                            <tbody>
                              <c:forEach items="${resultados}" var="resultado" >
                                  <tr>
                                    <td>${resultado.tipo}</td>
                                    <td>${resultado.valorOriginal}</td>
                                    <td>${resultado.depreciacionActual}</td>
                                    <td>${resultado.valoreActual}</td>
                                  </tr>
                              </c:forEach>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.panel-body -->
              </div>
              <!-- /.panel -->

              <div class="panel panel-green">
                <div class="panel-heading">
                  Reporte Total De Activos Fijos

                </div>
                <!-- /.panel-heading -->

                <div class="panel-body">
                  <div class="dataTable_wrapper">
                    <div class="dataTables_wrapper form-inline dt-bootstrap no-footer" id="dataTables-example_wrapper"><div class="row"><div class="col-sm-12"><table aria-describedby="dataTables-example_info" role="grid" class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example">
                            <thead>
                              <tr role="row">                                            
                                <th aria-label="Browser: activate to sort column ascending" style="width: 203px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Valor Original Total</th>
                                <th aria-label="Platform(s): activate to sort column ascending" style="width: 184px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Depreciaci&oacute;n Actual Total</th>
                                <th aria-label="Engine version: activate to sort column ascending" style="width: 150px;" colspan="1" rowspan="1" aria-controls="dataTables-example" tabindex="0" class="sorting">Valor Actual Total</th>                                            
                            </thead>
                            <tbody>
                              <tr role="row" class="gradeA odd">

                                <td>${granTotalValorOr}</td>
                                <td>${granTotalDepActual}</td>
                                <td class="center">${granTotalValorActual}</td>

                              </tr>                                        
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.panel-body -->
              </div>

            </div>
            <!-- /.col-lg-12 -->
          </div>        
          <div class="form-group text-right">
            <a type="submit" class="btn btn-info" href="reporteinversion.pdf" target="_blank">
                <input type="submit" class="btn btn-success" value="Enviar1"></a>
<!--            <a href="gdaReporte" onclick="return confirm('¿Est&aacute; seguro de enviar el reporte anterior?');"><input type="submit" class="btn btn-success" value="Enviar"></a>-->
            
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
                $(document).ready(function () {
                    $('#dataTables-example').DataTable({
                        responsive: true
                    });
                });
    </script>
  </body>
</html>
