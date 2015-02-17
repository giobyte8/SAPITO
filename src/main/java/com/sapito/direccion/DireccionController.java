/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author LAWL
 */
@Controller
public class DireccionController {

    @RequestMapping(value = "Direccion/indexprincipal", method = RequestMethod.GET)
    public String indexprinvipal(Model model) {
        return "Direccion/indexprincipal";
    }

    @RequestMapping(value = "Direccion/Finanza", method = RequestMethod.GET)
    public String Finanza(Model model) {
        return "Direccion/Finanza";
    }

    @RequestMapping(value = "Direccion/Ventas", method = RequestMethod.GET)
    public String Ventas(Model model) {
        return "Direccion/Ventas";
    }

    @RequestMapping(value = "Direccion/Operaciones", method = RequestMethod.GET)
    public String Operaciones(Model model) {
        return "Direccion/Operaciones";
    }

    @RequestMapping(value = "Direccion/Activofijo", method = RequestMethod.GET)
    public String Activofijo(Model model) {
        return "Direccion/Activofijo";
    }
    @RequestMapping(value = "Direccion/RH", method = RequestMethod.GET)
    public String RH(Model model) {
        return "Direccion/RH";
    }

    @RequestMapping(value = "Direccion/Metas", method = RequestMethod.GET)
    public String Metas(Model model) {
        return "Direccion/Metas";
    }
    
    @RequestMapping(value = "Direccion/Reportes", method = RequestMethod.GET)
    public String Reportes(Model model) {
        return "Direccion/Reportes";
    }
    
    @RequestMapping(value = "Direccion/GenerarReporteActivofijo", method = RequestMethod.GET)
    public String GenerarReporteActivofijo(Model model) {
        return "Direccion/GenerarReporteActivofijo";
        
    }
    @RequestMapping(value = "Direccion/ConsultarReporteFechaActivofijo", method = RequestMethod.GET)
    public String ConsultarReporteFechaActivofijo(Model model) {
        return "Direccion/ConsultarReporteFechaActivofijo";
        
    }
    
    @RequestMapping(value = "Direccion/AbriReporteHoyActivofijo", method = RequestMethod.GET)
    public String AbriReporteHoyActivofijo(Model model) {
        return "Direccion/AbriReporteHoyActivofijo";
        
    }
//    finanazas
    @RequestMapping(value = "Direccion/GenerarReporteFinanzas", method = RequestMethod.GET)
    public String GenerarReporteFinanzas(Model model) {
        return "Direccion/GenerarReporteFinanzas";
        
    }
    @RequestMapping(value = "Direccion/ConsultarReporteFechaFinanzas", method = RequestMethod.GET)
    public String ConsultarReporteFechaFinanzas(Model model) {
        return "Direccion/ConsultarReporteFechaFinanzas";
        
    }
    
    @RequestMapping(value = "Direccion/AbriReporteHoyFinanzas", method = RequestMethod.GET)
    public String AbriReporteHoyFinanzas(Model model) {
        return "Direccion/AbriReporteHoyFinanzas";
        
    }
    
//    HR
    @RequestMapping(value = "Direccion/GenerarReporteRH", method = RequestMethod.GET)
    public String GenerarReporteRH(Model model) {
        return "Direccion/GenerarReporteRH";
        
    }
    @RequestMapping(value = "Direccion/ConsultarReporteFechaRH", method = RequestMethod.GET)
    public String ConsultarReporteFechaRH(Model model) {
        return "Direccion/ConsultarReporteFechaRH";
        
    }
    
    @RequestMapping(value = "Direccion/AbriReporteHoyRH", method = RequestMethod.GET)
    public String AbriReporteHoyRH(Model model) {
        return "Direccion/AbriReporteHoyRH";
        
    }
    
 // Operaciones
    @RequestMapping(value = "Direccion/GenerarReporteOperaciones", method = RequestMethod.GET)
    public String GenerarReporteOperaciones(Model model) {
        return "Direccion/GenerarReporteOperaciones";
        
    }
    @RequestMapping(value = "Direccion/ConsultarReporteFechaOperaciones", method = RequestMethod.GET)
    public String ConsultarReporteFechaOperaciones(Model model) {
        return "Direccion/ConsultarReporteFechaOperaciones";
        
    }
    
    @RequestMapping(value = "Direccion/AbriReporteHoyOperaciones", method = RequestMethod.GET)
    public String AbriReporteHoyOperaciones(Model model) {
        return "Direccion/AbriReporteHoyOperaciones";
        
    }
    
    //    ventas
    @RequestMapping(value = "Direccion/GenerarReporteVentas", method = RequestMethod.GET)
    public String GenerarReporteVentas(Model model) {
        return "Direccion/GenerarReporteVentas";
        
    }
    @RequestMapping(value = "Direccion/ConsultarReporteFechaVentas", method = RequestMethod.GET)
    public String ConsultarReporteFechaVentas(Model model) {
        return "Direccion/ConsultarReporteFechaVentas";
        
    }
    
    @RequestMapping(value = "Direccion/AbriReporteHoyVentas", method = RequestMethod.GET)
    public String AbriReporteHoyVentas(Model model) {
        return "Direccion/AbriReporteHoyVentas";
        
    }
    
    @RequestMapping(value = "Direccion/Graficas", method = RequestMethod.GET)
    public String Graficas(Model model) {
        return "Direccion/Graficas";
}
}
