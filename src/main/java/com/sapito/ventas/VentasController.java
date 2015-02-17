/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.ventas;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author giovanni
 */
@Controller
public class VentasController
{
    
    @RequestMapping(value="ventas", method=RequestMethod.GET)
    public String index(Model model)
    {
        return "Ventas/indexVentas";
    }
    
    @RequestMapping(value="ventas/altaclientes", method=RequestMethod.GET)
    public String altaClientes(Model model)
    {
        return "Ventas/altaClientes";
    }
    
    @RequestMapping(value="ventas/consultaclientes", method=RequestMethod.GET)
    public String consultaClientes(Model model)
    {
        return "Ventas/consultarClientes";
    }
    
    @RequestMapping(value="ventas/genfactura", method=RequestMethod.GET)
    public String generarFactura(Model model)
    {
        return "Ventas/generarFactura";
    }
}
