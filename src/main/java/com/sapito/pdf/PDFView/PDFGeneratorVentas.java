/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.pdf.PDFView;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.ByteArrayOutputStream;
import javax.servlet.http.HttpServletResponse;
 
 import com.lowagie.text.Cell;
 import java.net.URL;
 import com.itextpdf.text.Font.FontFamily;
 import com.itextpdf.text.BaseColor;
 import com.itextpdf.text.Chunk;
 import com.itextpdf.text.Font;
 import com.itextpdf.text.Element;
 import com.itextpdf.text.PageSize;
 import com.itextpdf.text.pdf.PdfImportedPage;
 import java.io.FileOutputStream;
 import com.itextpdf.text.pdf.PdfStamper;
 import com.itextpdf.text.pdf.PdfReader;
 import com.itextpdf.text.pdf.PdfContentByte;
 import javax.swing.ImageIcon;
 import com.itextpdf.text.Image;
 import com.itextpdf.text.Paragraph;
 import java.io.DataOutputStream;
 import java.io.ByteArrayOutputStream;
 import com.itextpdf.text.DocumentException;
 import com.itextpdf.text.pdf.PdfPTable;
 import com.itextpdf.text.pdf.PdfWriter;
 import com.itextpdf.text.Document;
/**
 *
 * @author giovanni
 */
public class PDFGeneratorVentas {

    public void crearPDFFactura(
            HttpServletResponse hsr1) throws Exception {
        Document document = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, baos);

        document.open();
        document.addTitle("Sapito PDFs");
        document.addSubject("Pdf de sapito");

        //------------------------ TAIS  ______________________________
        Image tais = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/tais-banner.jpg"));
        document.add(tais);

        //---------------------  BODY    ---------------------------------------------------------
        Image body = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/body.png"));
        body.setAlignment(Image.UNDERLYING);
        body.setTransparency(new int[]{0x00, 0x10});
        body.setAbsolutePosition(50, 250);
        document.add(body);
        //-------------------------------------------------------------------------------------------
        Image footer = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/footer.jpg"));
        footer.setAbsolutePosition(50, 20);
        document.add(footer);
        //----------------------  TITLE ---------------------------
        String titulo = "Facturas"; //Cambiar el titulo del PDF aqui
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

        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }

}
