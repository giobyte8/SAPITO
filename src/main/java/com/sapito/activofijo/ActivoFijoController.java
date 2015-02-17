/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.activofijo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Usuario
 */
@Controller
public class ActivoFijoController {
    @RequestMapping(value="activofijo", method=RequestMethod.GET)
    public String index(Model model){
        return "ActivoFijo/indexactivofijo";
    }
    @RequestMapping(value="altaActivofijo", method=RequestMethod.GET)
    public String Alta(Model model){
        return "ActivoFijo/index";
    }
}
