<%-- 
    Document   : login
    Created on : May 23, 2015, 6:40:58 AM
    Author     : giovanni
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
  <head>
    <title>Login Page</title>

    <!-- Head general para ventas -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

    <style>
      body {
          background: #222;
      }
      
      .login-form {
          background: #FFF;
          margin: auto;
          padding: 20px;
          width: 30%;
      }
    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body onload='document.loginForm.username.focus();'>

    <div id="login-box">

      <c:if test="${not empty error}">
          <div class="alert alert-danger">${error}</div>
      </c:if>

      <br/><br/><br/><br/><br/><br/><br/><br/>
      <form name='loginForm' class="login-form"
            action="<c:url value='/j_spring_security_check' />" method='POST'>
        
        <div class="text-center">
          <h2>Ingrese con su usuario y contraseña</h2>
          <br/>
        </div>

        <div class="form-group">
          <label>Usuario</label>
          <input class="form-control" type='text' name='username'></td>
        </div>
        <div class="form-group">
          <label>Contraseña</label>
          <input class="form-control" type='password' name='password' />
        </div>
        <div class="form-group text-right">
          <input name="submit" type="submit" class="btn btn-success" value="Ingresar" />
        </div>

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

      </form>
    </div>

  </body>
</html>