/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.activofijo;

import com.sapito.db.dao.GenericDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.sapito.db.entities.ActivoFijo;
import com.sapito.db.entities.Departamento;
import com.sapito.db.entities.Empleado;
import com.sapito.db.entities.HistorialActivoFijo;
import com.sapito.db.entities.Producto;
import com.sapito.db.entities.TipoActivoFijo;
import com.sapito.pdf.PDFView.PDFGeneratorActivosFijos;
import com.sapito.pdf.PDFView.PDFGeneratorActivosFijos2;
import com.sapito.ventas.VentasController;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
//import java.time.LocalDate;
//import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Usuario
 */
@Controller
public class ActivoFijoController
{

    private GenericDao<ActivoFijo> daoActivoFijo;
    private GenericDao<TipoActivoFijo> daoTipoActivoFijo;
    private GenericDao<Producto> daoProducto;
    private GenericDao<Empleado> daoEmpleado;
    private GenericDao<Departamento> daoDepartamento;
    private GenericDao<HistorialActivoFijo> daoHistorialActivoFijo;

    @Autowired
    public void setDaoActivoFijo(GenericDao<ActivoFijo> daoActivoFijo)
    {
        this.daoActivoFijo = daoActivoFijo;
        daoActivoFijo.setClass(ActivoFijo.class);
    }

