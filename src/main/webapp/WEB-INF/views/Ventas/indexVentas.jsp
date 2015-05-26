<%-- 
    Document   : indexVentas
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : giovanni
--%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas</title>
  </head>
  <body>
    <div id="wrapper">

      <!-- Navigation bar -->
      <%@include file="ventasNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page header -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Bienvenido a ventas
              </h1>
            </div>
          </div>
          <div class="row text-center">
            <img width="50%" height="50%" src="${pageContext.request.contextPath}/resources/img/ventas.jpg" />
          </div>

        </div> <!-- .container-fluid -->
      </div> <!-- .page-wrapper -->
    </div> <!-- .wrapper -->

    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script type="text/javascript">
        $(document).ready(function () {
            activatenb('nb-dashboard');
        });
    </script>
  </body>
</html>
