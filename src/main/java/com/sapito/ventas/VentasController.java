/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.ventas;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Cliente;
import com.sapito.db.entities.Inventario;
import java.util.Date;
import java.util.List;
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
 * @author giovanni
 */
@Controller
public class VentasController
{
    private GenericDao<Cliente> daoCliente;
    private GenericDao<Inventario> daoInventario;
    
    @Autowired
    public void setDaoCliente(GenericDao<Cliente> daoCliente)
    {
        this.daoCliente = daoCliente;
        daoCliente.setClass(Cliente.class);
    }
    
    @Autowired
    public void setDaoInventario(GenericDao<Inventario> daoInventario)
    {
        this.daoInventario = daoInventario;
        daoInventario.setClass(Inventario.class);
    }
    
    

    @RequestMapping(value = "ventas", method = RequestMethod.GET)
    public String index(Model model)
    {
        return "Ventas/indexVentas";
    }

    @RequestMapping(value = "ventas/nvocliente", method = RequestMethod.GET)
    public String nvoCliente(Model model)
    {
        Cliente cliente = new Cliente();
        cliente.setStatus(true);
        
        model.addAttribute("cliente", cliente);
        return "Ventas/nvoCliente";
    }
    
    @RequestMapping(value = "ventas/nvocliente", method = RequestMethod.POST)
    public String regNvoCliente(Model model, @Valid Cliente cliente, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Ventas/nvoCliente";
        }
        else
        {
            daoCliente.create(cliente);
            
            List<Cliente> clientes = daoCliente.findAll();
            model.addAttribute("clientes", clientes);
            return "Ventas/clientes";
        }
    }

    @RequestMapping(value = "ventas/clientes", method = RequestMethod.GET)
    public String clientes(Model model)
    {
        List<Cliente> clientes = daoCliente.findAll();
        model.addAttribute("clientes", clientes);        
        return "Ventas/clientes";
    }
    
    @RequestMapping(value = "ventas/buscarcliente", method = RequestMethod.GET)
    public @ResponseBody Cliente buscarCliente(Model model, String rfc)
    {
        List<Cliente> clientes = daoCliente
                .findBySpecificField("rfc", rfc.trim(), "equal", null, null);
        
        if(clientes.size() > 0)
        {
            return clientes.get(0);
        }
        else
        {
            return null;
        }
    }
    
    @RequestMapping(value = "ventas/buscarproducto", method = RequestMethod.GET)
    public @ResponseBody Inventario buscarProductoInventario(Model model, String cinventario)
    {
        List<Inventario> productos = daoInventario
                .findBySpecificField("codigoInventario", cinventario.trim(), "equal", null, null);
        
        if(productos.size() > 0)
        {
            return productos.get(0);
        }
        else
        {
            return null;
        }
    }

    @RequestMapping(value = "ventas/vendedores", method = RequestMethod.GET)
    public String vendedores(Model model)
    {
        return "Ventas/vendedores";
    }

    @RequestMapping(value = "ventas/nvaorden")
    public String nvaOrdenVentas(Model model)
    {
        return "Ventas/nvaOrdenVenta";
    }

    @RequestMapping(value = "ventas/altaclientes", method = RequestMethod.GET)
    public String altaClientes(Model model)
    {
        return "Ventas/altaClientes";
    }

    @RequestMapping(value = "ventas/ordenes", method = RequestMethod.GET)
    public String ordenes(Model model)
    {
        return "Ventas/ordenes";
    }

    @RequestMapping(value = "ventas/ofertas", method = RequestMethod.GET)
    public String ofertas(Model model)
    {
        return "Ventas/ofertas";
    }

    @RequestMapping(value = "ventas/historial", method = RequestMethod.GET)
    public String historial(Model model)
    {
        return "Ventas/historialVentas";
    }

    @RequestMapping(value = "ventas/facturas", method = RequestMethod.GET)
    public String facturas(Model model)
    {
        return "Ventas/facturas";
    }

    @RequestMapping(value = "ventas/devoluciones", method = RequestMethod.GET)
    public String devolucion(Model model)
    {
        return "Ventas/nvaDevolucion";
    }

    @RequestMapping(value = "ventas/cambios", method = RequestMethod.GET)
    public String cambio(Model model)
    {
        return "Ventas/cambio";
    }
    
    @RequestMapping(value = "ventas/demoin", method = RequestMethod.GET)
    public @ResponseBody List<Inventario> demoInserts(Model model)
    {
        for(int i=0; i<5; i++)
        {
            Inventario inv = new Inventario();
            inv.setCantidad(i + 10);
            inv.setCategoria("Electronicos");
            inv.setCodigoInventario("ABC123" + i);
            inv.setFechaEntrada(new Date(2015, 02, 25));
            inv.setFechaProduccion(new Date(2014, 01, 05));
            inv.setMaximo(50);
            inv.setMinimo(i);
            inv.setNombre("Producto" + i);
            inv.setUbicacion("Almacen" + i);
            inv.setTipoProducto("MATERIAPRIMA");
            
            daoInventario.create(inv);
        }
        
        return daoInventario.findAll();
    }
}
