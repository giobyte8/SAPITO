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

    @RequestMapping(value = "ventas", method = RequestMethod.GET)
    public String index(Model model)
    {
        return "Ventas/indexVentas";
    }

    @RequestMapping(value = "ventas/clientes", method = RequestMethod.GET)
    public String clientes(Model model)
    {
        return "Ventas/clientes";
    }

    @RequestMapping(value = "ventas/vendedores", method = RequestMethod.GET)
    public String vendedores(Model model)
    {
        return "Ventas/vendedores";
    }

    @RequestMapping(value = "ventas/nvaorden")
    public String nvaOrdenVentas(Model model)
    {
        return "Ventas/nvaOrdenVenta";
    }

    @RequestMapping(value = "ventas/altaclientes", method = RequestMethod.GET)
    public String altaClientes(Model model)
    {
        return "Ventas/altaClientes";
    }

    @RequestMapping(value = "ventas/ordenes", method = RequestMethod.GET)
    public String ordenes(Model model)
    {
        return "Ventas/ordenes";
    }

}
