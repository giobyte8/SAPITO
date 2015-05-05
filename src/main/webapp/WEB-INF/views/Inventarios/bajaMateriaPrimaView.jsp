<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>

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
            <div id="page-wrapper">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Materia Prima
                            </h1>
                        </div>
                    </div>
                    <!-- /.col-lg-4 -->
                    <div class="panel panel-default">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <h2 class="panel-title">Baja de materia prima </h2>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>ID</label> 
                                                <input onKeyup="isInteger(this.value)" class="form-control" autofocus placeholder="ID del producto" pattern="[0-9]{10}" required>
                                                <p class="help-block" ></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Nombre</label> 
                                                <input onKeyup="AllowAlphabet()" class="form-control" autofocus placeholder="Nombre de la materia prima" pattern="[a-z]{20}" required>  
                                                <p class="help-block" ></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Categor&iacute;a</label> 
                                                <div class="form-group input-group col-lg-12">
                                                    <select class="form-control">
                                                        <option>Categoría 1</option>
                                                        <option>Categoría 2</option>
                                                        <option>Categoría 3</option>
                                                        <option>Categoría 4</option>
                                                    </select>
                                                </div>  
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Cantidad</label> 
                                                <input onKeyup="isInteger(this.value)" class="form-control" autofocus placeholder="Cantidad dela materia prima" pattern="[0-9]{6}" required>  
                                                <p class="help-block" ></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 text-left">
                                            <div class="form-group">
                                                <label>Fecha de entrada</label>
                                                <input type="date" class="form-control" autofocus required>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Ubicaci&oacute;n</label> 
                                                <input onKeyup="AllowAlphabet()" class="form-control" autofocus placeholder="Ubicación de materia prima" pattern="[a-z]{40}" required>  
                                            </div>
                                        </div>
                                        <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>
                                        </div> 
                                    </div>  <!-- /#fin del panel -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- jQuery -->

        <%@include file="inventariosFooter.jsp" %>
    </body>
</html>