/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.activofijo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Usuario
 */
@Controller
public class ActivoFijoController {
    @RequestMapping(value="activofijo", method=RequestMethod.GET)
    public String index(Model model){
        return "ActivoFijo/indexactivofijo";
    }
    
    @RequestMapping(value="alta", method=RequestMethod.GET)
    public String alta(Model model){
        return "ActivoFijo/alta";
    }
    
    @RequestMapping(value="gdaAlta", method=RequestMethod.POST)
    public String gdaAlta(Model model){
        return "ActivoFijo/gdaAlta";
    }
    
    /*@RequestMapping(value="asignar", method=RequestMethod.GET)
    public String asignar(Model model){
        return "ActivoFijo/asignar";
    }*/
    
    @RequestMapping(value="aActivoFijo", method=RequestMethod.GET)
    public String aActivoFijo(Model model){
        return "ActivoFijo/aActivoFijo";
    }
    
    @RequestMapping(value="gdaActivoFijo", method=RequestMethod.POST)
    public String gdaActivoFijo(Model model){
        return "ActivoFijo/gdaActivoFijo";
    }
    
    @RequestMapping(value="mActivoFijo", method=RequestMethod.GET)
    public String mActivoFijo(Model model){
        return "ActivoFijo/mActivoFijo";
    }
    
    @RequestMapping(value="gdaModificacion", method=RequestMethod.POST)
    public String gdaModificacion(Model model){
        return "ActivoFijo/gdaModificacion";
    }
    
    @RequestMapping(value="traslado", method=RequestMethod.GET)
    public String traslado(Model model){
        return "ActivoFijo/traslado";
    }
    
    @RequestMapping(value="tActivoFijo", method=RequestMethod.GET)
    public String tActivoFijo(Model model){
        return "ActivoFijo/tActivoFijo";
    }
    
    @RequestMapping(value="gdaTraslado", method=RequestMethod.POST)
    public String gdaTraslado(Model model){
        return "ActivoFijo/gdaTraslado";
    }
    
    @RequestMapping(value="gdaBaja", method=RequestMethod.GET)
    public String gdaBaja(Model model){
        return "ActivoFijo/gdaBaja";
    }
    
    @RequestMapping(value="rSolicitud", method=RequestMethod.GET)
    public String rSolicitud(Model model){
        return "ActivoFijo/rSolicitud";
    }
    
    @RequestMapping(value="gdaSolicitud",method=RequestMethod.POST)
    public String gdaSolicitud(Model model){
        return "ActivoFijo/gdaSolicitud";
    }
    
    @RequestMapping(value="consultar", method=RequestMethod.GET)
    public String consultar(Model model){
        return "ActivoFijo/consultar";
    }
    
    @RequestMapping(value="formularioSolicitudCorrecta", method=RequestMethod.GET)
    public String formularioSolicitudCorrecta(Model model){
        return "ActivoFijo/formularioSolicitudCorrecta";
    }
    @RequestMapping(value="formularioSolicitudErronea", method=RequestMethod.GET)
    public String formularioSolicitudErronea(Model model){
        return "ActivoFijo/formularioSolicitudErronea";
    }

    
    @RequestMapping(value="gdaSolicitudError", method=RequestMethod.GET)
    public String gdaSolicitudError(Model model){
        return "ActivoFijo/gdaSolicitudError";
    }
    
    @RequestMapping(value="gdaSolicitudCorrecta", method=RequestMethod.GET)
    public String gdaSolicitudCorrecta(Model model){
        return "ActivoFijo/gdaSolicitudCorrecta";
    }
    
    @RequestMapping(value="reporteInversion", method=RequestMethod.GET)
    public String reporteInversion(Model model){
        return "ActivoFijo/reporteInversion";
    }
    
    @RequestMapping(value="reporteDepreciacion", method=RequestMethod.GET)
    public String reporteDepreciacion(Model model){
        return "ActivoFijo/reporteDepreciacion";
    }
    
    @RequestMapping(value="gdaReporte", method=RequestMethod.GET)
    public String gdaReporte(Model model){
        return "ActivoFijo/gdaReporte";
    }
}