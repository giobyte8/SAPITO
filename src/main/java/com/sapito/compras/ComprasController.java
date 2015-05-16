/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Producto;
import com.sapito.db.entities.ProductoProveedor;
import com.sapito.db.entities.Proveedor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author giovanni
 */
@Controller
public class ComprasController
{

    private GenericDao<Proveedor> daoProveedor;
    private GenericDao<Producto> daoProducto;

    //Set
    @Autowired
    public void setDaoProveedor(GenericDao<Proveedor> daoProveedor)
    {
        this.daoProveedor = daoProveedor;
        daoProveedor.setClass(Proveedor.class);
    }

    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto)
    {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

    //Alta Proveedor//
    @RequestMapping(value = "compras/altaproveedor", method = RequestMethod.GET)
    public String altaproveedor(Model model)
    {
        Proveedor proveedor = new Proveedor();
        proveedor.setStatus(true);

        model.addAttribute("proveedor", proveedor);
        return "Compras/altaproveedor";
    }

    @RequestMapping(value = "compras/altaproveedor", method = RequestMethod.POST)
    public String regproveedor(Model model, @Valid Proveedor proveedor, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Compras/altaproveedor";
        } 
        else
        {
            daoProveedor.create(proveedor);

            List<Proveedor> proveedores = daoProveedor.findAll();
            model.addAttribute("proveedores", proveedores);
            return "Compras/consultaproveedor";
        }
    }

    //Consulta Proveedor//
    @RequestMapping(value = "compras/consultaproveedor", method = RequestMethod.GET)
    public String buscarProveedor(Model model)
    {
        List<Proveedor> proveedor = daoProveedor.findAll();

        if(proveedor != null && proveedor.size() > 0)
        {
            model.addAttribute("proveedores", proveedor);
            return "Compras/consultaproveedor";
        } else
        {
            model.addAttribute("proveedores", new ArrayList<Proveedor>());
            return "Compras/consultaproveedor";
        }

    }

    //Alta Producto
    @RequestMapping(value = "compras/AltaProducto", method = RequestMethod.GET)
    public String altaproducto(Model model)
    {
        Producto producto = new Producto();

        Map selectCategoria = new HashMap<>();
        selectCategoria.put("MATERIAPRIMA", "Materia prima");
        selectCategoria.put("ACTIVOFIJO", "Activo fijo");
        model.addAttribute("selectCategoria", selectCategoria);

        model.addAttribute("producto", producto);

        return "Compras/AltaProducto";
    }

    @RequestMapping(value = "compras/AltaProducto", method = RequestMethod.POST)
    public String regproducto(Model model, @Valid Producto producto, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Compras/AltaProducto";
        } else
        {
            daoProducto.create(producto);

            Map selectCategoria = new HashMap<>();
            selectCategoria.put("MATERIAPRIMA", "Materia prima");
            selectCategoria.put("ACTIVOFIJO", "Activo fijo");
            model.addAttribute("selectCategoria", selectCategoria);

            Producto producto2 = new Producto();
            model.addAttribute("producto", producto2);
            return "Compras/AltaProducto";
        }
    }
//Fin Alta Producto
    
    @RequestMapping(value = "compras/productoproveedor", method = RequestMethod.GET)
    public String regProductoProveedor(Model model)
    {
        ProductoProveedor productoProveedor = new ProductoProveedor();
        model.addAttribute("productoProveedor", productoProveedor);
        
        // Tipos de unidad
        Map unidades = new HashMap();
        unidades.put("CAJA", "CAJA");
        unidades.put("PIEZA", "PIEZA");
        unidades.put("LOTE", "LOTE");
        
        // Proveedores
        List<Producto> productos = daoProducto.findAll();
        
        model.addAttribute("unidades", unidades);
        model.addAttribute("productos", productos);
        return "Compras/ProductoProveedor";
    }

    @RequestMapping(value = "compras", method = RequestMethod.GET)
    public String index(Model model)
    {
        return "Compras/indexcompras";
    }

    //Orden de Compra 
    @RequestMapping(value = "confirmacionProducto", method = RequestMethod.GET)
    public String confirmacionProducto(Model model)
    {
        return "Compras/confirmacionProducto";
    }

    @RequestMapping(value = "modificarproveedor", method = RequestMethod.GET)
    public String modificarproveedor(Model model)
    {
        return "Compras/modificarproveedor";
    }

    @RequestMapping(value = "informacionproveedor", method = RequestMethod.GET)
    public String informacion1proveedor(Model model)
    {
        return "Compras/informacionproveedor";
    }

    @RequestMapping(value = "Consulta1Orden", method = RequestMethod.GET)
    public String Consulta1Orden(Model model)
    {
        return "Compras/Consulta1Orden";
    }

    @RequestMapping(value = "modificaOrden", method = RequestMethod.GET)
    public String modificaOrden(Model model)
    {
        return "Compras/modificaOrden";
    }

    @RequestMapping(value = "ordenCompra", method = RequestMethod.GET)
    public String ordenCompra(Model model)
    {
        return "Compras/ordenCompra";
    }

    @RequestMapping(value = "confirmacionProductoEliminacion", method = RequestMethod.GET)
    public String confirmacionProductoEliminacion(Model model)
    {
        return "Compras/confirmacionProductoEliminacion";
    }

    @RequestMapping(value = "confirmacionProductoModificacion", method = RequestMethod.GET)
    public String confirmacionProductModificacion(Model model)
    {
        return "Compras/confirmacionProductoModificacion";
    }

    @RequestMapping(value = "ConsultaProducto", method = RequestMethod.GET)
    public String ConsultaProducto(Model model)
    {
        return "Compras/ConsultaProducto";

    }

    @RequestMapping(value = "ConsultarOrdenes", method = RequestMethod.GET)
    public String ConsultarOrdenes(Model model)
    {
        return "Compras/ConsultarOrdenes";

    }

    @RequestMapping(value = "Consulta1Producto", method = RequestMethod.GET)
    public String Consulta1Producto(Model model)
    {
        return "Compras/Consulta1Producto";
    }

    @RequestMapping(value = "Modifica1Producto", method = RequestMethod.GET)
    public String Modifica1Producto(Model model)
    {
        return "Compras/Modifica1Producto";
    }

    @RequestMapping(value = "InformacionProducto", method = RequestMethod.GET)
    public String InformacionProducto(Model model)
    {
        return "Compras/InformacionProducto";
    }

    @RequestMapping(value = "confirmacionProveedor", method = RequestMethod.GET)
    public String confirmacionProveedor(Model model)
    {
        return "Compras/confirmacionProveedor";
    }

    @RequestMapping(value = "confirmacionProveedorMod", method = RequestMethod.GET)
    public String confirmacionProveedorMod(Model model)
    {
        return "Compras/confirmacionProveedorMod";
    }

    @RequestMapping(value = "confirmacionProveedorEli", method = RequestMethod.GET)
    public String confirmacionProveedorEli(Model model)
    {
        return "Compras/confirmacionProveedorEli";
    }

}
