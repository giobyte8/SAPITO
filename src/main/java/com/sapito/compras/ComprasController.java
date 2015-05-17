/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.OrdenCompra;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author giovanni
 */
@Controller
public class ComprasController {

    private GenericDao<Proveedor> daoProveedor;
    private GenericDao<Producto> daoProducto;
    private GenericDao<ProductoProveedor> daoProductoProveedor;

    //Set
    @Autowired
    public void setDaoProveedor(GenericDao<Proveedor> daoProveedor) {
        this.daoProveedor = daoProveedor;
        daoProveedor.setClass(Proveedor.class);
    }

    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto) {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

    @Autowired
    public void setDaoProductoProveedor(GenericDao<ProductoProveedor> daoProducoProveedor) {
        this.daoProductoProveedor = daoProducoProveedor;
        daoProducoProveedor.setClass(ProductoProveedor.class);
    }

    //Alta Proveedor//
    @RequestMapping(value = "compras/altaproveedor", method = RequestMethod.GET)
    public String altaproveedor(Model model) {
        Proveedor proveedor = new Proveedor();

        model.addAttribute("proveedor", proveedor);
        return "Compras/altaproveedor";
    }

    @RequestMapping(value = "compras/altaproveedor", method = RequestMethod.POST)
    public String regproveedor(Model model, @Valid Proveedor proveedor, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Compras/altaproveedor";
        } else {
            proveedor.setStatus(true);
            daoProveedor.create(proveedor);

            List<Proveedor> proveedores = daoProveedor.findAll();
            model.addAttribute("proveedores", proveedores);
            return "Compras/consultaproveedor";
        }
    }

    //Consulta Proveedor//
    @RequestMapping(value = "compras/consultaproveedor", method = RequestMethod.GET)
    public String buscarProveedor(Model model) {
        List<Proveedor> proveedor = daoProveedor.findAll();

        if (proveedor != null && proveedor.size() > 0) {
            model.addAttribute("proveedores", proveedor);
            return "Compras/consultaproveedor";
        } else {
            model.addAttribute("proveedores", new ArrayList<Proveedor>());
            return "Compras/consultaproveedor";
        }

    }

    //Consulta Producto//
    @RequestMapping(value = "compras/ConsultaProducto", method = RequestMethod.GET)
    public String buscarProducto(Model model) {
        List<Producto> producto = daoProducto.findAll();

        if (producto != null && producto.size() > 0) {
            model.addAttribute("producto1", producto);
            return "Compras/ConsultaProducto";
        } else {
            model.addAttribute("producto1", new ArrayList<Producto>());
            return "Compras/ConsultaProducto";
        }

    }

    //Alta Producto
    @RequestMapping(value = "compras/AltaProducto", method = RequestMethod.GET)
    public String altaproducto(Model model) {
        Producto producto = new Producto();

        Map selectCategoria = new HashMap<>();
        selectCategoria.put("MATERIAPRIMA", "Materia prima");
        selectCategoria.put("ACTIVOFIJO", "Activo fijo");
        model.addAttribute("selectCategoria", selectCategoria);

        model.addAttribute("producto", producto);

        return "Compras/AltaProducto";
    }

    @RequestMapping(value = "compras/AltaProducto", method = RequestMethod.POST)
    public String regproducto(Model model, @Valid Producto producto, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Map selectCategoria = new HashMap<>();
            selectCategoria.put("MATERIAPRIMA", "Materia prima");
            selectCategoria.put("ACTIVOFIJO", "Activo fijo");
            model.addAttribute("selectCategoria", selectCategoria);
            return "Compras/AltaProducto";
        } else {
            daoProducto.create(producto);

            List<Producto> producto1 = daoProducto.findAll();
            model.addAttribute("producto1", producto1);
            return "Compras/ConsultaProducto";
        }
    }
