<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>

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
            <button class="btn btn-success" type="button">Nuevo envio</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tenviosPage" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Cliente</th>  
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
              <tr>                                
                <td>VW</td>
                <td>19:30</td>
                <td>3 hr</td>
                <td>Pedro Romero Morales</td>
                <td>3FDRT</td>
                <td>Jose Perez Leon</td>
                <td>10000</td>
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                            
              <tr>                                
                <td>GM</td>
                <td>13:30</td>
                <td>6 hr</td>
                <td>Juan Romero Hernandez</td>
                <td>45ASDF</td>
                <td>Felipe Cano Romero</td>
                <td>80000</td>
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                            
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
