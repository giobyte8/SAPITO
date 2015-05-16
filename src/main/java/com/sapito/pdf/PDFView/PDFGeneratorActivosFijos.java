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
public class PDFGeneratorActivosFijos {
    public void crearPDFFactura(
      HttpServletResponse hsr1) throws Exception
    {
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
                        body.setAlignment( Image.UNDERLYING);
                        body.setTransparency(new int[]{ 0x00, 0x10 });
                        body.setAbsolutePosition(50, 250);
                        dcmntaf.add(body);
                        //-------------------------------------------------------------------------------------------
                        Image footer = Image.getInstance(new URL("http://localhost:8080/SAPITO/resources/img/footer.jpg"));
                        footer.setAbsolutePosition(50, 20);
                        dcmntaf.add(footer);
                        //----------------------  TITLE ---------------------------
                        String titulo="Reporte de Inversion"; //Cambiar el titulo del PDF aqui
                        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
                        Chunk c = new Chunk(titulo + " \n ", f);
                        c.setBackground(BaseColor.BLACK);                        
                        Paragraph title = new Paragraph(c);
                        title.setAlignment(Element.ALIGN_CENTER);
                        //-------------------------  CONTENIDO -------------------------------------------------------
                        dcmntaf.add(title);  //Titulo del PDF
                        PdfPTable table = new PdfPTable(3);
//                                 PdfPCell cell;
//                            cell = new PdfPCell(new Phrase("Tipo de A", FontFactory.getFont("TIMES_ROMAN", 12, Font.BOLD, BaseColor.BLACK)));                     
//                        table.addCell(cell);                        
                        table.addCell("Soy");
                        table.addCell("el");
                        table.addCell("pdf");
                        table.addCell("del");
                        table.addCell("sapito");  
                        
                        dcmntaf.add(table);
                        
                        
                        
                        
                        
                        
                        //-------------------------- FIN CONTENIDO -----------------
                         dcmntaf.close();

        dcmntaf.close();
        
        byte[] bytes = baos.toByteArray();
        
        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
}
