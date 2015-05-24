<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <%@include file="MenusCompras/Cabesa compras.jsp"%>

        <title>SAPito</title>

     
    </head>

    <body>

        <div id="wrapper">
            <%@include file="MenusCompras/Menude compras.jsp"%>

            <!-- Navigation -->


            <div id="page-wrapper" >

                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Módulo Compras
                            </h1>                        
                        </div>
                    </div>   


                </div><!-- Fin del tag del contenedor-->
                                <center><img  src ="../SAPITO/resources/img/compras.jpg" ></center> 

            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->




        <!-- jQuery -->
        <script src="../resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../resources/js/libs/sb-admin-2.js"></script>
        <%@include file="MenusCompras/Pie compras.jsp"%>

    </body>

</html>

