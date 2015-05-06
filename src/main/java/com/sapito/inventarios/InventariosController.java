/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.inventarios;

//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Inventario;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingErrorProcessor;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author Elizabeth
 */
@Controller

public class InventariosController

{
    private GenericDao<Inventario> daoInventario;
    
    @Autowired
    public void setDaoInventario(GenericDao<Inventario> daoInventario)
    {
        this.daoInventario = daoInventario;
        daoInventario.setClass(Inventario.class);
    }
    
    
     @RequestMapping(value="inventarios", method=RequestMethod.GET)
    public String indexInventarios(Model model)
    {
        return "Inventarios/index";
    }
    
    @RequestMapping(value="inventarioMinimo", method=RequestMethod.GET)
    public String inventarioMinimo(Model model)
    {
        return "Inventarios/inventarioMinimoView";
    } 
    
    @RequestMapping(value="inventarioMaximo", method=RequestMethod.GET)
    public String inventarioMaximo(Model model)
    {
        return "Inventarios/inventarioMaximoView";
    }
      
    
    @RequestMapping(value="buscarProducto", method=RequestMethod.GET)
    public String buscarProducto(Model model)
    {
        return "Inventarios/buscarProductoView";
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
        return "Inventarios/registrarMateriaPrimaView";
    }
   
    @RequestMapping(value="registrarProductoTerminado", method=RequestMethod.GET)
    public String registrarProductoTerminado(Model model)
    {    
        Inventario inventario = new Inventario();
      //preguntar si es necesario-  inventario.setStatus(true);
       
        model.addAttribute("inventario", inventario);
       return "Inventarios/registrarProductoTerminadoView";
    }
    
    @RequestMapping(value = "registrarProductoTerminado", method = RequestMethod.POST)
    public String regProductoTerminado(Model model, @Valid Inventario inventario, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Inventarios/registrarProductoTerminadoView";
        }
        else
        {
            daoInventario.create(inventario);
            return "Inventarios/"; //duda que va en este
        }
    }
    
    @RequestMapping(value="bajaMateriaPrima", method=RequestMethod.GET)
    public String bajaMateriaPrima(Model model)
    {
        return "Inventarios/bajaMateriaPrimaView";
    }
}
