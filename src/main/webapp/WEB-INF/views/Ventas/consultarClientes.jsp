<%-- 
    Document   : consultarClientes
    Created on : Feb 16, 2015, 10:42:10 PM
    Author     : giovanni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>Ventas - Consultar clientes</title>
  </head>
  <body>

    <!-- Navigation bar -->
    <%@include file="ventasNavs.jsp" %>

    <div id="page-wrapper">
      <div class="container-fluid">

        <div class="row">
          <div class="col-lg-12">
            <h1 class="page-header">
              Clientes
            </h1>                        
          </div>
        </div>        

        <div class="row">
          <div class="col-lg-12 text-left">
            <div class="panel panel-default">
              <div class="panel-body">
                <br/>                            
                <div class="panel panel-primary">
                  <div class="panel-heading">
                    <h3 class="panel-title" >Consular Clientes </h3>
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="col-lg-12text-left">                                                                                        
                        <div class="row">

                          <div class="col-lg-12">
                            <div class="panel panel-default">
                              <div class="panel-heading">
                                Consultar Clientes
                              </div>
                              <!-- /.panel-heading -->
                              <div class="panel-body">
                                <div class="dataTable_wrapper">
                                  <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                      <tr>
                                        <th>Id Cliente</th>
                                        <th>Empresa</th>
                                        <th>Nombre Contacto</th>
                                        <th>RFC</th>

                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr class="odd gradeX">
                                        <td>001</td>
                                        <td>Bimbo</td>
                                        <td>Perez</td>
                                        <td class="center">RFCA12345</td>

                                      </tr>
                                      <tr class="even gradeC">
                                        <td>002</td>
                                        <td>Tia Rosa</td>
                                        <td>Rodriguez</td>
                                        <td class="center">RFCB12345</td>

                                      </tr>





                                    </tbody>
                                  </table>
                                </div>
                                <!-- /.table-responsive -->

                              </div>
                              <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                          </div>
                          <!-- /.col-lg-12 -->
                        </div>

                        <!-- Footer and scripts -->
                        <%@include file="ventasFooter.jsp" %>

                        </body>
                        </html>