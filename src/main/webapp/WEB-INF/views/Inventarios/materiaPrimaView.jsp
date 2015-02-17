<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper"> 
            
            <%@include file="Menu/menuInventarios.jsp"%>

            <form>
                <div id="page-wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Máximos y Mínimos</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Control máximo y mínimos  de materia prima 
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="dataTable_wrapper">
                                        <div class="form-group">
                                            <label>Selecciona un producto</label>
                                            
                                            <select class="form-control">
                                                <option>Producto 1</option>
                                                <option>Producto 2</option>
                                                <option>Producto 3</option>
                                                <option>Producto 4</option>
                                                <option>Producto 5</option>
                                            </select>

                                            <label>Control Máximo</label>
                                            <input onKeyup="isInteger(this.value)" class="form-control "autofocus autocomplete required placeholder="Ingrese cantidad máxima" pattern="[0-9]{5}">
                                            <p class="help-block" ></p>

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
                    <!-- /.row -->
                    <div align=right>
                        <p>
                            <button type="submit" class="btn btn-primary" >Actualizar</button>
                            <button type="button" class="btn btn-danger">Cancelar</button>              
                        </p>
                    </div>
            </form>

            <!-- jQuery -->

            <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

            <!-- Custom Theme JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>
            
            <script type="text/javascript">
                function isInteger(s)
                {
                    var i;
                    s = s.toString();
                    for (i = 0; i < s.length; i++)
                    {
                        var c = s.charAt(i);
                        if (isNaN(c))
                        {
                            alert("Given value is not a number");
                            return false;
                        }
                    }
                    return true;
                }
            </script>

    </body>

</html>
