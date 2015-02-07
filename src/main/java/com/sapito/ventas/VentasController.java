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
        return "Ventas/indexventas";
    }
    
}
