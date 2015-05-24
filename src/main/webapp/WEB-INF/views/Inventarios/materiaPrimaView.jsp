<%-- 
    Document   : buscarProducto
    Created on : 22-feb-2015, 22:08:25
    Author     : barajas
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

                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Maximo y Minimo
                            </h1>
                        </div>
                    </div>

                    <!-- Data table -->
                    <table id="tinventario" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Código inventario</th>
                                <th>Nombre</th>
                                <th>Maximo</th>
                                <th>Minimo</th>
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${inventario}" var="inventario">
                                <tr>
                                    <td>${inventario.codigoInventario}</td>
                                    <td>${inventario.nombre}</td>
                                    <td>${inventario.maximo}</td>
                                    <td>${inventario.minimo}</td>
                                    <td>
                                        <button class="btn btn-xs btn-success" type="button" 
                                                data-toggle="modal" data-target="#cts-modal${inventario.id}">
                                            Modificar
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

        <c:forEach items="${inventario}" var="inventario">
            <div id="cts-modal${inventario.id}" class="modal fade" tabindex="-1" role="dialog" 
                 aria-labelledby="inventario-modal-title" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                            </button>
                            <h4 class="modal-title">Maximos y Minimos</h4>
                        </div>
                        <div class="modal-body">
                            <h4>Datos de maximo y minimo:</h4>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Código inventario</label>
                                    <input type="text" class="form-control" readonly value="${inventario.codigoInventario}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Nombre</label>
                                    <input type="text" class="form-control" readonly value="${inventario.nombre}"/>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Maximo Actual</label>
                                    <input type="text" class="form-control" readonly value="${inventario.maximo}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Minimo Actual</label>
                                    <input id="cant-actual${inventario.id}" type="number" 
                                           class="form-control" readonly value="${inventario.minimo}"/>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Maximo a modificar </label>
                                    <input id="max-mod${inventario.id}" type="number" class="form-control" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Minimo a modificar</label>
                                    <input id="min-mod${inventario.id}" type="number" class="form-control" required />
                                </div>
                            </div>



                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="maxminact(${inventario.id})" >
                                Actualizar
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>        

        <%@include file="inventariosFooter.jsp" %>
        <script >
            $(document).ready(function () {
                $('#tinventario').DataTable();
            });

            function maxminact(invId)
            {
                var maxamod = $("#max-mod" + invId).val();
                var minamod = $("#min-mod" + invId).val();
                console.log(maxamod + " - " + minamod);
                if (+maxamod <=0 && +minamod  <=0  ||+maxamod <=0 || +minamod <=0) {
                    alert("La cantidad a modificar debe ser al menos 1");
                }
                else {
                    var url = "actualizarmaximoma?id=" + invId + "&maxMod=" + maxamod + "&minMod=" + minamod;
                window.location.href = url;
                }
        
       
            }
        </script>
    </body>
</html>

