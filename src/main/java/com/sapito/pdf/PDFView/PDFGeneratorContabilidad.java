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
import org.springframework.ui.Model;
/**
 *
 * @author Raf
 */
public class PDFGeneratorContabilidad 
{
    
    public void crearEstadoResultados(
            HttpServletResponse hsr1, String ingresos,String cVenta,String cGeneral,String cImpu,String cImpTot) throws Exception {
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
        String titulo = "Estado de Resultados"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF
        PdfPTable table = new PdfPTable(2);

        table.addCell("Ingresos" );
        table.addCell(ingresos);//valor
        table.addCell("Costo de Venta" );
        table.addCell(cVenta);//valor
        table.addCell("Costos Generales" );
        table.addCell(cGeneral);//valor
        table.addCell("Impuestos de Ingresos" );
        table.addCell(cImpu);//valor
        table.addCell("Impuesto de Costos Totales" );
        table.addCell(cImpTot);//valor
        document.add(table);
        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
    
    
    public void crearVariacionContable(
            HttpServletResponse hsr1, String sInicial,String aumento,String utilidad,String disminucion,String perdidas,String sFinal ) throws Exception {
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
        String titulo = "Variaciones de Capital Contable"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF
        PdfPTable table = new PdfPTable(2);

        table.addCell("Saldo al inicio del ejercicio" );
        table.addCell(sInicial);//valor
        table.addCell("Aumentos" );
        table.addCell(aumento);//valor
        table.addCell("Utilidades" );
        table.addCell(utilidad);//valor
        table.addCell("Disminuciones" );
        table.addCell(disminucion);//valor
        table.addCell("Perdidas" );
        table.addCell(perdidas);//valor
        table.addCell("Saldo al final del ejercicio" );
        table.addCell(sFinal);//valor
        
        document.add(table);
        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }

public void crearFlujo(
            HttpServletResponse hsr1,String operacion, String sInicio,String sFin) throws Exception {
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
        String titulo = "Flujo de Efectivo"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF
        PdfPTable table = new PdfPTable(2);

        table.addCell("Operación" );
        table.addCell(operacion);//valor
        table.addCell("Saldo al inicio del año" );
        table.addCell(sInicio);//valor
        table.addCell("Saldo al inicio del año" );
        table.addCell(sFin);//valor
        document.add(table);

        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }

public void crearBalance(
            HttpServletResponse hsr1,String aCirculante,String aNCirculante,String tActivos,String pasivo) throws Exception {
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
        String titulo = "Balance General"; //Cambiar el titulo del PDF aqui
        Font f = new Font(FontFamily.HELVETICA, 25.0f, Font.BOLD, BaseColor.BLACK);
        Chunk c = new Chunk(titulo + " \n ", f);
        c.setBackground(BaseColor.WHITE);
        Paragraph title = new Paragraph(c);
        title.setAlignment(Element.ALIGN_CENTER);
        //-------------------------  CONTENIDO -------------------------------------------------------
        document.add(title);  //Titulo del PDF
        PdfPTable table = new PdfPTable(2);

        table.addCell("Activo circulante" );
        table.addCell(aCirculante);//valor
        table.addCell("Activo no circulante" );
        table.addCell(aNCirculante);//valor
        table.addCell("total activos" );
        table.addCell(tActivos);//valor
        table.addCell("pasivo" );
        table.addCell(pasivo);//valor
        document.add(table);

        document.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }



    
    
}
