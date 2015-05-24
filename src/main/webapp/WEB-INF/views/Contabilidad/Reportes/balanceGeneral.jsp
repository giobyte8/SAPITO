

<%@page import="com.lowagie.text.Cell"%>
<%@page import="java.net.URL"%>
<%@page import="com.itextpdf.text.Font.FontFamily"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.PageSize"%>
<%@page import="com.itextpdf.text.pdf.PdfImportedPage"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.itextpdf.text.pdf.PdfStamper"%>
<%@page import="com.itextpdf.text.pdf.PdfReader"%>
<%@page import="com.itextpdf.text.pdf.PdfContentByte"%>
<%@page import="javax.swing.ImageIcon"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPito</title>

        <!-- Bootstrap Core CSS -->
        <link href="../resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../resources/css/libs/sb-admin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper">           
          
            <!-- Page Content -->
            <div id="page-wrapper">

                <%@ page trimDirectiveWhitespaces="true" %>          
                <h1>TESTING</h1>

                <%    response.setContentType("application/pdf");
                    Document document = new Document();
                    try {
                        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                        PdfWriter.getInstance(document, buffer);
                        document.open();
                        document.addTitle("Sapito PDFs");
                        document.addSubject("Pdf de sapito");
                               
                        //------------------------ TAIS  ______________________________
                        Image tais = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/tais-banner.jpg"));
                        document.add(tais);
                                                
                        //---------------------  BODY    ---------------------------------------------------------
                        Image body = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/body.png"));
                        body.setAlignment( Image.UNDERLYING);
                        body.setTransparency(new int[]{ 0x00, 0x10 });
                        body.setAbsolutePosition(50, 250);
                        document.add(body);
                        //-------------------------------------------------------------------------------------------
                        Image footer = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/footer.jpg"));
                        footer.setAbsolutePosition(50, 20);
                        document.add(footer);
                        //----------------------  TITLE ---------------------------
                        String titulo="Balance General"; //Cambiar el titulo del PDF aqui
                        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
                        Chunk c = new Chunk(titulo + " \n ", f);
                        c.setBackground(BaseColor.WHITE);                        
                        Paragraph title = new Paragraph(c);
                        title.setAlignment(Element.ALIGN_CENTER);
                        //-------------------------  CONTENIDO -------------------------------------------------------
                        document.add(title);  //Titulo del PDF
                        PdfPTable table = new PdfPTable(1);
                                                
                        table.addCell("Hola");                        
                        table.addCell("Soy");
                        table.addCell("el");
                        table.addCell("pdf");
                        table.addCell("del");
                        table.addCell("sapito");                                            
                        document.add(table);
                        
                        
                        
                        
                        
                        
                        //-------------------------- FIN CONTENIDO -----------------
                        document.close();

                        DataOutputStream dataOutput = new DataOutputStream(response.getOutputStream());
                        byte[] bytes = buffer.toByteArray();
                        response.setContentLength(bytes.length);
                        for (int i = 0; i < bytes.length; i++) {
                            dataOutput.writeByte(bytes[i]);
                        }

                        dataOutput.flush();
                        dataOutput.close();
                        return;
                    } catch (DocumentException e) {
                        e.printStackTrace();
                    }

                %>


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

    </body>

</html>

