/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author LAWL
 */
@Controller
public class DireccionController {
    
    @RequestMapping(value="direccion", method = RequestMethod.GET)
    
    public String index(Model model){
        return "Direccion/indexdireccion";
    }
}
