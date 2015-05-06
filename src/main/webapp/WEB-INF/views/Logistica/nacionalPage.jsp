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
    <title>SAPito - Empresa Nacional</title>
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
                Empresas Nacionales
              </h1>  
            </div>
                
              
              
              
            
          </div>

          <!-- Buttons bar -->
          <div class="row">
              <%
                  if (request.getAttribute("imprime") != null) {

                      if (request.getAttribute("imprime").equals("1")) {

              %>                
              <div class="alert alert-success" role="alert" style="text-align: center">Registro exitoso</div>
              <%                        }
                  }
              %>

            <a href="/SAPITO/logistica/empresa/altaEmpresa"><button class="btn btn-success" type="button">Nueva empresa</button></a>
          </div>

          <!-- Data table -->
          <br/><br/>
          
          <table id="tnacional" class="table table-bordered table-hover 
           table-striped table-responsive" cellspacing="0" width="100%">
              <thead>
                  <tr>
                      <!--                <th>Camiones</th>  -->
                      <th>Id</th>
                      <th>Empresa</th>
                      <th>RFC</th>
                      <th>Pais</th>
                      <th>Ciudad</th>
                      <th>Calle</th>
                      <th>Numero</th>
                      <th>Tipo</th>
                      <th>Detalles</th>
                      <!--                <th>Opciones</th>-->
                  </tr>
              </thead>
              <tbody>
              <c:forEach items="${empresas}" var="empresa">
                  <tr>                              
                      <td>${empresa.id}</td>                                
                      <td>${empresa.nombreEmpresa}</td>                                
                      <td>${empresa.rfc}</td>                                
                      <td>${empresa.pais}</td>                                
                      <td>${empresa.ciudad}</td>                                
                      <td>${empresa.calle}</td>                                
                      <td>${empresa.numero}</td>                                
                      <td>${empresa.tipo}</td>                                
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
            activatenb('nb-nacional');
            $('#tnacional').DataTable();
        });
    </script>
  </body>
</html>
