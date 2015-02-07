/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.contabilidad;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Lore-Lap
 */
@Controller
public class controller_contabilidad {
    @RequestMapping(value="contabilidad", method=RequestMethod.GET)
    public String index(Model model){
    return "Contabilidad/indexcontabilidad";
    }
}
