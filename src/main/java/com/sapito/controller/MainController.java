/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author giovanni
 */
@Controller
public class MainController
{
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String redirect(Model model)
    {
        return "sapoindex";
    }
    @RequestMapping(value="loginIndex", method=RequestMethod.POST)
    public String login(Model model,String username, String password)
    {
        System.out.println(username);
        System.out.println(password);
        
        boolean b=true;
        if("VENTAS".equals(username)){
            return "redirect:ventas"; 
        }
        if("RH".equals(username)){
            return "redirect:recursoshumanos"; 
        }
        if("INVENTARIOS".equals(username)){
            return "redirect:inventarios"; 
        }
        if("CONTABILIDAD".equals(username)){
            return "redirect:contabilidad"; 
        }
        if("COMPRAS".equals(username)){
            return "redirect:compras"; 
        }
        if("ACTIVOFIJO".equals(username)){
            return "redirect:activofijo"; 
        }
        if("DIRECCION".equals(username)){
            return "redirect:direccion"; 
        }
        if("OPERACIONES".equals(username)){
            return "redirect:operaciones"; 
        }
        else{
            
           String error = "<br><div class='alert alert-danger' role='alert'>Usuario no encontrado</div>";
          model.addAttribute( "NotFound", error );
          return "sapoindex";
        }
       
    }
}
