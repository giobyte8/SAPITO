package com.sapito.logistica;



import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPCellEvent;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import java.awt.Color;

public class PdfRevenueReportView extends AbstractPdfView
{

	@Override
	protected void buildPdfDocument(Map model, Document document,
			PdfWriter writer, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
                
//                Font.COURIER
                        
                document.open();
                Paragraph p1=generaParrafo("Nombre de la empresa xxx",14,Font.BOLD,Color.BLACK,Element.ALIGN_CENTER,20);
                document.add(p1);
                
                Paragraph p2=generaParrafo("Orden de envio: No :xxx",13,Font.BOLD,Color.BLACK,Element.ALIGN_CENTER,20);
                document.add(p2);
                
                Paragraph p3=generaParrafo("Fecha de envio: xxx",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p3);
                //Tabla
                
                PdfPTable tabla=new PdfPTable(5);
                
                PdfPCell celda1=new PdfPCell(generaParrafo("No.", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                celda1.setBackgroundColor(new Color(30, 144, 255));
                PdfPCell celda2=new PdfPCell(generaParrafo("ARTICULO", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                celda2.setBackgroundColor(new Color(30, 144, 255));
                PdfPCell celda3=new PdfPCell(generaParrafo("CANTIDAD", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                celda3.setBackgroundColor(new Color(30, 144, 255));
                PdfPCell celda4=new PdfPCell(generaParrafo("PRECIO UNITARIO", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                celda4.setBackgroundColor(new Color(30, 144, 255));
                PdfPCell celda5=new PdfPCell(generaParrafo("PRECIO TOTAL", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                celda5.setBackgroundColor(new Color(30, 144, 255));
                
                tabla.addCell(celda1);
                tabla.addCell(celda2);
                tabla.addCell(celda3);
                tabla.addCell(celda4);
                tabla.addCell(celda5);
                
                for (int i = 0; i < 10; i++) 
                {
                    if (i%2 == 0) 
                    {
                        PdfPCell celda111 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda111.setBackgroundColor(new Color(135, 206, 250));
                        PdfPCell celda222 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda222.setBackgroundColor(new Color(135, 206, 250));
                        PdfPCell celda333 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda333.setBackgroundColor(new Color(135, 206, 250));
                        PdfPCell celda444 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda444.setBackgroundColor(new Color(135, 206, 250));
                        PdfPCell celda555 = new PdfPCell(generaParrafo("111", 12,Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda555.setBackgroundColor(new Color(135, 206, 250));
                        
                        tabla.addCell(celda111);
                        tabla.addCell(celda222);        
                        tabla.addCell(celda333);
                        tabla.addCell(celda444);
                        tabla.addCell(celda555);
                    }else
                    {
                        PdfPCell celda111 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda111.setBackgroundColor(new Color(176, 196, 222));
                        PdfPCell celda222 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda222.setBackgroundColor(new Color(176, 196, 222));
                        PdfPCell celda333 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda333.setBackgroundColor(new Color(176, 196, 222));
                        PdfPCell celda444 = new PdfPCell(generaParrafo("111", 12, Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda444.setBackgroundColor(new Color(176, 196, 222));
                        PdfPCell celda555 = new PdfPCell(generaParrafo("111", 12,Font.COURIER, Color.BLACK, Element.ALIGN_CENTER, 10));
                        celda555.setBackgroundColor(new Color(176, 196, 222));
                        
                        tabla.addCell(celda111);
                        tabla.addCell(celda222);        
                        tabla.addCell(celda333);
                        tabla.addCell(celda444);
                        tabla.addCell(celda555);
                    }
                }
                
                
                PdfPCell celda11=new PdfPCell(generaParrafo(" ", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                PdfPCell celda22=new PdfPCell(generaParrafo(" ", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                PdfPCell celda33=new PdfPCell(generaParrafo(" ", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                PdfPCell celda44=new PdfPCell(generaParrafo("COSTO TOTAL", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                PdfPCell celda55=new PdfPCell(generaParrafo("956 ", 12, Font.BOLD, Color.BLACK, Element.ALIGN_CENTER, 10));
                
                tabla.addCell(celda11);
                tabla.addCell(celda22);
                tabla.addCell(celda33);
                tabla.addCell(celda44);
                tabla.addCell(celda55);
                
                document.add(tabla);
                
                Paragraph p44=generaParrafo(" ",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p44);
                
                Paragraph p4=generaParrafo("Recibe: xxx",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p4);
                Paragraph p444=generaParrafo("Firma:____________________________________________",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p444);
                
                Paragraph p5=generaParrafo("Observaciones:",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p5);
                Paragraph p6=generaParrafo("_______________________________________________________________________________\n\n"
                        + "_______________________________________________________________________________\n",12,Font.COURIER,Color.BLACK,Element.ALIGN_LEFT,20);
                document.add(p6);
            
                
//		Map<String,String> revenueData = (Map<String,String>) model.get("revenueData");
//		
//		Table table = new Table(2);
//		table.addCell("Month");
//		table.addCell("Revenue");
//		
//		for (Map.Entry<String, String> entry : revenueData.entrySet()) {                        
//			table.addCell(entry.getKey());
//			table.addCell(entry.getValue());
//			
//        }
		
//		document.add(table);
	}
        
        public Paragraph generaParrafo(String Texto,int size,int tipo,Color color,int alineacion,int espacio)
        {
            Paragraph parrafo;
            //parrafo = new Paragraph(Texto,FontFactory.getFont(FontFactory.TIMES_ROMAN,size,tipo,color));
            parrafo=new Paragraph(size, Texto,FontFactory.getFont(FontFactory.TIMES_ROMAN,size,tipo, Color.BLACK));
            parrafo.setAlignment(alineacion);
            parrafo.setSpacingAfter(espacio);
            return parrafo;
        }
}