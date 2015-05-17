/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
//import edu.it.toluca.is.model.Producto;
import com.sapito.direccion.TextoPdf;
import java.awt.print.Book;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author K-PB-C05-L01
 */
public class PdfBuildertextV extends PdfView {

    @Override
    protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter pdfWriter, HttpServletRequest request, HttpServletResponse response) throws Exception {

        Font font1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 30);
        font1.setColor(BaseColor.BLACK);
        Font font2 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 24);
        font2.setColor(BaseColor.BLACK);
        document.add(new Paragraph("TAILS 2015", font1));
        document.add(new Paragraph("Reportes Dirección\n", font2));
        TextoPdf x = (TextoPdf) model.get("todoTexto");
//        System.out.println(x.getTodoTexto());
        document.add(new Paragraph(x.getTodoTexto()));
//
//        List<Book> listBooks = (List<Book>) model.get("listBooks");
//
//        document.add(new Paragraph("\nReporte de Ventas\n"));
//        PdfPTable table = new PdfPTable(2);
//        table.setWidthPercentage(100.0f);
//        table.setWidths(new float[]{3.0f, 2.0f});
//        table.setSpacingBefore(10);
//
//        // define font for table header row
//        Font font = FontFactory.getFont(FontFactory.COURIER_BOLD);
//        font.setColor(BaseColor.WHITE);
//
//
//        PdfPCell cell = new PdfPCell();
//        cell.setBackgroundColor(BaseColor.BLUE);
//        cell.setPadding(5);
//
//
//        cell.setPhrase(new Phrase("Categoria", font));
//        table.addCell(cell);
//
//        cell.setPhrase(new Phrase("Monto", font));
//        table.addCell(cell);
//        
//
//        document.add(table);

    }

}
