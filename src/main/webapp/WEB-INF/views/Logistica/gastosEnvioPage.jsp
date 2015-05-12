<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.sapito.logistica.LogisticaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Gatos de envio</title>
  </head>
  <body>
    <div id="wrapper">
      
      <!-- Navigation bar -->
      <%@include file="logisticaNavs.jsp" %>

      <!-- Page content -->
      
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Gastos de envio
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <button class="btn btn-success" type="button">Agregar gasto</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tcamiones" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>                
                <th>Cliente</th>
                <th>Direccion</th>
                <th>Gasto Diesel</th>                
                <th>Gasto Alojamiento</th>
                <th>Gasto Casetas</th>                
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
                <%--<c:forEach items="${envios}">--%>
              
              <tr>                         
                  
                  <td><a href="/SAPITO/logistica/operadores" style="color: grey"><i class="fa fa-fw fa-eye"></i></a>
                  Jeep
                  </td>                  
                <td><a href="/SAPITO/logistica/operadores" style="color: grey"><i class="fa fa-fw fa-eye"></i></a>
                Toluca
                </td>
                <td>$500</td>                
                <td>$800</td>                
                <td>$900</td>                
                <td style="text-align: center">                    
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                                          
                <%--</c:forEach>--%>
            </tbody>
          </table>

        </div>
      </div>
    </div>
    
    <!-- Footer and scripts -->
    
    
    
    <%@include file="logisticaFooter.jsp" %>
    
    <script >
        $(document).ready(function () {
            activatenb('nb-camiones');
            $('#tcamiones').DataTable();
        });
    </script>
  </body>
</html>
