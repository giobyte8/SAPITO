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
    <title>SAPito - Empresa Extranjera</title>
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
                Empresas Extranjeras
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <button class="btn btn-success" type="button">Nueva empresa</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="textranjera" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Camiones</th>  
                <th>Empresa</th>
                <th>RFC</th>
                <th>Pais</th>
                <th>Estado</th>
                <th>Municipio</th>
                <th>Calle</th>
                <th>Numero</th>
                <th>Codigo postal</th>
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: center"><a href="/SAPITO/logistica/empresa/camiones"><button class="btn btn-xs btn-success" type="button">Ver</button></a></td>  
                <td>Tranporte Nacional</td>
                <td>TRNA0009990D</td>
                <td>E.U.A</td>
                <td>Chicago</td>
                <td>Chicago dc</td>
                <td>George</td>
                <td>30</td>
                <td>52080</td>
                <td>
                    
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
            activatenb('nb-extranjera');
            $('#textranjera').DataTable();
        });
    </script>
  </body>
</html>
