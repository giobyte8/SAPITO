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
    <title>SAPito - Camiones</title>
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
                Camiones de la empresa XXXXX
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <button class="btn btn-success" type="button">Nuevo camion</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="tcamiones" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>                
                <th>Placas</th>
                <th>Tipo de tranporte</th>
                <th>Dimension</th>                
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
              <tr>                
                <td>5673-JEW</td>
                <td>RABON</td>
                <td>100 m3</td>                
                <td style="text-align: center">                    
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                            
              <tr>                
                <td>3243-JEF</td>
                <td>TRACTO CAMION</td>
                <td>150 m3</td>                
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
            activatenb('nb-camiones');
            $('#tcamiones').DataTable();
        });
    </script>
  </body>
</html>
