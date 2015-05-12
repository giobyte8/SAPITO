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
import javax.persistence.Query;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    
    //------------Materia prima--------------------
    
    
    
    
     @RequestMapping(value = "Inventarios/registrarMateriaPrima", method = RequestMethod.GET)
    public String registrarMateriaPrima(Model model) 
    {
        Inventario inventario = new Inventario();        
        model.addAttribute("inventario", inventario);        
        return "Inventarios/registrarMateriaPrimaView";
    }
    
    @RequestMapping(value = "Inventarios/registrarMateriaPrima", method = RequestMethod.POST)
    public String regRegistrarMateriaPrima(Model model, @Valid Inventario inventario, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/operadoresNew";
        } else 
        {
            inventario.setStatus(true);
            inventario.setTipoProducto("Materia prima");
            daoInventario.create(inventario);            

            Query query1 = daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a where a.status=:status and a.tipoProducto=:tipo");
            query1.setParameter("status", true);
            query1.setParameter("tipo","Materia prima");
            List<Inventario> inventarios = query1.getResultList();
            model.addAttribute("inventario", inventarios);
            return "Inventario/materiaPrimaView";
        }
    }
    
    
    //------------Fin Materia Prima----------------
    
    
//    @RequestMapping(value="registrarMateriaPrima", method=RequestMethod.GET)
//    public String registrarMateriPrima(Model model)
//    {
//        return "Inventarios/registrarMateriaPrimaView";
//    }
   
    
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
