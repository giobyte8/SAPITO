/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.inventarios;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Inventario;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(value = "inventario", method = RequestMethod.GET)
    public String indexInventarios(Model model)
    {
        return "Inventarios/index";
    }

    @RequestMapping(value = "inventario/inventarioMinimo", method = RequestMethod.GET)
    public String inventarioMinimo(Model model)
    {
        return "Inventarios/inventarioMinimoView";
    }

    @RequestMapping(value = "inventario/inventarioMaximo", method = RequestMethod.GET)
    public String inventarioMaximo(Model model)
    {
        return "Inventarios/inventarioMaximoView";
    }

    @RequestMapping(value = "inventario/buscarproducto", method = RequestMethod.GET)
    public String buscarProducto(Model model)
    {
        List<Inventario> inventario = daoInventario.findAll();

        if(inventario != null && inventario.size() > 0)
        {
            model.addAttribute("inventario", inventario);
            return "Inventarios/buscarProductoView";
        }
        else
        {
            model.addAttribute("inventario", new ArrayList<Inventario>());
            return "Inventarios/buscarProductoView";
        }
    }

    
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    @RequestMapping(value = "inventario/bajaMateriaPrima", method = RequestMethod.GET)
    public String bajaMateria(Model model)
    {
        Query query =daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a Where a.tipoProducto=:tipo");
        query.setParameter("tipo", "Materia");
        List<Inventario> inventario = query.getResultList(); 

        if(inventario != null && inventario.size() > 0)
        {
            model.addAttribute("inventario", inventario);
            return "Inventarios/bajaMateriaPrima";
        }
        else
        {
            model.addAttribute("inventario", new ArrayList<Inventario>());
            return "Inventarios/bajaMateriaPrima";
        }
    }
   //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    @RequestMapping(value = "inventario/actualizarcantidad", method = RequestMethod.GET)
    public String bajaMateriaActual(Model model, @RequestParam String id, @RequestParam String cantAQuitar)
    {
        Inventario inventario = (Inventario) daoInventario.find(Integer.valueOf(id));
        inventario.setCantidad(inventario.getCantidad() - Integer.valueOf(cantAQuitar));
        
        daoInventario.edit(inventario);
        
        List<Inventario> inventarios = daoInventario
                .findBySpecificField("tipoProducto", "Materia Prima", "equal", null, null);
        model.addAttribute("inventario", inventarios);
        return"Inventarios/bajaMateriaPrima";
    }
    ///************************************************************
    
    
    @RequestMapping(value = "inventario/nvoproducto", method = RequestMethod.POST)
    public String regNvoProducto(Model model, @Valid Inventario inventario, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Inventarios/registrarProductoTerminadoView";
        } 
        else
        {
            System.out.println("Insertando");
            daoInventario.create(inventario);
            inventario=new Inventario ();
            return "Inventarios/registrarProductoTerminadoView";
        }
    }

    @RequestMapping(value = "inventario/nvoproducto", method = RequestMethod.GET)
    public String registrarProductoTerminado(Model model)
    {
        Inventario inventario = new Inventario();
        inventario.setFechaEntrada(new Date());
        inventario.setFechaProduccion(new Date());
        inventario.setPrecioUnitario(44);
        inventario.setStatus(true);
        inventario.setTipoProducto("asd");

        model.addAttribute("inventario", inventario);
        return "Inventarios/registrarProductoTerminadoView";
    }

    //ññññññññññññññññññññññññññññññññññññññññ
       @RequestMapping(value = "inventario/registrarMateriaPrima", method = RequestMethod.POST)
    public String registrarMateriaPrima(Model model, @Valid Inventario inventario, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Inventarios/rregistrarMateriaPrimaView";
        } 
        else
        {
            System.out.println("Insertando");
            daoInventario.create(inventario);
            inventario=new Inventario ();
            return "Inventarios/registrarMateriaPrimaView";
        }
    }

    @RequestMapping(value = "inventario/registrarMateriaPrima", method = RequestMethod.GET)
    public String registrarMateriaPrima(Model model)
    {
        Inventario inventario = new Inventario();
        inventario.setFechaEntrada(new Date());
        inventario.setFechaProduccion(new Date());
        inventario.setPrecioUnitario(44);
        inventario.setStatus(true);
        inventario.setTipoProducto("Materia Prima");

        model.addAttribute("inventario", inventario);
        return "Inventarios/registrarMateriaPrimaView";
    }
    
    
    
//    @RequestMapping(value = "inventario/bajaMateriaPrima", method = RequestMethod.GET)
//    public String bajaMateriaPrima(Model model)
//    {
//        return "Inventarios/bajaMateriaPrimaView";
//    }

    @RequestMapping(value = "inventario/existencias", method = RequestMethod.GET)
    public String existencias(Model model)
    {
        return "Inventarios/existenciasView";
    }
    
    
    ////////////////////////////////////////////////////////////////////////////////////////
    
//    @RequestMapping(value = "inventario/materiaPrima", method = RequestMethod.GET)
//    public String materiaPrima(Model model)
//    {
//        List<Inventario> inventario = daoInventario
//                .findBySpecificField("materiaPrima", "MATERIAPRIMA", "equal", null, null);
////        model.addAttribute("materiaPrima", materiaPrima);
//        
//        return "Inventarios/materiaPrimaView";
//    }
//
//    @RequestMapping(value = "inventario/productoTerminado", method = RequestMethod.GET)
//    public String productoTerminado(Model model)
//    {
//        List<Inventario> inventario = daoInventario
//                .findBySpecificField("productoTerminado", "PRODUCTOTERMINADO", "equal", null, null);
////        model.addAttribute("productoTerminado", productoTerminado);
//        return "Inventarios/productoTerminadoView";
//    }
    
//    @RequestMapping(value = "inventario/matepri", method = RequestMethod.GET)
//    public String matepri(Model model)
//    {
//        return "Inventarios/materiaPrimaView";
//    }
//    
    @RequestMapping(value = "inventario/prote", method = RequestMethod.GET)
   public String prote(Model model)
   {
       return "Inventarios/productoTerminadoView";
    }
    
   
    @RequestMapping(value = "inventario/mateprim", method = RequestMethod.GET)
   public String mateprim(Model model)
   {
       return "Inventarios/materiaPrimaView";
    }
    
}
