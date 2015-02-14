/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.rh;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 *
 * @author Christian
 */
@Controller
public class RecursosHumanosController {
    
    @RequestMapping(value="RecursosHumanos/index",method=RequestMethod.GET)
    public String index(Model model)
    {
        return "RH/index";
    }
    @RequestMapping(value="RecursosHumanos/AltaEmpleado",method=RequestMethod.GET)
    public String AltaEmpleado(Model model)
    {
        return "RH/AltaEmpleado";
    }
     @RequestMapping(value="RecursosHumanos/BajaEmpleado",method=RequestMethod.GET)
    public String BajaEmpleado(Model model)
    {
        return "RH/BajaEmpleado";
    }
     @RequestMapping(value="RecursosHumanos/ModificacionEmpleado",method=RequestMethod.GET)
    public String ModificacionEmpleado(Model model)
    {
        return "RH/ModificacionEmpleado";
    }
     @RequestMapping(value="RecursosHumanos/HistorialEmpleado",method=RequestMethod.GET)
    public String HistorialEmpleado(Model model)
    {
        return "RH/HistorialEmpleado";
    }
    @RequestMapping(value="RecursosHumanos/VacacionEmpleado",method=RequestMethod.GET)
    public String VacacionEmpleado(Model model)
    {
        return "RH/VacacionEmpleado";
    }
     @RequestMapping(value="RecursosHumanos/AdmVacacionEmpleado",method=RequestMethod.GET)
    public String AdmVacacionEmpleado(Model model)
    {
        return "RH/AdmVacacionEmpleado";
    }
}




