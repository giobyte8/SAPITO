<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>
        <div id="wrapper">           
            <%@include file="inventariosNavs.jsp" %>
            <form>
                <div id="page-wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Máximos y Mínimos</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <c:forEach items="${inventario}" var="inventario">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        Control máximo y mínimos de producto terminado
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="dataTable_wrapper">
                                            <div class="form-group">
                                                <label>Selecciona un producto</label>
                                                <form:select items="${productosTerminados}" class="form-control">
                                                    <br/>
                                                    <label>Control Máximo</label>
                                                    <input onKeyup="isInteger(this.value)" class="form-control "autofocus autocomplete required placeholder="Ingrese cantidad máxima" pattern="[0-9]{5}">
                                                    <p class="help-block" ></p>
                                                    <br/>
                                                    <label>Control Mínimo</label>
                                                    <input onKeyup="isInteger(this.value)" class="form-control"autofocus autocomplete required placeholder="Ingrese cantidad mínima" pattern="[0-9]{5}">
                                                    <p class="help-block"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.panel -->
                                </div>
                                <!-- /.col-lg-12 -->
                            </div>
                    </c:forEach>
                    <!-- /.row -->
                    <div align=right>
                        <p>
                            <button type="submit" class="btn btn-success" >Actualizar</button>
                        </p>
                    </div>
                </div>
            </form>
        </div>

        <!-- jQuery -->

        <%@include file="inventariosFooter.jsp" %>

    </body>
</html>
