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
import static com.lowagie.text.pdf.PdfName.URL;
import com.sapito.activofijo.Depreciacion;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;

//import javafx.scene.paint.Color;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

/**
 *
 * @author Erika
 */
public class PDFGeneratorActivosFijos2
{
    

    float a;

    public void crearPDFDepreciacion(
            HttpServletResponse hsr1, ArrayList<HashMap> resultados,double granTotalValorActual , double granTotalValorOr) throws Exception {
        Document dcmntaf = new Document();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PdfWriter.getInstance(dcmntaf, baos);
        System.out.println(resultados.get(0).size());

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
        String titulo = "Reporte de Inversión"; //Cambiar el titulo del PDF aqui
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
        title2.setIndentationLeft(50);
        //-------------------------  CONTENIDO -------------------------------------------------------
        dcmntaf.add(title);  //Titulo del PDF
        dcmntaf.add(title2);
        PdfPTable table = new PdfPTable(3);

//                                 PdfPCell cell;
//                            cell = new PdfPCell(new Phrase("Tipo de A", FontFactory.getFont("TIMES_ROMAN", 12, Font.BOLD, BaseColor.BLACK)));                     
//                        table.addCell(cell);      
        table.addCell("Tipo de Activo fijo");
        table.addCell("Valor Original");
        
        table.addCell("Valor Actual");        
//        Iterator it = resultados.get(0).entrySet().iterator();
        for (int i = 0; i < resultados.size(); i++) {
            table.addCell(resultados.get(i).get("tipo").toString());
            table.addCell(resultados.get(i).get("valorOriginal").toString());
            
            table.addCell(resultados.get(i).get("valoreActual").toString());
        }        

//        while (it.hasNext()) {
//            Map.Entry e = (Map.Entry) it.next();
//            System.out.println(e.getKey() + " " + e.getValue());
//            
//            table.addCell(e.getValue().toString());
//        }

        

        dcmntaf.add(table);

        String titulo3 = "Reporte Total de Activos Fijos"; //Cambiar el titulo del PDF aqui
        Font f3 = new Font(FontFamily.HELVETICA, 12.0f, Font.NORMAL, BaseColor.BLACK);
        Chunk c3 = new Chunk(titulo3 + " \n ", f3);
        c3.setBackground(BaseColor.WHITE);

        Paragraph title3 = new Paragraph(c3);
        title3.setAlignment(Element.ALIGN_LEFT);
        title3.setIndentationLeft(50);
        dcmntaf.add(title3);

        PdfPTable table2 = new PdfPTable(2);
//                                 PdfPCell cell;
//                            cell = new PdfPCell(new Phrase("Tipo de A", FontFactory.getFont("TIMES_ROMAN", 12, Font.BOLD, BaseColor.BLACK)));                     
//                        table.addCell(cell);                        
        table2.addCell("Valor Original Total");        
        table2.addCell("Valor Total");
        table2.addCell(granTotalValorOr+"");
        table2.addCell(granTotalValorActual+"");
        

        dcmntaf.add(table2);

        PdfPTable table3 = new PdfPTable(1);
        table3.setWidthPercentage(100.0f);
        table3.setWidths(new float[]{2.0f});
        table3.setSpacingBefore(10);

        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.COURIER_BOLD);
        font.setColor(BaseColor.WHITE);

        // define table header cell
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(BaseColor.BLUE);
        cell.setPadding(5);

        // write table header 
        cell.setPhrase(new Phrase("Resultado", font));
        table3.addCell(cell);
        Depreciacion dep = new Depreciacion();

        String bla = a + " ";
        table3.addCell(bla);

        //-------------------------- FIN CONTENIDO -----------------
        dcmntaf.close();

        dcmntaf.close();

        byte[] bytes = baos.toByteArray();

        hsr1.setContentType("application/pdf");
        hsr1.setContentLength(bytes.length);
        hsr1.getOutputStream().write(bytes);
    }
}
