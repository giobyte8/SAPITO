/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.operaciones;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author Edgar
 */
@Controller
public class OperacionesController {

    @RequestMapping(value="operaciones", method=RequestMethod.GET)
    public String indexOperaciones(Model model)
    {
        return "Operaciones/index";
    }
    
    @RequestMapping(value="operaciones/produccion", method=RequestMethod.GET)
    public String produccion(Model model)
    {
        return "Operaciones/produccionView";
    }    
}


