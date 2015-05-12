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
        <title>SAPito - Empresa Nacional</title>
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
                                Empresas Nacionales
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
                        <%  }else
                                {
                                    %>
                        <div class="alert alert-success" role="alert" style="text-align: center">Modificacion Exitosa</div>            
                                    <%
                                }
                                
                            }
                        %>

                        <a href="/SAPITO/logistica/empresa/altaEmpresa"><button class="btn btn-success" type="button">Nueva empresa</button></a>
                        <a href="/SAPITO/logistica/pdf?output=pdf" target="_blank"><button class="btn btn-success" type="button">pdf</button></a>
                    </div>

                    <!-- Data table -->
                    <br/><br/>

                    <table id="tnacional" class="table table-bordered table-hover 
                           table-striped table-responsive" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <!--                <th>Camiones</th>  -->                      
                                <th>Camiones</th>
                                <th>Empresa</th>
                                <th>RFC</th>
                                <th>Pais</th>
                                <th>Ciudad</th>                      
                                <th>Detalles</th>
                                <!--                <th>Opciones</th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${empresas}" var="empresa">
                                <tr>
                                    <td style="text-align: center;">
                                        <a href="/SAPITO/logistica/empresa/camiones?empresaid=${empresa.id}">
                                            <i class="btn-default fa fa-fw fa-automobile" ></i>
                                        </a>
                                    </td>
                                    <td>${empresa.nombreEmpresa}</td>                                
                                    <td>${empresa.rfc}</td>                                
                                    <td>${empresa.pais}</td>                                
                                    <td>${empresa.ciudad}</td>                                                                            
                                    <td style="text-align: center;">
                                        <a href="#">
                                            <i class="btn-default fa fa-fw fa-search" 
                                               data-toggle="modal" data-target="#cts-modal${empresa.id}"></i></a>
                                    </td>
                                </tr>                             
                            </c:forEach>                
                        </tbody>
                    </table>



                    <!-- Modal dialog para detalles de empresas -->
                    <c:forEach items="${empresas}" var="empresa">
                        <div id="cts-modal${empresa.id}" class="modal fade" tabindex="-1" role="dialog" 
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
                                                        <h3 class="panel-title">Datos de la Empresa</h3>
                                                    </div>                                                                                                                              
                                                    <div class="panel-success">
                                                        <div class="col-lg-6 text-left">


                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-nombreEmpresa">Nombre(s) de la Empresa</label>                                                
                                                                <input value="${empresa.nombreEmpresa}" readonly="" path="nombreEmpresa" name="nombreEmpresa" id="fnoc-nombreEmpresa" type="text" class="form-control" placeholder="Nombe de la empresa" />                                                
                                                            </div>

                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-pais">Pais</label>                                                
                                                                <input value="${empresa.pais}" readonly="" path="pais" name="pais" id="fnoc-pais" type="text" class="form-control" placeholder="Pais"/>

                                                            </div>
                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-ciudad">Ciudad</label>                                                
                                                                <input value="${empresa.ciudad}" readonly="" path="ciudad" name="ciudad" id="fnoc-ciudad" type="text" class="form-control" placeholder="Ciudad"/>

                                                            </div>                                            
                                                        </div>
                                                        <div class="col-lg-6 text-left">
                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-calle">Calle</label>                                                
                                                                <input value="${empresa.calle}" readonly="" path="calle" name="calle" id="fnoc-calle" type="text" class="form-control" placeholder="Calle"/>                                                
                                                            </div>
                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-numero">Numero</label>                                                
                                                                <input value="${empresa.numero}" readonly="" path="numero" name="numero" id="fnoc-numero" type="text" class="form-control" placeholder="Numero"/>                                                
                                                            </div>
                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-rfc">RFC</label>                                                
                                                                <input value="${empresa.rfc}" readonly="" path="rfc" name="rfc" id="fnoc-rfc" type="text" class="form-control" placeholder="RFC"/>

                                                            </div>

                                                            <div class="form-group has-success">
                                                                <label for="fnvoc-tipo">Tipo empresa</label>                                                
                                                                <c:if test="${empresa.tipo = true}">
                                                                    <input value="Nacional" readonly="" path="tipo" name="tipo" id="fnoc-tipo" type="text" class="form-control" placeholder="tipo"/>
                                                                </c:if>                                            
                                                                <c:if test="${empresa.tipo = false}">
                                                                    <input value="Extranjera" readonly="" path="tipo" name="tipo" id="fnoc-tipo" type="text" class="form-control" placeholder="tipo"/>
                                                                </c:if>                                                
                                                            </div>
                                                            <br>                                                
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
                                        <a href="/SAPITO/logistica/empresa/bajaEmpresa?empresaid=${empresa.id}">
                                            <button class="btn btn-success" type="button">Elimniar</button>
                                        </a>

                                        <a href="/SAPITO/logistica/empresa/modificaEmpresa?empresaid=${empresa.id}" data-toggle="modal">
                                            <button class="btn btn-success" type="button" >Actualizar</button>                                            
                                        </a>    
                                    </div>
                                    <!--fin pie-->
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                    





                </div>
            </div>
        </div>

        <!-- Footer and scripts -->



        <%@include file="logisticaFooter.jsp" %>

        <script >
            $(document).ready(function () {
                activatenb('nb-nacional');
                $('#tnacional').DataTable();
            });
        </script>
    </body>
</html>
