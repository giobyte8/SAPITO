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
import com.sapito.db.entities.HistorialActivoFijo;
import com.sapito.db.entities.Producto;
import com.sapito.db.entities.TipoActivoFijo;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Usuario
 */
@Controller
public class ActivoFijoController {

    private GenericDao<ActivoFijo> daoActivoFijo;
    private GenericDao<TipoActivoFijo> daoTipoActivoFijo;
    private GenericDao<Producto> daoProducto;

    @Autowired
    public void setDaoActivoFijo(GenericDao<ActivoFijo> daoActivoFijo) {
        this.daoActivoFijo = daoActivoFijo;
        daoActivoFijo.setClass(ActivoFijo.class);
    }
    
    @Autowired
    public void setDaoTipoActivoFijo(GenericDao<TipoActivoFijo> daoTipoActivoFijo) {
        this.daoTipoActivoFijo = daoTipoActivoFijo;
        daoTipoActivoFijo.setClass(TipoActivoFijo.class);
    }
    
    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto) {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

    @RequestMapping(value = "activofijo", method = RequestMethod.GET)
    public String index(Model model) {        
        return "ActivoFijo/indexactivofijo";
    }

    @RequestMapping(value = "alta", method = RequestMethod.GET)
    public String alta(Model model) {
        ActivoFijo activofijo = new ActivoFijo();
        List<TipoActivoFijo> tipoAF = daoTipoActivoFijo.findAll();
        List<Producto> producto = daoProducto.findAll();
        model.addAttribute("activofijo", activofijo);
        model.addAttribute("tipoAF", tipoAF);
        model.addAttribute("producto", producto);
        return "ActivoFijo/alta";
    }
    
    @RequestMapping(value = "gdaAlta", method = RequestMethod.POST)
    public String regAlta(Model model, @Valid ActivoFijo activofijo, String tipoactivofijoS, String productoS, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "ActivoFijo/alta";
        }
        else
        {
            TipoActivoFijo tipoactivofijo = (TipoActivoFijo) daoTipoActivoFijo.find(Long.valueOf(tipoactivofijoS));
            Producto prod = (Producto) daoProducto.find(Long.valueOf(productoS));
            activofijo.setTipoactivofijo(tipoactivofijo);
            activofijo.setProducto(prod);
            activofijo.setStatus(true);
            daoActivoFijo.create(activofijo);
            return "ActivoFijo/gdaAlta";
        }
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
    public String aActivoFijo(Model model) {
        //ActivoFijo activofijo2 = new ActivoFijo();
        
        List<ActivoFijo> af = daoActivoFijo.findAll();
        ActivoFijo lastAF = af.get(af.size() -1 );
        
        List<ActivoFijo> af2 = daoActivoFijo.findAll();
        
        model.addAttribute("lastAF", lastAF);
        model.addAttribute("lastAF2", af2);
        return "ActivoFijo/aActivoFijo";
    }

    @RequestMapping(value = "gdaActivoFijo", method = RequestMethod.POST)
    public String gdaActivoFijo(Model model, String idAF, String depreciacion) {
        
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        activofijo.setTipoDepreciacion(depreciacion);
        daoActivoFijo.edit(activofijo);
        
        HistorialActivoFijo historial = new HistorialActivoFijo();
        historial.setActivofijo(activofijo);
        Date fecha = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String fechaFormato = df.format(fecha);
        //historial.setFechaMovimiento(fechaFormato);
        daoActivoFijo.create(historial);
        
        return "ActivoFijo/gdaActivoFijo";
    }

    @RequestMapping(value = "addTipoAF", method = RequestMethod.GET)
    public String addTipoAF(Model model) {
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
        }
        else
        {
            daoActivoFijo.create(tipoAF);
            return "ActivoFijo/gdaAddTipoAF";
        }
    }
    
    @RequestMapping(value = "mActivoFijo", method = RequestMethod.GET)
    public String mActivoFijo(Model model) {
        return "ActivoFijo/mActivoFijo";
    }

    @RequestMapping(value = "gdaModificacion", method = RequestMethod.POST)
    public String gdaModificacion(Model model) {
        return "ActivoFijo/gdaModificacion";
    }

    @RequestMapping(value = "traslado", method = RequestMethod.GET)
    public String traslado(Model model) {
        return "ActivoFijo/traslado";
    }

    @RequestMapping(value = "tActivoFijo", method = RequestMethod.GET)
    public String tActivoFijo(Model model) {
        return "ActivoFijo/tActivoFijo";
    }

    @RequestMapping(value = "gdaTraslado", method = RequestMethod.POST)
    public String gdaTraslado(Model model) {
        return "ActivoFijo/gdaTraslado";
    }

    @RequestMapping(value = "gdaBaja", method = RequestMethod.GET)
    public String gdaBaja(Model model) {
        return "ActivoFijo/gdaBaja";
    }

    @RequestMapping(value = "rSolicitud", method = RequestMethod.GET)
    public String rSolicitud(Model model) {
        return "ActivoFijo/rSolicitud";
    }

    @RequestMapping(value = "gdaSolicitud", method = RequestMethod.POST)
    public String gdaSolicitud(Model model) {
        return "ActivoFijo/gdaSolicitud";
    }

    @RequestMapping(value = "consultar", method = RequestMethod.GET)
    public String consultar(Model model) {
        return "ActivoFijo/consultar";
    }

    @RequestMapping(value = "formularioSolicitudCorrecta", method = RequestMethod.GET)
    public String formularioSolicitudCorrecta(Model model) {
        return "ActivoFijo/formularioSolicitudCorrecta";
    }

    @RequestMapping(value = "formularioSolicitudErronea", method = RequestMethod.GET)
    public String formularioSolicitudErronea(Model model) {
        return "ActivoFijo/formularioSolicitudErronea";
    }

    @RequestMapping(value = "gdaSolicitudError", method = RequestMethod.GET)
    public String gdaSolicitudError(Model model) {
        return "ActivoFijo/gdaSolicitudError";
    }

    @RequestMapping(value = "gdaSolicitudCorrecta", method = RequestMethod.GET)
    public String gdaSolicitudCorrecta(Model model) {
        return "ActivoFijo/gdaSolicitudCorrecta";
    }

    @RequestMapping(value = "reporteInversion", method = RequestMethod.GET)
    public String reporteInversion(Model model) {
        return "ActivoFijo/reporteInversion";
    }

    @RequestMapping(value = "reporteDepreciacion", method = RequestMethod.GET)
    public String reporteDepreciacion(Model model) {
        return "ActivoFijo/reporteDepreciacion";
    }

    @RequestMapping(value = "gdaReporte", method = RequestMethod.GET)
    public String gdaReporte(Model model) {
        return "ActivoFijo/gdaReporte";
    }
}
