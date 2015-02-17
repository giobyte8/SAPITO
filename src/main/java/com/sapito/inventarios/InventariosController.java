/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.inventarios;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jovic
 */
@Controller

public class InventariosController

{
     @RequestMapping(value="inventarios", method=RequestMethod.GET)
    public String indexInventarios(Model model)
    {
        return "Inventarios/index";
    }
    
    @RequestMapping(value="checarInventarios", method=RequestMethod.GET)
    public String checarInventarios(Model model)
    {
        return "Inventarios/checarInventariosView";
    }      
    
    @RequestMapping(value="materiaPrima", method=RequestMethod.GET)
    public String materiaPrima(Model model)
    {
        return "Inventarios/materiaPrimaView";
    }
    
    @RequestMapping(value="productoTerminado", method=RequestMethod.GET)
    public String productoTerminado(Model model)
    {
        return "Inventarios/productoTerminadoView";
    }
    
    @RequestMapping(value="registrarMateriaPrima", method=RequestMethod.GET)
    public String registrarMateriPrima(Model model)
    {
        System.out.println("registraMaetria PRima ");
        return "Inventarios/registrarMateriaPrimaView";
    }
    
    @RequestMapping(value="registrarProductoTeminado", method=RequestMethod.GET)
    public String registratProductoTerminado(Model model)
    {
        System.out.println("hola hola ");
        return "Inventarios/registrarProductoTerminadoView";
    }
}