//Fin Alta Producto

    @RequestMapping(value = "compras/productoproveedor", method = RequestMethod.GET)
    public String regProductoProveedor(Model model, @RequestParam String idProducto) {
        ProductoProveedor productoProveedor = new ProductoProveedor();
        model.addAttribute("productoProveedor", productoProveedor);

        // Tipos de unidad
        Map unidades = new HashMap();
        unidades.put("CAJA", "CAJA");
        unidades.put("PIEZA", "PIEZA");
        unidades.put("LOTE", "LOTE");

        // Producto
        Producto producto = (Producto) daoProducto.find(Long.valueOf(idProducto));
        productoProveedor.setProducto(producto);

        // Lista de proveedores
        List<Proveedor> proveedores = daoProveedor.findAll();

        model.addAttribute("unidades", unidades);
        model.addAttribute("producto", producto);
        model.addAttribute("proveedores", proveedores);
        return "Compras/ProductoProveedor";
    }

    @RequestMapping(value = "compras/productoproveedor", method = RequestMethod.POST)
    public String regProductoProveedorPost(Model model, @Valid ProductoProveedor productoProveedor,
            BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Compras/ProductoProveedor";
        } else {
            Proveedor proveedor = (Proveedor) daoProveedor
                    .find(productoProveedor.getProveedor().getId());
            Producto producto = (Producto) daoProducto
                    .find(productoProveedor.getProducto().getId());

            productoProveedor.setProducto(producto);
            productoProveedor.setProveedor(proveedor);
            daoProductoProveedor.create(productoProveedor);

            List<Producto> producto1 = daoProducto.findAll();
            model.addAttribute("producto1", producto1);
            return "Compras/ConsultaProducto";
        }
    }

    //Orden de Compra 
    @RequestMapping(value = "compras/ordenCompra", method = RequestMethod.GET)
    public String ordenCompra(Model model) {
        return "Compras/ordenCompra";
    }

    @RequestMapping(value = "compras/buscarProducto", method = RequestMethod.GET)
    public @ResponseBody
    Producto buscarProducto(Model model, String idp) {
        try {
            Long.valueOf(idp);
        } catch (NumberFormatException ex) {
            return null;
        }
        Producto producto = (Producto) daoProducto.find(Long.valueOf(idp));
        return (producto != null) ? producto : null;
        //System.out.println("To find: " + idp);
        //return (ProductoProveedor) daoProductoProveedor.find(Long.valueOf(idp));
    }

    @RequestMapping(value = "compras/proveedorproducto", method = RequestMethod.GET)
    public @ResponseBody
    Proveedor proveedorDeProducto(Model model, String idProductoProveedor) {
        try {
            Long.valueOf(idProductoProveedor);
        } catch (NumberFormatException ex) {
            return null;
        }
        ProductoProveedor producto = (ProductoProveedor) daoProductoProveedor
                .find(Long.valueOf(idProductoProveedor));
        return producto.getProveedor();
    }

    //Consulta Ordenes
    @RequestMapping(value = "compras/ConsultarOrdenes", method = RequestMethod.GET)
    public String consultarOrdenes(Model model) {
        return "Compras/ConsultarOrdenes";

    }

    @RequestMapping(value = "compras", method = RequestMethod.GET)
    public String index(Model model) {
        return "Compras/indexcompras";
    }

    @RequestMapping(value = "confirmacionProducto", method = RequestMethod.GET)
    public String confirmacionProducto(Model model) {
        return "Compras/confirmacionProducto";
    }

    @RequestMapping(value = "modificarproveedor", method = RequestMethod.GET)
    public String modificarproveedor(Model model) {
        return "Compras/modificarproveedor";
    }

    @RequestMapping(value = "informacionproveedor", method = RequestMethod.GET)
    public String informacion1proveedor(Model model) {
        return "Compras/informacionproveedor";
    }

    @RequestMapping(value = "Consulta1Orden", method = RequestMethod.GET)
    public String Consulta1Orden(Model model) {
        return "Compras/Consulta1Orden";
    }

    @RequestMapping(value = "modificaOrden", method = RequestMethod.GET)
    public String modificaOrden(Model model) {
        return "Compras/modificaOrden";
    }

    @RequestMapping(value = "confirmacionProductoEliminacion", method = RequestMethod.GET)
    public String confirmacionProductoEliminacion(Model model) {
        return "Compras/confirmacionProductoEliminacion";
    }

    @RequestMapping(value = "confirmacionProductoModificacion", method = RequestMethod.GET)
    public String confirmacionProductModificacion(Model model) {
        return "Compras/confirmacionProductoModificacion";
    }

    @RequestMapping(value = "ConsultaProducto", method = RequestMethod.GET)
    public String ConsultaProducto(Model model) {
        return "Compras/ConsultaProducto";

    }

    @RequestMapping(value = "Consulta1Producto", method = RequestMethod.GET)
    public String Consulta1Producto(Model model) {
        return "Compras/Consulta1Producto";
    }

    //Modifica Producto
    @RequestMapping(value = "compras/Modifica1Producto", method = RequestMethod.GET)
    public String Modifica1Producto(Model model) {
        Producto prodi = new Producto();

        Map selectCategoria = new HashMap<>();
        selectCategoria.put("MATERIAPRIMA", "Materia prima");
        selectCategoria.put("ACTIVOFIJO", "Activo fijo");
        model.addAttribute("selectCategoria", selectCategoria);

        model.addAttribute("producto", prodi);

        return "Compras/Modifica1Producto";
    }

    @RequestMapping(value = "compras/Modifica1Producto", method = RequestMethod.POST)
    public String modproducto(Model model, @Valid Producto prodi2, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());

            Map selectCategoria = new HashMap<>();
            selectCategoria.put("MATERIAPRIMA", "Materia prima");
            selectCategoria.put("ACTIVOFIJO", "Activo fijo");
            model.addAttribute("selectCategoria", selectCategoria);
            return "Compras/Modifica1Producto";
        } else {
            daoProducto.create(prodi2);

            List<Producto> prodi3 = daoProducto.findAll();
            model.addAttribute("prodi3", prodi3);
            return "Compras/ConsultaProducto";
        }
    }
//Modifica Producto FIN

    @RequestMapping(value = "InformacionProducto", method = RequestMethod.GET)
    public String InformacionProducto(Model model) {
        return "Compras/InformacionProducto";
    }

    @RequestMapping(value = "confirmacionProveedor", method = RequestMethod.GET)
    public String confirmacionProveedor(Model model) {
        return "Compras/confirmacionProveedor";
    }

    @RequestMapping(value = "confirmacionProveedorMod", method = RequestMethod.GET)
    public String confirmacionProveedorMod(Model model) {
        return "Compras/confirmacionProveedorMod";
    }

    @RequestMapping(value = "confirmacionProveedorEli", method = RequestMethod.GET)
    public String confirmacionProveedorEli(Model model) {
        return "Compras/confirmacionProveedorEli";
    }

}
