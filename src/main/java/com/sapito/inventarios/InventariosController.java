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
    public String indexOperaciones(Model model)
    {
        return "Inventarios/index";
    }
    
    @RequestMapping(value="inventarios/checarInventarios", method=RequestMethod.GET)
    public String produccion(Model model)
    {
        return "Inventarios/checarInventariosView";
    }      
}