    @Autowired
    public void setDaoTipoActivoFijo(GenericDao<TipoActivoFijo> daoTipoActivoFijo)
    {
        this.daoTipoActivoFijo = daoTipoActivoFijo;
        daoTipoActivoFijo.setClass(TipoActivoFijo.class);
    }

    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto)
    {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

    @Autowired
    public void setDaoEmpleado(GenericDao<Empleado> daoEmpleado)
    {
        this.daoEmpleado = daoEmpleado;
        daoEmpleado.setClass(Empleado.class);
    }

    @Autowired
    public void setDaoDepartamento(GenericDao<Departamento> daoDepartamento)
    {
        this.daoDepartamento = daoDepartamento;
        daoDepartamento.setClass(Departamento.class);
    }

    @Autowired
    public void setDaoHistorialActivoFijo(GenericDao<HistorialActivoFijo> daoHistorialActivoFijo)
    {
        this.daoHistorialActivoFijo = daoHistorialActivoFijo;
        daoHistorialActivoFijo.setClass(HistorialActivoFijo.class);
    }

    @RequestMapping(value = "activofijo", method = RequestMethod.GET)
    public String index(Model model)
    {
        return "ActivoFijo/indexactivofijo";
    }

    @RequestMapping(value = "alta", method = RequestMethod.GET)
    public String alta(Model model)
    {

        List<TipoActivoFijo> tipoAF = daoTipoActivoFijo.findAll();
        List<ActivoFijo> activos = daoActivoFijo.findBySpecificField("status", "SinAsignar", "equal", null, null);

        System.out.println("Enviamos: " + activos.size());

        model.addAttribute("tipoAF", tipoAF);
        model.addAttribute("activos", activos);
        return "ActivoFijo/alta";
    }

    @RequestMapping(value = "gdaAlta", method = RequestMethod.POST)
    public String regAlta(Model model, String tipoactivofijoS, String activoId,
            String fecha, String anosVidaUtil)
    {
        TipoActivoFijo tipoactivofijo = (TipoActivoFijo) daoTipoActivoFijo.find(Long.valueOf(tipoactivofijoS));
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(activoId));
        activofijo.setTipoactivofijo(tipoactivofijo);
        activofijo.setAnosVidaUtil(Integer.valueOf(anosVidaUtil));
        
        System.out.println("fecha" +fecha);

        /*StringTokenizer st = new StringTokenizer(fecha, "-");
        int day = Integer.valueOf(st.nextToken());
        int month = Integer.valueOf(st.nextToken());
        int year = Integer.valueOf(st.nextToken());*/
        
        SimpleDateFormat sdf1 = new SimpleDateFormat("dd-M-yyyy");
        Date fechaFormato = null;
        
        try {
            fechaFormato = sdf1.parse(fecha);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        activofijo.setFechaAdquisicion(fechaFormato);

        daoActivoFijo.edit(activofijo);
        return "ActivoFijo/gdaAlta";
    }

    /*@RequestMapping(value = "gdaAlta", method = RequestMethod.GET)
     public String gdaAlta(Model model) {
     return "ActivoFijo/gdaAlta";
     }*/

    /*@RequestMapping(value="asignar", method=RequestMethod.GET)
     public String asignar(Model model){
     return "ActivoFijo/asignar";
     }*/
    @RequestMapping(value = "aActivoFijo", method = RequestMethod.GET)
    public String aActivoFijo(Model model)
    {
        //ActivoFijo activofijo2 = new ActivoFijo();

        List<ActivoFijo> af = daoActivoFijo.findAll();
        ActivoFijo lastAF = af.get(af.size() - 1);

        List<ActivoFijo> af2 = daoActivoFijo.findAll();

        List<Empleado> emp = daoEmpleado.findAll();
        model.addAttribute("emp", emp);

        List<Departamento> depto = daoDepartamento.findAll();
        model.addAttribute("depto", depto);

        model.addAttribute("lastAF", lastAF);
        model.addAttribute("lastAF2", af2);
        return "ActivoFijo/aActivoFijo";
    }

    @RequestMapping(value = "gdaActivoFijo", method = RequestMethod.POST)
    public String gdaActivoFijo(Model model, String idAF, String departamento, String propietario, String depreciacion)
    {

        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        activofijo.setTipoDepreciacion(depreciacion);
        activofijo.setStatus("Asignado");
        daoActivoFijo.edit(activofijo);

        HistorialActivoFijo historial = new HistorialActivoFijo();
        Empleado empActual = (Empleado) daoEmpleado.find(Integer.valueOf(propietario));
        historial.setActivofijo(activofijo);
        historial.setNombreref2(empActual);
        historial.setFechaMovimiento(activofijo.getFechaAdquisicion());

        daoActivoFijo.create(historial);

        return "ActivoFijo/gdaActivoFijo";
    }

    @RequestMapping(value = "addTipoAF", method = RequestMethod.GET)
    public String addTipoAF(Model model)
    {
        TipoActivoFijo tipoAF = new TipoActivoFijo();
        model.addAttribute("tipoAF", tipoAF);
        return "ActivoFijo/addTipoAF";
    }

    @RequestMapping(value = "gdaAddTipoAF", method = RequestMethod.POST)
    public String gdaAddTipoAF(Model model, @Valid TipoActivoFijo tipoAF, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "ActivoFijo/alta";
        } else
        {
            daoActivoFijo.create(tipoAF);
            return "ActivoFijo/gdaAddTipoAF";
        }
    }

    @RequestMapping(value = "mActivoFijo", method = RequestMethod.GET)
    public String mActivoFijo(Model model, String idAF)
    {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));

        String nomTipoAF = activofijo.getTipoactivofijo().getNombre();
        model.addAttribute("nomTipoAF", nomTipoAF);

        Long idTipoAF = activofijo.getTipoactivofijo().getId();
        model.addAttribute("idTipoAF", idTipoAF);

        List<TipoActivoFijo> tipoAF = daoTipoActivoFijo.findAll();
        model.addAttribute("tipoAF", tipoAF);

        Long idActivoFijo = activofijo.getId();
        model.addAttribute("idActivoFijo", idActivoFijo);

        return "ActivoFijo/mActivoFijo";
    }

    @RequestMapping(value = "gdaModificacion", method = RequestMethod.POST)
    public String gdaModificacion(Model model, String tipoAF, String idActivoFijo)
    {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idActivoFijo));
        TipoActivoFijo tipoactivofijo = (TipoActivoFijo) daoTipoActivoFijo.find(Long.valueOf(tipoAF));

        activofijo.setTipoactivofijo(tipoactivofijo);
        daoActivoFijo.edit(activofijo);

        return "ActivoFijo/gdaModificacion";
    }

    @RequestMapping(value = "traslado", method = RequestMethod.GET)
    public String traslado(Model model)
    {

        List<HistorialActivoFijo> historiales = daoHistorialActivoFijo.findAll();
        model.addAttribute("historiales", historiales);
        return "ActivoFijo/traslado";
    }

    @RequestMapping(value = "tActivoFijo", method = RequestMethod.GET)
    public String tActivoFijo(Model model, @RequestParam String idAF)
    {
        HistorialActivoFijo haf = (HistorialActivoFijo) daoHistorialActivoFijo.find(Long.valueOf(idAF));
        List<Departamento> departamentos = daoDepartamento.findAll();
        model.addAttribute("historial", haf);
        model.addAttribute("departamentos", departamentos);
        return "ActivoFijo/tActivoFijo";
    }

    @RequestMapping(value = "gdaTraslado", method = RequestMethod.POST)
    public String gdaTraslado(Model model, String idHistorial, String propietario)
    {
        HistorialActivoFijo haf = (HistorialActivoFijo) daoHistorialActivoFijo.find(Long.valueOf(idHistorial));
        Empleado nvoPropietario = (Empleado) daoEmpleado.find(Integer.valueOf(propietario));

        haf.setNombreref(haf.getNombreref2());
        haf.setNombreref2(nvoPropietario);
        haf.setFechaMovimiento(new Date());

        daoHistorialActivoFijo.edit(haf);

        return "ActivoFijo/gdaTraslado";
    }

    @RequestMapping(value = "gdaBaja", method = RequestMethod.GET)
    public String gdaBaja(Model model, String idAF)
    {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        activofijo.setStatus("Eliminado");

        daoActivoFijo.edit(activofijo);

        return "ActivoFijo/gdaBaja";
    }

    @RequestMapping(value = "rSolicitud", method = RequestMethod.GET)
    public String rSolicitud(Model model)
    {
        return "ActivoFijo/rSolicitud";
    }

    @RequestMapping(value = "gdaSolicitud", method = RequestMethod.POST)
    public String gdaSolicitud(Model model)
    {
        return "ActivoFijo/gdaSolicitud";
    }

    @RequestMapping(value = "consultar", method = RequestMethod.GET)
    public String consultar(Model model)
    {

        List<HistorialActivoFijo> historiales = daoHistorialActivoFijo.findAll();        
        model.addAttribute("activoFijo", historiales);

        return "ActivoFijo/consultar";
    }

    @RequestMapping(value = "formularioSolicitudCorrecta", method = RequestMethod.GET)
    public String formularioSolicitudCorrecta(Model model)
    {
        return "ActivoFijo/formularioSolicitudCorrecta";
    }

    @RequestMapping(value = "formularioSolicitudErronea", method = RequestMethod.GET)
    public String formularioSolicitudErronea(Model model)
    {
        return "ActivoFijo/formularioSolicitudErronea";
    }

    @RequestMapping(value = "gdaSolicitudError", method = RequestMethod.GET)
    public String gdaSolicitudError(Model model)
    {
        return "ActivoFijo/gdaSolicitudError";
    }

    @RequestMapping(value = "gdaSolicitudCorrecta", method = RequestMethod.GET)
    public String gdaSolicitudCorrecta(Model model)
    {
        return "ActivoFijo/gdaSolicitudCorrecta";
    }

    @RequestMapping(value = "reporteInversion", method = RequestMethod.GET)
    public String reporteInversion(Model model)
    {

        //AQUIIIIIIIIIIIIIIIIIIIIIIIIIII
        ArrayList<HashMap> resultados = new ArrayList<>();
        double granTotalValorOr = 0;
        double granTotalDepActual = 0;
        double granTotalValorActual = 0;
        double totalCosto = 0;
        
        List<TipoActivoFijo> tiposAF = daoTipoActivoFijo.findAll();
        for(TipoActivoFijo taf : tiposAF)
        {
            Depreciacion depreciacion = new Depreciacion();
            Map dt = new HashMap();
            totalCosto = 0;
            
            List<ActivoFijo> activosCategoria = daoActivoFijo
                    .findBySpecificField("tipoActivoFijo", taf, "equal", null, null);
            for(ActivoFijo af : activosCategoria)
            {
                totalCosto += af.getProductoProveedor().getCosto();
                if(af.getTipoDepreciacion().compareTo("Linea recta") == 0)
                {
                    System.out.println("1");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.LineaRecta((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                    System.out.println(depreciacion.getVALORTOTAL());
                } 
                else if(af.getTipoDepreciacion().compareTo("Suma de digitos anuales") == 0)
                {
                    System.out.println("ASDFASDFASDF");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.DSD((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif,1);

                } 
                else if(af.getTipoDepreciacion().compareTo("Doble saldo decreciente") == 0)
                {
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.Decreciente((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                }
            }
            
            //dt.setValoreActual(depreciacion.getVALORTOTAL());
            //dt.setDepreciacionActual((float)totalCosto - depreciacion.getVALORTOTAL());
            //dt.setValorOriginal((float) totalCosto);
            //dt.setTipo(taf.getNombre());
            dt.put("valoreActual", depreciacion.getVALORTOTAL());
            dt.put("depreciacionActual", (float)totalCosto - depreciacion.getVALORTOTAL());
            dt.put("valorOriginal", totalCosto);
            dt.put("tipo", taf.getNombre());
            resultados.add((HashMap) dt);
            
            granTotalDepActual += (float)totalCosto - depreciacion.getVALORTOTAL();
            granTotalValorActual += depreciacion.getVALORTOTAL();
            granTotalValorOr += totalCosto;
        }

        model.addAttribute("resultados", resultados);
        model.addAttribute("granTotalDepActual", granTotalDepActual);
        model.addAttribute("granTotalValorActual", granTotalValorActual);
        model.addAttribute("granTotalValorOr", granTotalValorOr);
        return "ActivoFijo/reporteInversion";
    }

    @RequestMapping(value = "reporteDepreciacion", method = RequestMethod.GET)
    public String reporteDepreciacion(Model model)
    {
        
        //AQUIIIIIIIIIIIIIIIIIIIIIIIIIII
        ArrayList<HashMap> resultados = new ArrayList<>();
        double granTotalValorOr = 0;
        double granTotalDepActual = 0;
        double granTotalValorActual = 0;
        double totalCosto = 0;
        
        List<TipoActivoFijo> tiposAF = daoTipoActivoFijo.findAll();
        for(TipoActivoFijo taf : tiposAF)
        {
            Depreciacion depreciacion = new Depreciacion();
            Map dt = new HashMap();
            
            totalCosto = 0;
            
            List<ActivoFijo> activosCategoria = daoActivoFijo
                    .findBySpecificField("tipoActivoFijo", taf, "equal", null, null);
            for(ActivoFijo af : activosCategoria)
            {
                totalCosto += af.getProductoProveedor().getCosto();
                if(af.getTipoDepreciacion().compareTo("Linea recta") == 0)
                {
                    System.out.println("1");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.LineaRecta((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                    System.out.println(depreciacion.getVALORTOTAL());
                } 
                else if(af.getTipoDepreciacion().compareTo("Suma de digitos anuales") == 0)
                {
                    System.out.println("ASDFASDFASDF");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.DSD((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif,1);

                } 
                else if(af.getTipoDepreciacion().compareTo("Doble saldo decreciente") == 0)
                {
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.Decreciente((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                }
            }
            
            //dt.setValoreActual(depreciacion.getVALORTOTAL());
            //dt.setDepreciacionActual((float)totalCosto - depreciacion.getVALORTOTAL());
            //dt.setValorOriginal((float) totalCosto);
            //dt.setTipo(taf.getNombre());
            dt.put("valoreActual", depreciacion.getVALORTOTAL());
            dt.put("depreciacionActual", (float)totalCosto - depreciacion.getVALORTOTAL());
            dt.put("valorOriginal", totalCosto);
            dt.put("tipo", taf.getNombre());
            resultados.add((HashMap) dt);
            
            granTotalDepActual += (float)totalCosto - depreciacion.getVALORTOTAL();
            granTotalValorActual += depreciacion.getVALORTOTAL();
            granTotalValorOr += totalCosto;
        }

        model.addAttribute("resultados", resultados);
        model.addAttribute("granTotalDepActual", granTotalDepActual);
        model.addAttribute("granTotalValorActual", granTotalValorActual);
        model.addAttribute("granTotalValorOr", granTotalValorOr);
        
        return "ActivoFijo/reporteDepreciacion";
    }

    @RequestMapping(value = "gdaReporte", method = RequestMethod.GET)
    public String gdaReporte(Model model)
    {
        return "ActivoFijo/gdaReporte";
    }

    // AJAX CONTROLLER
    @RequestMapping(value = "activofijo/buscarempleados", method = RequestMethod.GET)
    @ResponseBody
    public List<Empleado> getEmpleadosByDepartamento(Model mode, String idDpto)
    {
        Departamento dpto = (Departamento) daoDepartamento.find(Integer.valueOf(idDpto));

        List<Empleado> empleados = daoEmpleado.findBySpecificField("departamento", dpto, "equal", null, null);
        return empleados;
    }

    @RequestMapping(value = "reporteinversion.pdf", method = RequestMethod.GET)
    @ResponseBody
    public String descargarReporteInv(Model model, HttpServletRequest request, HttpServletResponse response)
    {
//        List<TipoActivoFijo>tipo=daoTipoActivoFijo.findAll();
//        PDFGeneratorActivosFijos pdfActivos = new PDFGeneratorActivosFijos();
//        try
//        {
//            pdfActivos.crearPDFInversion(response,tipo);
//        } catch(Exception ex)
//        {
//            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
//        }
        //AQUIIIIIIIIIIIIIIIIIIIIIIIIIII
        ArrayList<HashMap> resultados = new ArrayList<>();
        double granTotalValorOr = 0;
        double granTotalDepActual = 0;
        double granTotalValorActual = 0;
        double totalCosto = 0;
        
        List<TipoActivoFijo> tiposAF = daoTipoActivoFijo.findAll();
        for(TipoActivoFijo taf : tiposAF)
        {
            Depreciacion depreciacion = new Depreciacion();
            Map dt = new HashMap();
            totalCosto = 0;
            
            List<ActivoFijo> activosCategoria = daoActivoFijo
                    .findBySpecificField("tipoActivoFijo", taf, "equal", null, null);
            for(ActivoFijo af : activosCategoria)
            {
                totalCosto += af.getProductoProveedor().getCosto();
                if(af.getTipoDepreciacion().compareTo("Linea recta") == 0)
                {
                    System.out.println("1");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.LineaRecta((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                    System.out.println(depreciacion.getVALORTOTAL());
                } 
                else if(af.getTipoDepreciacion().compareTo("Suma de digitos anuales") == 0)
                {
                    System.out.println("ASDFASDFASDF");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.DSD((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif,1);

                } 
                else if(af.getTipoDepreciacion().compareTo("Doble saldo decreciente") == 0)
                {
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.Decreciente((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                }
            }
            
            //dt.setValoreActual(depreciacion.getVALORTOTAL());
            //dt.setDepreciacionActual((float)totalCosto - depreciacion.getVALORTOTAL());
            //dt.setValorOriginal((float) totalCosto);
            //dt.setTipo(taf.getNombre());
            dt.put("valoreActual", depreciacion.getVALORTOTAL());
            dt.put("depreciacionActual", (float)totalCosto - depreciacion.getVALORTOTAL());
            dt.put("valorOriginal", totalCosto);
            dt.put("tipo", taf.getNombre());
            resultados.add((HashMap) dt);
            
            granTotalDepActual += (float)totalCosto - depreciacion.getVALORTOTAL();
            granTotalValorActual += depreciacion.getVALORTOTAL();
            granTotalValorOr += totalCosto;
        }

        model.addAttribute("resultados", resultados);
        model.addAttribute("granTotalDepActual", granTotalDepActual);
        model.addAttribute("granTotalValorActual", granTotalValorActual);
        model.addAttribute("granTotalValorOr", granTotalValorOr);
        
        
        
        PDFGeneratorActivosFijos pdfActivos = new PDFGeneratorActivosFijos();
        try
        {
            pdfActivos.crearPDFInversion(response, resultados,granTotalDepActual,granTotalValorActual,granTotalValorOr);
        } catch(Exception ex)
        {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        

        return "OK";
    }

    @RequestMapping(value = "reportedepreciacion.pdf", method = RequestMethod.GET)
    @ResponseBody
    public String descargarReporteDp(Model model, HttpServletRequest request, HttpServletResponse response)
    {
        //AQUIIIIIIIIIIIIIIIIIIIIIIIIIII
        ArrayList<HashMap> resultados = new ArrayList<>();
        double granTotalValorOr = 0;
        double granTotalDepActual = 0;
        double granTotalValorActual = 0;
        double totalCosto = 0;
        
        List<TipoActivoFijo> tiposAF = daoTipoActivoFijo.findAll();
        for(TipoActivoFijo taf : tiposAF)
        {
            Depreciacion depreciacion = new Depreciacion();
            Map dt = new HashMap();
            
            totalCosto = 0;
            
            List<ActivoFijo> activosCategoria = daoActivoFijo
                    .findBySpecificField("tipoActivoFijo", taf, "equal", null, null);
            for(ActivoFijo af : activosCategoria)
            {
                totalCosto += af.getProductoProveedor().getCosto();
                if(af.getTipoDepreciacion().compareTo("Linea recta") == 0)
                {
                    System.out.println("1");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.LineaRecta((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                    System.out.println(depreciacion.getVALORTOTAL());
                } 
                else if(af.getTipoDepreciacion().compareTo("Suma de digitos anuales") == 0)
                {
                    System.out.println("ASDFASDFASDF");
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.DSD((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif,1);

                } 
                else if(af.getTipoDepreciacion().compareTo("Doble saldo decreciente") == 0)
                {
                    Calendar hoy = Calendar.getInstance(Locale.US);
                    hoy.setTime(new Date());
                    Calendar adquisicion = Calendar.getInstance(Locale.US);
                    adquisicion.setTime(af.getFechaAdquisicion());

                    int dif = hoy.get(Calendar.YEAR) - adquisicion.get(Calendar.YEAR);
                    if(adquisicion.get(Calendar.MONTH) > hoy.get(Calendar.MONTH)
                            || adquisicion.get(Calendar.MONTH) == hoy.get(Calendar.MONTH)
                            && adquisicion.get(Calendar.DATE) > hoy.get(Calendar.DATE))
                    {
                        dif--;
                    }
                    depreciacion.Decreciente((float) af.getProductoProveedor().getCosto(), af.getAnosVidaUtil(), dif);
                }
            }
            
            //dt.setValoreActual(depreciacion.getVALORTOTAL());
            //dt.setDepreciacionActual((float)totalCosto - depreciacion.getVALORTOTAL());
            //dt.setValorOriginal((float) totalCosto);
            //dt.setTipo(taf.getNombre());
            dt.put("valoreActual", depreciacion.getVALORTOTAL());
            dt.put("depreciacionActual", (float)totalCosto - depreciacion.getVALORTOTAL());
            dt.put("valorOriginal", totalCosto);
            dt.put("tipo", taf.getNombre());
            resultados.add((HashMap) dt);
            
            granTotalDepActual += (float)totalCosto - depreciacion.getVALORTOTAL();
            granTotalValorActual += depreciacion.getVALORTOTAL();
            granTotalValorOr += totalCosto;
        }                                       
        PDFGeneratorActivosFijos2 pdfActivos2 = new PDFGeneratorActivosFijos2();
        try
        { 
            pdfActivos2.crearPDFDepreciacion(response, resultados,granTotalValorActual,granTotalValorOr);
        } catch(Exception ex)
        {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

}
