<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="inventariosHead.jsp" %>
        <title>SAPito</title>
    </head>
    <body>



        <div id="page-wrapper">
            <div class="container-fluid">

                <!-- Page title -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Materia Prima
                        </h1>  
                    </div>

                </div>

                <!-- Buttons bar -->
                

                <!-- Data table -->
                <br/><br/>

                <table id="tmateriaprima" class="table table-bordered table-hover 
                       table-striped table-responsive" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <!--                <th>Camiones</th>  -->                      
                            <th>Nombre</th>
                            <th>Codigo</th>
                            <th>Categoria</th>
                            <th>Cantidad</th>                                                
                            <th>Detalles</th>
                            <!--                <th>Opciones</th>-->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${inventarios}" var="inventario">
                            <tr>                                
                                <td>${inventario.nombre}</td>                                
                                <td>${inventario.codigoInventario}</td>                                
                                <td>${inventario.categoria}</td>                                
                                <td>${inventario.cantidad}</td>                                                                            
                                <td style="text-align: center;">
                                    <a href="/SAPITO/Inventarios/bajaMateriaPrima?id=${inventario.id}"><button class="btn btn-success" type="button">Eliminar</button></a>
                                </td>
                            </tr>                             
                        </c:forEach>                
                    </tbody>
                </table>



          






            </div>
        </div>



    <!-- jQuery -->

    <%@include file="inventariosFooter.jsp" %>
    <script >
            $(document).ready(function () {
                activatenb('nb-materiaprima');
                $('#materiaprima').DataTable();
            });
    </script>
</body>
</html>