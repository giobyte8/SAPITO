<%-- 
    Document   : catalogoPersonal
    Created on : 14/02/2015, 03:42:42 AM
    Author     : Edgar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="catalogoPersonal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Consulta Personal</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12 text-left">
                        <div class="col-md-6">
                            <div class="form-group ">                                                
                                <select class="form-control">
                                    <option>
                                        Busca Categoría
                                    </option>
                                    <option>
                                        CA01
                                    </option>
                                    <option>
                                        CA02
                                    </option>
                                    <option>
                                        CA03
                                    </option>
                                </select>
                            </div>  
                        </div>

                        <div class="col-md-6">
                            <div class="form-group input-group">                                                
                                <input type="text" class="form-control" placeholder="Busca Nombre">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>     
                        </div>             
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Marca</th>
                    <th>Presentación</th>
                    <th>Descripción</th>
                    <th>Opciones</th>                                                    
                    </thead>
                    <tbody>
                        <tr>
                            <td>OP02</td>
                            <td>Coca Cola</td>
                            <td>Coca</td>
                            <td>600 ml</td>
                            <td>Bebida sumamente deliciosa</td>
                            <td>
                                <div align="center">
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" class="btn btn-primary btn-sm">Seleccionar</button>
                                    </div>

                                </div>

                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>                
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
