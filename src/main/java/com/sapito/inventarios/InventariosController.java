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
import org.springframework.web.bind.annotation.ResponseBody;
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
    public @ResponseBody Inventario buscarProducto(Model model, String nombre, String codigoInventario)
    {
        List<Inventario> productos = daoInventario
                .findBySpecificField("codigoInventario", codigoInventario.trim(), "equal", null, null);
        
        if(productos.size() > 0)
        {
            return productos.get(0);
        }
        else
        {
            return null;
        }
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
   
    
    @RequestMapping(value = "newProducto", method = RequestMethod.POST)
    public String newProducto(Model model, Inventario inventario, BindingResult result)
    {
      daoInventario.create(inventario);
      model.addAttribute("Inventario", new Inventario());
      return "Inventarios/registrarProductoTerminadoView";
    }
   
    @RequestMapping(value="registrarProductoTerminado", method=RequestMethod.GET)
    public String registrarProductoTerminado(Model model)
    {    
       Inventario inventario = new Inventario();
       model.addAttribute("Inventario", inventario);
       return "Inventarios/registrarProductoTerminadoView";
    }
   
    @RequestMapping(value="bajaMateriaPrima", method=RequestMethod.GET)
    public String bajaMateriaPrima(Model model)
    {
        return "Inventarios/bajaMateriaPrimaView";
    }
}
