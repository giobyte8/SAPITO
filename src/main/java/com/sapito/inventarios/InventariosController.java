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

    @RequestMapping(value = "inventario/materiaPrima", method = RequestMethod.GET)
    public String materiaPrima(Model model)
    {
        List<Inventario> inventario = daoInventario
                .findBySpecificField("materiaPrima", "MATERIAPRIMA", "equal", null, null);
//        model.addAttribute("materiaPrima", materiaPrima);
        
        return "Inventarios/materiaPrimaView";
    }

    @RequestMapping(value = "inventario/productoTerminado", method = RequestMethod.GET)
    public String productoTerminado(Model model)
    {
        List<Inventario> inventario = daoInventario
                .findBySpecificField("productoTerminado", "PRODUCTOTERMINADO", "equal", null, null);
//        model.addAttribute("productoTerminado", productoTerminado);
        return "Inventarios/productoTerminadoView";
    }

    //------------Materia prima--------------------
    @RequestMapping(value = "inventario/registrarMateriaPrima", method = RequestMethod.GET)
    public String registrarMateriaPrima(Model model)
    {
        Inventario inventario = new Inventario();
        model.addAttribute("inventario", inventario);
        return "Inventarios/registrarMateriaPrimaView";
    }

    @RequestMapping(value = "inventario/registrarMateriaPrima", method = RequestMethod.POST)
    public String regRegistrarMateriaPrima(Model model, @Valid Inventario inventario, BindingResult bindingResult)
    {

        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Inventarios/registrarMateriaPrimaView";
        } 
        else
        {
            inventario.setStatus(true);

            daoInventario.create(inventario);

            Query query1 = daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a where a.status=:status and a.tipoProducto=:tipo");
            query1.setParameter("status", true);
            query1.setParameter("tipo", "Materia");
            List<Inventario> inventarios = query1.getResultList();
            model.addAttribute("inventarios", inventarios);
            return "Inventarios/bajaMateriaPrimaView";
        }
    }

    @RequestMapping(value = "inventarios/bajaMateriaPrima", method = RequestMethod.GET)
    public String eliminarTransporte(Model model, HttpServletRequest request)
    {

        Inventario em = findInventario(request.getParameter("id"));
        em.setStatus(false);
        daoInventario.edit(em);

        Query query1 = daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a where a.status=:status and a.tipoProducto=:tipo");
        query1.setParameter("status", true);
        query1.setParameter("tipo", "Materia");
        List<Inventario> inventarios = query1.getResultList();
        model.addAttribute("inventarios", inventarios);
        return "Inventarios/bajaMateriaPrimaView";
    }

    public Inventario findInventario(String id)
    {
        Query query2 = daoInventario.getEntityMgr().createQuery("SELECT a FROM Inventario a where a.idinventario=:idinventario");
        query2.setParameter("idinventario", Integer.parseInt(id));
        List<Inventario> inventario = query2.getResultList();
        return inventario.get(0);
    }

    //------------Fin Materia Prima----------------
    
    
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

    @RequestMapping(value = "inventario/bajaMateriaPrima", method = RequestMethod.GET)
    public String bajaMateriaPrima(Model model)
    {
        return "Inventarios/bajaMateriaPrimaView";
    }

    @RequestMapping(value = "inventario/existencias", method = RequestMethod.GET)
    public String existencias(Model model)
    {
        return "Inventarios/existenciasView";
    }
}
