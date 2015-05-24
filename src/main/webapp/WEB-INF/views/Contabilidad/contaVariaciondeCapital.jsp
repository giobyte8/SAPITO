<%-- 
    Document   : index
    Created on : 7/02/2015, 01:38:13 AM
    Author     : Edgar
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>SAPito</title>
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="Menu/menuContabilidad.jsp"%>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Variaciones de Capital Contable
                            </h1>                        
                        </div>
                    </div>
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <tbody>
                                                <tr><td>Saldo al inicio del ejercicio</td><td><label class="control-label">${saldoi}</label></td></tr>
                                                <tr><td>Aumentos</td><td><label class="control-label">${aumentos}</label></td></tr>
                                                <tr><td>Utilidades</td><td><label class="control-label">${utilidades}</label></td></tr>  
                                                <tr><td>Disminuciones</td><td><label class="control-label">${dismi}</label></td></tr>
                                                <tr><td>Perdidas</td><td><label class="control-label">${perdidas}</label></td></tr>
                                                <tr><td>Saldo al final del ejercicio</td><td><label class="control-label">${saldof}</label></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row text-right">
                        <div class="col-md-12">
                            <br/><br/>
                            <form  target="_blank" action="${pageContext.request.contextPath}/contabilidad/variacion">
                                <button type="submit" class="btn btn-success right">Descargar</button>
                            </form>
                            <br/><br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>
    </body>
</html>
