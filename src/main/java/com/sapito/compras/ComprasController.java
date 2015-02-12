/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import com.sapito.ventas.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author giovanni
 */
@Controller
public class ComprasController
{
    
    @RequestMapping(value="compras", method=RequestMethod.GET)
    public String index(Model model)
    {
        return "Compras/indexcompras";
    }
    
    @RequestMapping(value = "altaproveedor", method = RequestMethod.GET)
    public String altaproveedor(Model model) {
        return "Compras/altaproveedor";
    }

    @RequestMapping(value = "modificarproveedor", method = RequestMethod.GET)
    public String modificarproveedor(Model model) {
        return "Compras/modificarproveedor";
    }

    @RequestMapping(value = "bajaproveedor", method = RequestMethod.GET)
    public String bajaproveedor(Model model) {
        return "Compras/bajaproveedor";
    }

    @RequestMapping(value = "informacionproveedor", method = RequestMethod.GET)
    public String informacionproveedor(Model model) {
        return "Compras/informacionproveedor";
    }

    
}
