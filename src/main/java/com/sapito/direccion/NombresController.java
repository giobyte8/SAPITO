package com.sapito.direccion;

//import edu.it.toluca.is.beans.PdfBuilderC;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import static java.lang.System.out;
//import java.time.Instant;
import java.util.Calendar;
import java.util.Date;

public class NombresController {

    private static Archivo file;

//    public static void main(String[] args) throws IOException {
//        NombresController s = new NombresController();
//        System.out.println(s.generarNombre(2, 5));
//    }

    public String generarNombre(int tipo, int departamento) throws IOException {
        String datosArchivo = "REP" + evaluarTipo(tipo) + evaluarDepartamento(departamento) + obtenerFecha();
       // file = new Archivo(datosArchivo, tipo, departamento, obtenerFecha());
        //archivar();

        return datosArchivo;
    }

    private String evaluarTipo(int tipo) {
        switch (tipo) {
            case 1: //Reporte Mensual
                return "Men";

            case 2: //Reporte Semanal
                return "Sem";

            case 3: //Reporte a peticion
                return "Pet";
            default:
                return null;
        }
    }

    private String evaluarDepartamento(int dpto) {
        switch (dpto) {
            case 1: //Reporte de Direccion
                return "Dir";
            case 2: //Reporte de Compras
                return "Com";
            case 3: //Reporte de Ventas
                return "Ven";
            case 4: //Reporte de Inventarios
                return "Inv";
            case 5: //Reporte de RH
                return "Rh";
            case 6: //Reporte de Finanzas
                return "Fin";
            default:
                return null;
        }
    }

    private String obtenerFecha() 
    {
     Calendar f = Calendar.getInstance();
            
     int dia = f.get(Calendar.DATE);
     int mes =  f.get(Calendar.MONTH)+1;
     int año = f.get(Calendar.YEAR);
     int hora = f.get(Calendar.HOUR_OF_DAY);
     int minuto = f.get(Calendar.MINUTE);
     int secs = f.get(Calendar.SECOND);
     String fecha = dia+""+buscarMes(mes)+""+año+hora+"H"+minuto+"m"+secs+"s";
     System.out.println(fecha);
     return fecha;
        
    }

    private String evaluarDepartamento(Archivo doc) {
        System.out.println(doc.getDepartamento());
        switch (doc.getDepartamento()) {
            case 1: //Reporte de Direccion
                return "Direccion";
            case 2: //Reporte de Compras
                return "Compras";
            case 3: //Reporte de Ventas
                return "Ventas";
            case 4: //Reporte de Inventarios
                return "Inventarios";
            case 5: //Reporte de RH
                return "Recursos Humanos";
            case 6: //Reporte de Finanzas
                return "Finanzas";
            default:
                return null;
        }
    }

    private String buscarMes(int mes)
 {
  switch(mes)
       {
        case 1:
                  return "Ene";
        case 2:
                  return "Feb";
        case 3:
                  return "Mar";
        case 4:
                  return "Abr";
        case 5:
                  return "May";  
        case 6:
                  return "Jun";
        case 7:
                  return "Jul";
        case 8:
                  return "Ago";
        case 9:
                  return "Sep";
        case 10:
                  return "Oct";
        case 11:
                  return "Nov";  
        case 12:
                  return "Dic";
        default:
                return null;
       }
 }
    

    private String archivar() throws IOException {
        String content = "Funciona!!!!";
        File file = new File("/home/omar/Descargas/Reportes/" + evaluarDepartamento(this.file) + "/" + this.file.getNombre());
        System.out.println(file.getAbsolutePath());
        FileWriter fw = new FileWriter(file.getAbsoluteFile());
        BufferedWriter bw = new BufferedWriter(fw);
        bw.write(content);
       bw.close();
        String direccion;
        direccion =  this.file.getNombre();
//        PdfBuilder.class.
        return direccion;
        ///root/Archivos/Reportes
    }
    
}
