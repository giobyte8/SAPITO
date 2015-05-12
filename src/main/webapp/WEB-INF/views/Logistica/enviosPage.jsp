<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Envios</title>
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
                Envios
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <a href="/SAPITO/logistica/envios/altaEnvio"><button class="btn btn-success" type="button">Nuevo envio</button></a>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tenviosPage" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <!--<th>Cliente</th>-->  
                <th>Hora de entrega</th>
                <th>Tiempo de entrega</th>
                <th>Nombre del receptor</th>
                <th>Transporte asignadoo</th>                
                <th>Conductor asignado</th>
                <th>Gastos para el envio</th>                
                <th>Opciones</th>                
              </tr>
            </thead>
            <tbody >
             <c:forEach items="${envios}" var="envio">
              <tr>                                
                <!--<td>VW</td>-->
                <td>${envio.id}</td>
                <td>${envio.tiempoEntrega}</td>
                <td>${envio.nombreRecibe}</td>
                <td>3FDRT</td>
                <td>Jose Perez Leon</td>
                <td>10000</td>
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>
              </c:forEach>
            </tbody>
          </table>

        </div>
      </div>
    </div>
    
    <!-- Footer and scripts -->
    
    
    
    <%@include file="logisticaFooter.jsp" %>
    
    <script >
        $(document).ready(function () {
            activatenb('nb-enviosPage');
            $('#tenviosPage').DataTable();
        });
    </script>
  </body>
</html>
