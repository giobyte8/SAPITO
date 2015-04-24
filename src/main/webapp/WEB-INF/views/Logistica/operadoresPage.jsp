<%-- 
<<<<<<< HEAD
    Document   : operadoresPage
    Created on : 23/04/2015, 11:29:17 PM
    Author     : logistica
=======
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
>>>>>>> origin/master
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
=======
  <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Operadores</title>
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
                Operadores
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          <div class="row">
            <button class="btn btn-success" type="button">Nuevo operador</button>
          </div>

          <!-- Data table -->
          <br/><br/>
          <table id="toperadores" class="table table-bordered table-hover table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Nombre</th>  
                <th>Apellidos</th>
                <th>Direccion</th>
                <th>Numero Licencia</th>
                <th>Pago por dia</th>                
                <th>Opciones</th>
              </tr>
            </thead>
            <tbody >
              <tr>                                
                <td>Pepe</td>
                <td>Juarez</td>
                <td>Toluca Lerma</td>
                <td>30098FGT</td>
                <td>450</td>
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                            
              <tr>                                
                <td>Jose</td>
                <td>Leon</td>
                <td>Toluca Xona</td>
                <td>123GHF</td>
                <td>650</td>
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Editar</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>               
              <tr>                                
                <td>Roberto</td>
                <td>Campos</td>
                <td>D.F</td>
                <td>30098FGT</td>
                <td>450</td>
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
            activatenb('nb-operadores');
            $('#toperadores').DataTable();
        });
    </script>
  </body>
>>>>>>> origin/master
</html>
