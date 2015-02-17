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
public class RecursosHumanosController
{

    @RequestMapping(value = "recursoshumanos", method = RequestMethod.GET)
    public String index(Model model)
    {
        return "RH/indexAdministrador";
    }

    @RequestMapping(value = "AdminEmpleados", method = RequestMethod.GET)
    public String AdminEmpleados(Model model)
    {

        return "RH/administrarEmpleados";
    }

    @RequestMapping(value = "AltaEmpleado", method = RequestMethod.GET)
    public String AltaEmpleado(Model model)
    {
        return "RH/AltaEmpleado";
    }

    @RequestMapping(value = "BajaEmpleado", method = RequestMethod.GET)
    public String BajaEmpleado(Model model)
    {
        return "RH/BajaEmpleado";
    }

    @RequestMapping(value = "ModificacionEmpleado", method = RequestMethod.GET)
    public String ModificacionEmpleado(Model model)
    {
        return "RH/ModificacionEmpleado";
    }

    @RequestMapping(value = "HistorialEmpleado", method = RequestMethod.GET)
    public String HistorialEmpleado(Model model)
    {
        return "RH/HistorialEmpleado";
    }

    @RequestMapping(value = "VacacionEmpleado", method = RequestMethod.GET)
    public String VacacionEmpleado(Model model)
    {
        return "RH/VacacionEmpleado";
    }

    @RequestMapping(value = "AdmVacacionEmpleado", method = RequestMethod.GET)
    public String AdmVacacionEmpleado(Model model)
    {
        return "RH/AdmVacacionEmpleado";
    }
}
