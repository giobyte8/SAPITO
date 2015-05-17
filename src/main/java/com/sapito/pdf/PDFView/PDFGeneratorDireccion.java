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
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.sapito.db.entities.OrdenCompra;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.Producto;
import com.sapito.direccion.TextoPdf;
import java.util.List;
import java.util.Map;
import org.springframework.ui.Model;

/**
 *
 * @author giovanni
 */
public class PDFGeneratorDireccion {

    public double a,b;
    public void crearPDFFactura(
            Map<String, Object> model, HttpServletResponse hsr1,List<Producto> producto) throws Exception {
        Document document = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, baos);

        document.open();
        document.addTitle("Sapito PDFs");
        document.addSubject("Pdf de sapito");
        Font font1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 30);
        font1.setColor(BaseColor.BLACK);
        Font font2 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 24);
        font2.setColor(BaseColor.BLACK);
        document.add(new Paragraph("TAILS 2015", font1));
        document.add(new Paragraph("Reportes Dirección\n", font2));

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
        String titulo = "Reporte de Ventas"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF

        TextoPdf x = (TextoPdf) model.get("todoTexto");
        document.add(new Paragraph(x.getTodoTexto()));

        
        PdfPTable table = new PdfPTable(3);
        table.setWidthPercentage(100.0f);
        table.setWidths(new float[]{2.0f, 2.0f, 2.0f});
        table.setSpacingBefore(10);

        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.COURIER_BOLD);
        font.setColor(BaseColor.WHITE);

        // define table header cell
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(BaseColor.BLUE);
        cell.setPadding(5);

        // write table header 
        cell.setPhrase(new Phrase("Categoria", font));
        table.addCell(cell);

        cell.setPhrase(new Phrase("Marca", font));
        table.addCell(cell);
        
        cell.setPhrase(new Phrase("NombreProducto", font));
        table.addCell(cell);


        //List<Producto> usu = (List<Producto>) model.get("producto");
        //System.out.println(">USU:" + usu);
        //System.out.println(">USU:" + usu.size());
        for (int i = 0; i < producto.size(); i++) {
            table.addCell(producto.get(i).getCategoria());
            table.addCell(producto.get(i).getMarca());
            table.addCell(producto.get(i).getNombreProducto());
        }

        document.add(table);
        
        

        //-------------------------- FIN CONTENIDO -----------------
        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
    public void reporteventa(
            Map<String, Object> model, HttpServletResponse hsr1,List<OrdenVenta> ordenventa) throws Exception {
        Document document = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, baos);

        document.open();
        document.addTitle("Sapito PDFs");
        document.addSubject("Pdf de sapito");
        Font font1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 30);
        font1.setColor(BaseColor.BLACK);
        Font font2 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 24);
        font2.setColor(BaseColor.BLACK);
        document.add(new Paragraph("TAILS 2015", font1));
        document.add(new Paragraph("Reportes Dirección\n", font2));

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
        String titulo = "Reporte de Ventas"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF

        TextoPdf x = (TextoPdf) model.get("todoTexto");
        document.add(new Paragraph(x.getTodoTexto()));

        
        PdfPTable table = new PdfPTable(1);
        table.setWidthPercentage(100.0f);
        table.setWidths(new float[]{2.0f});
        table.setSpacingBefore(10);

        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.COURIER_BOLD);
        font.setColor(BaseColor.WHITE);

        // define table header cell
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(BaseColor.BLUE);
        cell.setPadding(5);

        // write table header 
        cell.setPhrase(new Phrase("Total de ventas en el dia", font));
        table.addCell(cell);

                
        
        for (int i = 0; i < ordenventa.size(); i++) {
            
            a=ordenventa.get(i).getMontoConCargos();
            b=a+b;
            
            
            
            
        }
        String bla = b + " ";
        table.addCell(bla);

        document.add(table);
        
        

        //-------------------------- FIN CONTENIDO -----------------
        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
    
    public void reportecompras(
            Map<String, Object> model, HttpServletResponse hsr1,List<OrdenCompra> ordenCompra) throws Exception {
        Document document = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, baos);

        document.open();
        document.addTitle("Sapito PDFs");
        document.addSubject("Pdf de sapito");
        Font font1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 30);
        font1.setColor(BaseColor.BLACK);
        Font font2 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 24);
        font2.setColor(BaseColor.BLACK);
        document.add(new Paragraph("TAILS 2015", font1));
        document.add(new Paragraph("Reportes Dirección\n", font2));

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
        String titulo = "Reporte de Compras"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF

        TextoPdf x = (TextoPdf) model.get("todoTexto");
        document.add(new Paragraph(x.getTodoTexto()));

        
        PdfPTable table = new PdfPTable(1);
        table.setWidthPercentage(100.0f);
        table.setWidths(new float[]{2.0f});
        table.setSpacingBefore(10);

        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.COURIER_BOLD);
        font.setColor(BaseColor.WHITE);

        // define table header cell
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(BaseColor.BLUE);
        cell.setPadding(5);

        // write table header 
        cell.setPhrase(new Phrase("Total de Compras en el dia", font));
        table.addCell(cell);

                
        
        for (int i = 0; i < ordenCompra.size(); i++) {
            
            a=ordenCompra.get(i).getCostoTotal();
            b=a+b;
            
            
            
            
        }
        String bla = b + " ";
        table.addCell(bla);

        document.add(table);
        
        

        //-------------------------- FIN CONTENIDO -----------------
        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }

    
    
}
