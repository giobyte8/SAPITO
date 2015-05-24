<%-- 
    Document   : buscarProducto
    Created on : 22-feb-2015, 22:08:25
    Author     : Elizabeth
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
                                Productos Materia Prima
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
                                <th>Cantidad</th>
                                <th>Fecha entrada</th>
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${inventario}" var="inventario">
                                <tr>
                                    <td>${inventario.codigoInventario}</td>
                                    <td>${inventario.nombre}</td>
                                    <td>${inventario.cantidad}</td>
                                    <td>${inventario.fechaEntrada}</td>
                                    <td>
                                        <button class="btn btn-xs btn-success" type="button" 
                                                data-toggle="modal" data-target="#cts-modal${inventario.id}">
                                            Baja
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
                            <h4 class="modal-title">Detalles de producto</h4>
                        </div>
                        <div class="modal-body">
                            <h4>Datos del producto:</h4>

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
                                    <br/><label>Tipo de producto</label>
                                    <input type="text" class="form-control" readonly value="${inventario.tipoProducto}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Cantidad Actual</label>
                                    <input id="cant-actual${inventario.id}" type="number" 
                                           class="form-control" readonly value="${inventario.cantidad}"/>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Cantidad a quitar </label>
                                    <input id="cant-aquitar${inventario.id}" type="number" class="form-control" />
                                </div>
                            </div>



                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="actualizarCantidad(${inventario.id})">
                                Actualizar
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>        
            
           
            <c:forEach items="${inventario}" var="inventario">
            <div id="modificar-modal${inventario.id}" class="modal fade" tabindex="-1" role="dialog" 
                 aria-labelledby="inventario-modal-title" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                            </button>
                            <h4 class="modal-title">Detalles de producto</h4>
                        </div>
                        <div class="modal-body">
                            <h4>Datos del producto:</h4>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Código inventario</label>
                                    <input  id="codigo${inventario.id}" type="text" class="form-control"  value="${inventario.codigoInventario}"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Nombre</label>
                                    <input id="nombre${inventario.id}" type="text" class="form-control"  value="${inventario.nombre}"/>
                                </div>
                            </div>

                                <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Precio Unitario</label>
                                    <input id="precio${inventario.id}" type="number" 
                                           class="form-control"  value="${inventario.precioUnitario}"/>
                                </div>
                                </div>
                                
                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Cantidad</label>
                                    <input id="cantidad${inventario.id}" type="number" 
                                           class="form-control"  value="${inventario.cantidad}"/>
                                </div>
                                </div>
                                
                                <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Ubicacion</label>
                                    <input id="ubicacion${inventario.id}" type="text" 
                                           class="form-control"  value="${inventario.ubicacion}"/>
                                </div>
                            </div>
                                
                               <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Fecha de entrada </label>
                                    <input  id="fechaen${inventario.id}" type="text" class="form-control"  value="${inventario.fechaEntrada}"/>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <br/><label>Fecha de producción </label>
                                    <input id="fechapro${inventario.id}" type="text" class="form-control" readonly value="${inventario.fechaProduccion}"/>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="modificar(${inventario.id})">
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

            function actualizarCantidad(invId)
            {
                var cantidadActual = $("#cant-actual"+invId).val();
                var cantidadAQuitar = $("#cant-aquitar"+invId).val();

                if (+cantidadAQuitar > +cantidadActual) {
                    alert("La cantidad a quitar no debe ser mayor a la cantidad actual");
                }
                else {
                    var url = "actualizarcantidad?id=" + invId + "&cantAQuitar=" + cantidadAQuitar;
                    window.location.href = url;
                }
            }
            
            function modificar(inId){
                var idIn = $("#codigo"+inId).val();
                var nombre1 = $("#nombre"+inId).val();
                var precio1 = $("#precio"+inId).val();
                var cantidad1 = $("#cantidad"+inId).val();
                var ubicacion1 = $("#ubicacion"+inId).val();
                var fechaen1 = $("#fechaen"+inId).val();
                var fechapro1 = $("#fechapro"+inId).val();
                  var todo = "&nombre=" + nombre1 +"&precio=" + precio1;   
        
                    var url = "modificarMateria?id=" + inId + todo  ;
                    window.location.href = url; 
            }
            
        </script>
    </body>
</html>

