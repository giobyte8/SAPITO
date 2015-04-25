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
    
    @RequestMapping(value = "Direccion/Reportes", method = RequestMethod.GET)
    public String Reportes(Model model) {
        return "Direccion/Reportes";
    }

    @RequestMapping(value = "Direccion/HistorialReportes", method = RequestMethod.GET)
    public String HistReportes(Model model) {
        return "Direccion/HistorialReportes";
    }
    
    @RequestMapping(value = "Direccion/CrearReporte", method = RequestMethod.GET)
    public String CrearReportes(Model model) {
        return "Direccion/CrearReporte";
    }


    @RequestMapping(value = "Direccion/Graficas", method = RequestMethod.GET)
    public String Graficas(Model model) {
        return "Direccion/Graficas";
    }

    
    
    
}

