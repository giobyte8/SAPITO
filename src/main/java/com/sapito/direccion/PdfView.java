/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.ByteArrayOutputStream;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.view.AbstractView;

/**
 *
 * @author K-PB-C05-L01
 */
public abstract class PdfView extends AbstractView {

     boolean bandera=true;
    
    public PdfView() {
        setContentType("application/pdf");
    }
   

    @Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ByteArrayOutputStream baos = createTemporaryOutputStream();
        Document document = new Document(PageSize.LETTER);
        PdfWriter pdfWriter = PdfWriter.getInstance(document, baos);
        pdfWriter.setViewerPreferences(PdfWriter.ALLOW_PRINTING | PdfWriter.PageLayoutSinglePage);

        
        document.open();
        buildPdfDocument(model, document, pdfWriter, request, response);
        document.close();

        response.setHeader("Content-Disposition", "attachment; filename=" + model.get("filename").toString() + ".pdf");
        //response.setContentLength(baos.size());
        System.out.println("size:" + baos.size());
        writeToResponse(response, baos);
        


    }

    protected abstract void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter pdfWriter,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
}



