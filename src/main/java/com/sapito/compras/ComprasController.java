/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import com.sapito.ventas.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author giovanni
 */
@Controller
public class ComprasController {

    @RequestMapping(value = "compras", method = RequestMethod.GET)
    public String index(Model model) {
        return "Compras/indexcompras";
    }

    @RequestMapping(value = "altaproveedor", method = RequestMethod.GET)
    public String altaproveedor(Model model) {
        return "Compras/altaproveedor";
    }

    @RequestMapping(value = "confirmacionProducto", method = RequestMethod.GET)
    public String confirmacionProducto(Model model) {
        return "Compras/confirmacionProducto";
    }

    @RequestMapping(value = "modificarproveedor", method = RequestMethod.GET)
    public String modificarproveedor(Model model) {
        return "Compras/modificarproveedor";
    }

    @RequestMapping(value = "consultaproveedor", method = RequestMethod.GET)
    public String bajaproveedor(Model model) {
        return "Compras/consultaproveedor";
    }

    @RequestMapping(value = "consulta1proveedor", method = RequestMethod.GET)
    public String consultaproveedor(Model model) {
        return "Compras/consulta1proveedor";
    }

    @RequestMapping(value = "informacionproveedor", method = RequestMethod.GET)
    public String informacion1proveedor(Model model) {
        return "Compras/informacionproveedor";
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
