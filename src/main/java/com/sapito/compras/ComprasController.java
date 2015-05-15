/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Proveedor;
import com.sapito.ventas.*;
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
public class ComprasController {

    private GenericDao<Proveedor> daoProveedor;

    //Set

    @Autowired
    public void setDaoProveedor(GenericDao<Proveedor> daoProveedor) {
        this.daoProveedor = daoProveedor;
        daoProveedor.setClass(Proveedor.class);
    }

    //Alta Proveedor//
    @RequestMapping(value = "compras/altaproveedor", method = RequestMethod.GET)
    public String altaproveedor(Model model) {
        Proveedor proveedor = new Proveedor();
        proveedor.setStatus(true);

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
            daoProveedor.create(proveedor);

            List<Proveedor> proveedores = daoProveedor.findAll();
            model.addAttribute("proveedores", proveedores);
            return "Compras/consultaproveedor";
        }
    }
    //Fin Proveedor//

    //Consulta Proveedor//
 
    @RequestMapping(value = "compras/consultaproveedor", method = RequestMethod.GET)
    public String buscarProveedor(Model model) {
        List<Proveedor> proveedor = daoProveedor.findAll();

        if (proveedor != null && proveedor.size() > 0) 
        {
            model.addAttribute("proveedor",proveedor);
            return "Compras/consultaproveedor";
        } else 
        {
            return null;
        }

    }
//Producto

    @RequestMapping(value = "compras", method = RequestMethod.GET)
    public String index(Model model) {
        return "Compras/indexcompras";
    }

    //Orden de Compra 
    @RequestMapping(value = "confirmacionProducto", method = RequestMethod.GET)
    public String confirmacionProducto(Model model) {
        return "Compras/confirmacionProducto";
    }

    @RequestMapping(value = "modificarproveedor", method = RequestMethod.GET)
    public String modificarproveedor(Model model) {
        return "Compras/modificarproveedor";
    }

//    @RequestMapping(value = "compras/consultaproveedor", method = RequestMethod.GET)
//    public String consultarproveedor(Model model) {
//        return "Compras/consultaproveedor";
//    }


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

    @RequestMapping(value = "ordenCompra", method = RequestMethod.GET)
    public String ordenCompra(Model model) {
        return "Compras/ordenCompra";
    }

    @RequestMapping(value = "AltaProducto", method = RequestMethod.GET)
    public String AltaProducto(Model model) {
        return "Compras/AltaProducto";
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

    @RequestMapping(value = "ConsultarOrdenes", method = RequestMethod.GET)
    public String ConsultarOrdenes(Model model) {
        return "Compras/ConsultarOrdenes";

    }

    @RequestMapping(value = "Consulta1Producto", method = RequestMethod.GET)
    public String Consulta1Producto(Model model) {
        return "Compras/Consulta1Producto";
    }

    @RequestMapping(value = "Modifica1Producto", method = RequestMethod.GET)
    public String Modifica1Producto(Model model) {
        return "Compras/Modifica1Producto";
    }

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
