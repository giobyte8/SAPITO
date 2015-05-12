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

/**
 *
 * @author giovanni
 */
public class PDFGeneratorVentas
{

    public void crearPDFFactura(
            HttpServletResponse hsr1) throws Exception
    {
        Document dcmnt = new Document();
        
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(dcmnt, baos);
        
        dcmnt.open();
        dcmnt.add(new Chunk("Title: Facturando | SAPITO"));
        dcmnt.close();
        
        byte[] bytes = baos.toByteArray();
        
        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
    
}
