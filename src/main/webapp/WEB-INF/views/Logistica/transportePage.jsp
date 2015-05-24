<%-- 
    Document   : indexLogistica
    Created on : Feb 17, 2015, 4:33:38 AM
    Author     : nel
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="LogisticaHead.jsp" %>
        <title>SAPito - Camiones</title>
    </head>
    <body>
        <div id="wrapper">

            <!-- Navigation bar -->
            <%@include file="logisticaNavs.jsp" %>

            <!-- Page content -->

            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page title -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Camiones de la empresa " ${Empresa.nombreEmpresa} "
                            </h1>
                        </div>
                    </div>

                    <!-- Buttons bar -->
                    <div class="row">
                        <%
                            if (request.getAttribute("imprime") != null) {

                                if (request.getAttribute("imprime").equals("1")) {

                        %>                
                        <div class="alert alert-success" role="alert" style="text-align: center">Registro exitoso</div>
                        <%        }
                                if (request.getAttribute("imprime").equals("2")) 
                                {
                                    %>
                                 <div class="alert alert-success" role="alert" style="text-align: center">Modificacion exitoso</div>   
                                    <%
                                }
                            }
                        %>

                        <input class="btn btn-success" type="button" value="Nuevo camion"  onclick="location.href = '/SAPITO/logistica/transporteN?empresaid=${idempresa}'"/>

                    </div>

                    <!-- Data table -->
                    <br/><br/>
                    <table id="tcamiones" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>                
                                <th>Placas</th>
                                <th>Tipo de tranporte</th>
                                <th>Dimension</th>                
                                <th>Detalles</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${transportes}" var="transporte">
                                <tr>                                            
                                    <td>${transporte.placas}</td>                                
                                    <td>${transporte.tipotransporte}</td>                                
                                    <td>${transporte.dimension}</td>                                                                            
                                    <td style="text-align: center;"><a href="#">
                                            <i class="btn-default fa fa-fw fa-search" 
                                               data-toggle="modal" data-target="#cts-modal${transporte.id}"></i></a>
                                    </td>
                                </tr>                             
                            </c:forEach>


                            <!-- Modal dialog para detalles de clientes -->

                            <c:forEach items="${transportes}" var="transporte">
                            <div id="cts-modal${transporte.id}" class="modal fade" tabindex="-1" role="dialog" 
                                 aria-labelledby="cliente-modal-title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <!--cabecera--> 
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                                            </button>                
                                        </div>
                                        <!--fin cabecera-->

                                        <!--cuerpo-->
                                        <div class="modal-body">


                                            <div class="row">
                                                <div class="col-lg-12 text-left">
                                                    <div class="panel panel-success">
                                                        <div class="panel-heading">
                                                            <h3 class="panel-title">Datos del Transporte</h3>
                                                        </div>
                                                        <div class="panel-success">
                                                            <div class="col-lg-6 text-left">                                                      
                                                                <div class="form-group has-success">
                                                                    <label>Placas</label>
                                                                    <input class="form-control" value="${transporte.placas}" readonly="" maxlength="40" required>
                                                                </div>
                                                                <div class="form-group has-success">
                                                                    <label>Tipo de transporte</label>
                                                                    <input class="form-control" value="${transporte.tipotransporte}" readonly="" maxlength="40" required>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 text-left">
                                                                <div class="form-group has-success">
                                                                    <label>Dimensión</label>
                                                                    <input value="${transporte.dimension}" readonly="" class="form-control"  maxlength="40" required>
                                                                </div>
                                                                <div class="form-group has-success">
                                                                    <label>Costo por Dias</label>
                                                                    <input value="${transporte.costoDia}" readonly="" class="form-control"  maxlength="40" required>
                                                                </div>                                                                                                            
                                                                <div class="form-group has-success">
                                                                    <label>Disponible</label>                                                          

                                                                    <c:if test="${transporte.disponibleTransporte = true}">
                                                                        <input value="Si" readonly="" type="text" class="form-control"/>
                                                                    </c:if>                                            
                                                                    <c:if test="${transporte.disponibleTransporte = false}">
                                                                        <input value="No" readonly=""  type="text" class="form-control" />
                                                                    </c:if>

                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <!--fin cuerpo-->    

                                        <!--pie-->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" data-dismiss="modal">
                                                Cerrar
                                            </button>
                                            
                                            <a href="/SAPITO/logistica/bajaTransporte?id=${transporte.id}&empresaid=${idempresa}">
                                                <button class="btn btn-success" type="button">Elimniar</button>
                                            </a>

                                            <a href="/SAPITO/logistica/modificaTransporte?id=${transporte.id}&empresaid=${idempresa}" data-toggle="modal">
                                                <button class="btn btn-success" type="button" >Actualizar</button>                                            
                                            </a>    
                                        </div>
                                        <!--fin pie-->
                                    </div>
                                </div>
                            </div>
                        </c:forEach>    

                        </tbody>
                    </table>

                </div>
            </div>
        </div>

        <!-- Footer and scripts -->



        <%@include file="logisticaFooter.jsp" %>

        <script >
            $(document).ready(function () {
                activatenb('nb-camiones');
                $('#tcamiones').DataTable();
            });
        </script>
    </body>
</html>
