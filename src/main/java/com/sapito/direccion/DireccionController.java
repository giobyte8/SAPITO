/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Inventario;
import com.sapito.db.entities.OrdenCompra;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.Producto;
import com.sapito.pdf.PDFView.PDFGeneratorDireccion;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 *
 * @author LAWL
 */
@Controller
public class DireccionController {

    private GenericDao<Inventario> daoInventario;
    private EntityManager em;
     private GenericDao<Producto> daoProducto;
    private GenericDao<OrdenVenta> daoOrdenVenta;
    private GenericDao<OrdenCompra> daoOrdenCompra;

    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto) {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

    @Autowired
    public void setDaoOrdenVenta(GenericDao<OrdenVenta> daoOrdenVenta) {
        this.daoOrdenVenta = daoOrdenVenta;
        daoOrdenVenta.setClass(OrdenVenta.class);
    }

    @Autowired
    public void setDaoOrdenCompra(GenericDao<OrdenCompra> daoOrdenCompra) {
        this.daoOrdenCompra = daoOrdenCompra;
        daoOrdenCompra.setClass(OrdenCompra.class);
    }
    @Autowired
    public void setDaoInventario(GenericDao<Inventario> daoInventario) {
        this.daoInventario = daoInventario;
        
        daoInventario.setClass(Inventario.class);

    }

    @RequestMapping(value = "Direccion/indexprincipal", method = RequestMethod.GET)
    public String indexprinvipal(Model model) {
        return "Direccion/indexprincipal";
    }

    @RequestMapping(value = "Direccion/Reportes", method = RequestMethod.GET)
    public String Reportes(Model model) {
        return "Direccion/Reportes";
    }

    @RequestMapping(value = "Direccion/HistorialReportes", method = RequestMethod.GET)
    public String HistReportes(Model model) {
        return "Direccion/HistorialReportes";
    }

    @RequestMapping(value = "Direccion/CrearReporte", method = RequestMethod.GET)
    public String CrearReportes(Model model) {
        return "Direccion/CrearReporte";
    }

    @RequestMapping(value = "Direccion/Graficas", method = RequestMethod.GET)
    public String Graficas(Model model) {

        List<Inventario> inv = daoInventario.findAll();
        model.addAttribute("inv", inv);

        
        return "Direccion/Graficas";
    }
    @RequestMapping(value = "Direccion/Ventas", method = RequestMethod.GET)
    public String Ventas(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Ventas";
    }

    @RequestMapping(value = "Direccion/Compras", method = RequestMethod.GET)
    public String Compras(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Compras";
    }

    @RequestMapping(value = "Direccion/ActivosFijos", method = RequestMethod.GET)
    public String ActivosFijos(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/ActivosFijos";
    }

    @RequestMapping(value = "Direccion/Operaciones", method = RequestMethod.GET)
    public String Operaciones(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Operaciones";
    }

    @RequestMapping(value = "Direccion/Logística", method = RequestMethod.GET)
    public String Logística(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Logística";
    }

    @RequestMapping(value = "Direccion/RecursosHumanos", method = RequestMethod.GET)
    public String RecursosHumanos(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/RecursosHumanos";
    }

    @RequestMapping(value = "Direccion/Inventarios", method = RequestMethod.GET)
    public String Inventarios(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Inventarios";
    }

    @RequestMapping(value = "Direccion/Finanzas", method = RequestMethod.GET)
    public String Finanzas(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/Finanzas";
    }
    @RequestMapping(value = "Direccion/ReportePrueba")
    public String ReportePrueba(Model model) {
        model.addAttribute("textoPdf", new TextoPdf());
        return "Direccion/ReportePrueba";
    }

    @RequestMapping(value = "Direccion/testpdf", method = RequestMethod.POST)
    @ResponseBody
    public String descargarFactura(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) {

        List<Producto> producto = daoProducto.findAll();
        System.out.println(producto);
        // model.addAttribute("producto", producto);

        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.crearPDFFactura((Map<String, Object>) model, response, producto);

        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

    @RequestMapping(value = "Direccion/testpdfventas", method = RequestMethod.POST)
    @ResponseBody
    public String ReporteVentas(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) {

        List<OrdenVenta> oredenventa = daoOrdenVenta.findAll();

        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.reporteventa((Map<String, Object>) model, response, oredenventa);

        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

    @RequestMapping(value = "Direccion/testpdfcompras", method = RequestMethod.POST)
    @ResponseBody
    public String ReporteCompras(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) {

        List<OrdenCompra> ordencompra = daoOrdenCompra.findAll();

        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.reportecompras((Map<String, Object>) model, response, ordencompra);
            
        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }


}
