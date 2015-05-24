/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.inventarios;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Inventario;
import com.sapito.db.entities.Proveedor;
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
        query.setParameter("tipo", "Materia Prima");
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
    
    
    
    @RequestMapping(value = "inventario/maximoMinProducto", method = RequestMethod.GET)
    public String maximoMinProducto(Model model)
    {
        Query query =daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a Where a.tipoProducto=:tipo");
        query.setParameter("tipo", "Producto Terminado");
        List<Inventario> inventario = query.getResultList(); 

        if(inventario != null && inventario.size() > 0)
        {
            model.addAttribute("inventario", inventario);
            return "Inventarios/productoTerminadoView";
        }
        else
        {
            model.addAttribute("inventario", new ArrayList<Inventario>());
            return "Inventarios/productoTerminadoView";
        }
    }
    
    
    @RequestMapping(value = "inventario/actualizarmaximo", method = RequestMethod.GET)
    public String actualizarMaxMin(Model model, @RequestParam String id, @RequestParam String maxMod, @RequestParam String minMod )
    {
        Inventario inventario = (Inventario) daoInventario.find(Integer.valueOf(id));
        inventario.setMaximo(Integer.valueOf(maxMod)) ;
        inventario.setMinimo(Integer.valueOf(minMod));
        
        daoInventario.edit(inventario);
         
        
        List<Inventario> inventarios = daoInventario
                .findBySpecificField("tipoProducto", "Producto Terminado", "equal", null, null);
        model.addAttribute("inventario", inventarios);
        return"Inventarios/productoTerminadoView";
    }
    //Fin maximos minimos producto final
    
    
    @RequestMapping(value = "inventario/maximoMinimoMateria", method = RequestMethod.GET)
    public String maximoMinimoMateria(Model model)
    {
        Query query =daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a Where a.tipoProducto=:tipo");
        query.setParameter("tipo", "Materia Prima");
        List<Inventario> inventario = query.getResultList(); 

        if(inventario != null && inventario.size() > 0)
        {
            model.addAttribute("inventario", inventario);
            return "Inventarios/materiaPrimaView";
        }
        else
        {
            model.addAttribute("inventario", new ArrayList<Inventario>());
            return "Inventarios/materiaPrimaView";
        }
    }
    
    
    @RequestMapping(value = "inventario/actualizarmaximoma", method = RequestMethod.GET)
    public String actualizarMaxMinma(Model model, @RequestParam String id, @RequestParam String maxMod, @RequestParam String minMod )
    {
        Inventario inventario = (Inventario) daoInventario.find(Integer.valueOf(id));
        inventario.setMaximo(Integer.valueOf(maxMod)) ;
        inventario.setMinimo(Integer.valueOf(minMod));
        
        daoInventario.edit(inventario);
        
        List<Inventario> inventarios = daoInventario
                .findBySpecificField("tipoProducto", "Materia Prima", "equal", null, null);
        model.addAttribute("inventario", inventarios);
        return"Inventarios/materiaPrimaView";
    }
    
    @RequestMapping(value = "inventario/modificarMateria", method = RequestMethod.GET)
    public String modificarMateria(Model model,@RequestParam String id, @RequestParam String idInv, @RequestParam String nombre, 
            @RequestParam String precio, String Cantidad, String ubicacion, String fecha, String fechapro)
    {
        Inventario inventario = (Inventario) daoInventario.find(Integer.valueOf(id));
        
        inventario.setCodigoInventario(idInv);
        inventario.setNombre(nombre);
        inventario.setPrecioUnitario(Integer.valueOf(precio));
        
        daoInventario.edit(inventario);
        
        List<Inventario> inventarios = daoInventario
                .findBySpecificField("tipoProducto", "Materia Prima", "equal", null, null);
        model.addAttribute("inventario", inventarios);
        return"Inventarios/bajaMateriaPrima";
    }
    
    //************************************************************
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
    
    
    @RequestMapping(value = "inventario/nvoproducto", method = RequestMethod.POST)
    public String regNvoProducto(Model model, @Valid Inventario inventario, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            model.addAttribute("showConfirm", "false");
            return "Inventarios/registrarProductoTerminadoView";
        } 
        else
        {
            daoInventario.create(inventario);
            
            model.addAttribute("showConfirm", "true");
            return "Inventarios/registrarProductoTerminadoView";
        }
    }

    @RequestMapping(value = "inventario/nvoproducto", method = RequestMethod.GET)
    public String registrarProductoTerminado(Model model)
    {
        Inventario inventario = new Inventario();
        inventario.setFechaEntrada(new Date());
        inventario.setFechaProduccion(new Date());

        model.addAttribute("inventario", inventario);
        model.addAttribute("showConfirm", "false");
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
            model.addAttribute("showConfirm", "false");
            return "Inventarios/registrarMateriaPrimaView";
        } 
        else
        {
            daoInventario.create(inventario);
            model.addAttribute("showConfirm", "true");
            return "Inventarios/registrarMateriaPrimaView";
        }
    }
    

    @RequestMapping(value = "inventario/registrarMateriaPrima", method = RequestMethod.GET)
    public String registrarMateriaPrima(Model model)
    {
        Inventario inventario = new Inventario();

        model.addAttribute("inventario", inventario);
        model.addAttribute("showConfirm", "false");
        return "Inventarios/registrarMateriaPrimaView";
    }
    
    
    


        @RequestMapping(value = "inventario/existencias", method = RequestMethod.GET)
    public String existencias(Model model) {

        List<Inventario> inventariototal = daoInventario.findAll();
        List<Inventario> inventario = new ArrayList<>();
        for(Inventario inv : inventariototal)
        {
            if (inv.getCantidad() <= inv.getMinimo()) {
                inventario.add(inv);
            }
        }

        if (inventariototal != null && inventariototal.size() > 0) {
            model.addAttribute("inventariototal", inventariototal);
            model.addAttribute("inventario", inventario);
            return "Inventarios/existenciasView";
        } else {
            model.addAttribute("inventariototal", new ArrayList<Inventario>());
            model.addAttribute("inventario", inventario);
            return "Inventarios/existenciasView";
        }

    }
    
    
    ////////////////////////////////////////////////////////////////////////////////////////
   
    
    
   
    @RequestMapping(value = "inventario/mateprim", method = RequestMethod.GET)
   public String mateprim(Model model)
   {
       return "Inventarios/materiaPrimaView";
    }
    
}
