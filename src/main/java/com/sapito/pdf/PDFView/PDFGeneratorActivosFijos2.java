/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.pdf.PDFView;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfImportedPage;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfWriter;
//import static com.lowagie.text.Annotation.URL;
import com.lowagie.text.Cell;
//import static com.lowagie.text.ElementTags.URL;
//import static com.lowagie.text.pdf.PdfName.URL;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.net.URL;
//import static javafx.scene.input.DataFormat.URL;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

/**
 *
 * @author Erika
 */
public class PDFGeneratorActivosFijos2 {
        public void crearPDFDepreciacion(
            HttpServletResponse hsr1) throws Exception {
        Document dcmntaf = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(dcmntaf, baos);

        dcmntaf.open();
        dcmntaf.open();
        dcmntaf.addTitle("Sapito PDFs");
        dcmntaf.addSubject("Pdf de sapito");

        //------------------------ TAIS  ______________________________
        Image tais = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/tais-banner.jpg"));
        dcmntaf.add(tais);

        //---------------------  BODY    ---------------------------------------------------------
        Image body = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/body.png"));
        body.setAlignment(Image.UNDERLYING);
        body.setTransparency(new int[]{0x00, 0x10});
        body.setAbsolutePosition(50, 250);
        dcmntaf.add(body);
        //-------------------------------------------------------------------------------------------
        Image footer = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/footer.jpg"));
        footer.setAbsolutePosition(50, 20);
        dcmntaf.add(footer);
        //----------------------  TITLE ---------------------------
        String titulo = "Reporte de Depreciación"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);

        String titulo2 = "Reporte de Activos Fijos por Tipo"; //Cambiar el titulo del PDF aqui
        Font f2 = new Font(FontFamily.HELVETICA, 12.0f, Font.NORMAL, BaseColor.BLACK);
        Chunk c2 = new Chunk(titulo2 + " \n ", f2);
        c2.setBackground(BaseColor.WHITE);
        Paragraph title2 = new Paragraph(c2);
        title2.setAlignment(Element.ALIGN_LEFT);
        //-------------------------  CONTENIDO -------------------------------------------------------
        dcmntaf.add(title);  //Titulo del PDF
        dcmntaf.add(title2);
        PdfPTable table = new PdfPTable(4);
//                                 PdfPCell cell;
//                            cell = new PdfPCell(new Phrase("Tipo de A", FontFactory.getFont("TIMES_ROMAN", 12, Font.BOLD, BaseColor.BLACK)));                     
//                        table.addCell(cell);                        
        table.addCell("Tipo de Activo fijo");
        table.addCell("Valor Original");
        table.addCell("Depreciación Actual ");
        table.addCell("Valor Actual");
        table.addCell("null");
        table.addCell("null");
        table.addCell("null");
        table.addCell("null");

        dcmntaf.add(table);

        String titulo3 = "Reporte Total de Activos Fijos"; //Cambiar el titulo del PDF aqui
        Font f3 = new Font(FontFamily.HELVETICA, 12.0f, Font.NORMAL, BaseColor.BLACK);
        Chunk c3 = new Chunk(titulo3 + " \n ", f3);
        c3.setBackground(BaseColor.WHITE);
        Paragraph title3 = new Paragraph(c3);
        title3.setAlignment(Element.ALIGN_LEFT);
        dcmntaf.add(title3);

        PdfPTable table2 = new PdfPTable(3);
//                                 PdfPCell cell;
//                            cell = new PdfPCell(new Phrase("Tipo de A", FontFactory.getFont("TIMES_ROMAN", 12, Font.BOLD, BaseColor.BLACK)));                     
//                        table.addCell(cell);                        
        table2.addCell("Valor Original Total");
        table2.addCell("Depreciación Anual Total");
        table2.addCell("Valor Total");
        table2.addCell("null");
        table2.addCell("null");
        table2.addCell("null");
        
        dcmntaf.add(table2);

        //-------------------------- FIN CONTENIDO -----------------
        dcmntaf.close();

        dcmntaf.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
}
