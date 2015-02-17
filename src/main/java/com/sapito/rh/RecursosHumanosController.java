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
    public String indexAdministrador(Model model)
    {
        return "RH/indexAdministrador";
    }
    @RequestMapping(value = "recursoshumanosOperativo", method = RequestMethod.GET)
    public String indexOperativo(Model model)
    {
        return "RH/indexOperativo";
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
    @RequestMapping(value = "adminEmpleadosOperativo", method = RequestMethod.GET)
    public String adminEmpleadosOperativo(Model model)
    {
        return "RH/administrarEmpleadosOperativo";
    }
    
    @RequestMapping(value = "VacacionEmpleadoOperativo", method = RequestMethod.GET)
    public String VacacionEmpleadoOperativo(Model model)
    {
        return "RH/VacacionEmpleadoOperativo";
    }
    
    @RequestMapping(value = "altaCapacitacionAdmin", method = RequestMethod.GET)
    public String altaCapacitacionAdmin(Model model)
    {
        return "RH/addCapacitacionAdministrador";
    }
    
    @RequestMapping(value = "adminCapacitacionAdmin", method = RequestMethod.GET)
    public String adminCapacitacionAdmin(Model model)
    {
        return "RH/adminCapacitacionAdministrador";
    }
    
    @RequestMapping(value = "historialCapacitacionAdmin", method = RequestMethod.GET)
    public String historialCapacitacionAdmin(Model model)
    {
        return "RH/historialCapacitacionesAdministrador";
    }
    
    @RequestMapping(value = "altaDepAdmin", method = RequestMethod.GET)
    public String altaDepAdmin(Model model)
    {
        return "RH/addDepartamentoAdministrador";
    }
    
    @RequestMapping(value = "adminDepAdmin", method = RequestMethod.GET)
    public String adminDepAdmin(Model model)
    {
        return "RH/adminDepartamentosAdministrador";
    }
    
    @RequestMapping(value = "addRolesAdmin", method = RequestMethod.GET)
    public String addRolesAdmin(Model model)
    {
        return "RH/addRolesAdministrador";
    }
    
    @RequestMapping(value = "adminRolesAdmin", method = RequestMethod.GET)
    public String adminRolesAdmin(Model model)
    {
        return "RH/adminRolesAdministrador";
    }

    @RequestMapping(value = "altaPuestoAdmin", method = RequestMethod.GET)
    public String altaPuestoAdmin(Model model)
    {
        return "RH/addPuestoAdministrador";
    }
    @RequestMapping(value = "adminPuestoAdmin", method = RequestMethod.GET)
    public String adminPuestoAdmin(Model model)
    {
        return "RH/adminPuestosAdministrador";
    }
    @RequestMapping(value = "addSancionAdmin", method = RequestMethod.GET)
    public String adminSancionAdmin(Model model)
    {
        return "RH/addSancionAdministrador";
    }
}
