/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.CuentaBancaria;
import com.sapito.db.entities.Detallevacaciones;
import com.sapito.db.entities.Inventario;
import com.sapito.db.entities.OrdenCompra;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.Producto;
import com.sapito.db.entities.Vacaciones;
import com.sapito.pdf.PDFView.PDFGeneratorDireccion;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import static java.util.Collections.list;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    private GenericDao<Producto> daoProducto;
    private GenericDao<OrdenVenta> daoOrdenVenta;
    private GenericDao<OrdenCompra> daoOrdenCompra;
    private GenericDao<Detallevacaciones> daoDetallevacaciones;
    private GenericDao<CuentaBancaria> daoCuentaBancaria;
    private GenericDao<Vacaciones> daoVacaciones;
    

    @Autowired
    public void setDaoVacaciones(GenericDao<Vacaciones> daoVacaciones) {
        this.daoVacaciones = daoVacaciones;
        daoVacaciones.setClass(Vacaciones.class);
    }

    @Autowired
    public void setDaoCuentaBancaria(GenericDao<CuentaBancaria> daoCuentaBancaria) {
        this.daoCuentaBancaria = daoCuentaBancaria;
        daoCuentaBancaria.setClass(CuentaBancaria.class);
    }

    @Autowired
    public void setDaoDetallevacaciones(GenericDao<Detallevacaciones> daoDetallevacaciones) {
        this.daoDetallevacaciones = daoDetallevacaciones;
        daoDetallevacaciones.setClass(Detallevacaciones.class);
    }

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

        int contador = 0;

        List<Inventario> inv = daoInventario.findAll();
        List<Vacaciones> VA = daoVacaciones.findAll();
        List<CuentaBancaria> CB = daoCuentaBancaria.findAll();

        String arrbanco[] = new String[CB.size()];
        Float arrbanco2[] = new Float[CB.size()];
        contador = 0;
        for (Iterator iterator = CB.listIterator(); iterator.hasNext();) {
            CuentaBancaria cuenta = (CuentaBancaria) iterator.next();
            if (contador != CB.size()) {
                arrbanco[contador] = cuenta.getNombreBanco();
                arrbanco2[contador] = cuenta.getHaber();
                contador++;
            }
        }
        ArrayList<String> albanco = new ArrayList<String>(Arrays.asList(arrbanco));
        ArrayList<Float> albanco2 = new ArrayList<Float>(Arrays.asList(arrbanco2));
        
        
        int[] arremp = new int[VA.size()];
        contador = 0;
        int inca = 0, trab = 0, vaca = 0;
        for (Iterator iterator = VA.listIterator(); iterator.hasNext();) {
            Vacaciones empstatus = (Vacaciones) iterator.next();
            if (contador != VA.size()) {
                arremp[contador] = Integer.parseInt(empstatus.getStatus());
                contador++;
            }
        }

        for (int i = 0; i < arremp.length; i++) {

            System.out.println(arremp[i]);
            if (arremp[i] == 0) {
                trab++;
            } else if (arremp[i] == 1) {
                vaca++;
            } else if (arremp[i] == 2) {
                inca++;
            }
        }



        String categoriasArregl[] = new String[inv.size()];
        contador = 0;
        for (Iterator iterator = inv.listIterator(); iterator.hasNext();) {
            Inventario categoria = (Inventario) iterator.next();
            if (contador != inv.size()) {
                categoriasArregl[contador] = categoria.getCategoria();
                contador++;
            }
        }

        ArrayList<String> al = new ArrayList<String>(Arrays.asList(categoriasArregl));
        Set<String> set = new LinkedHashSet<String>();
        for (int i = 0; i < categoriasArregl.length; i++) {
            set.add(categoriasArregl[i]);
        }

        set.addAll(al);
        al.clear();
        al.addAll(set);

        List<Inventario> lista;
        double suma[] = new double[al.size()];
        System.out.println(al.size());
        for (int i = 0; i < al.size(); i++) {
            lista = daoInventario.findBySpecificField("categoria", al.get(i), "equal", null, null);
            for (Inventario x : lista) {
                System.out.println(suma[i]);
                suma[i] = suma[i] + (x.getPrecioUnitario() * x.getCantidad());
            }
        }

        ArrayList<Double> al2 = new ArrayList<Double>();

        for (int i = 0; i < suma.length; i++) {
            al2.add(suma[i]);
        }

        model.addAttribute("albanco", albanco);
        model.addAttribute("albanco2", albanco2);

        model.addAttribute("al2", al2);
        model.addAttribute("al", al);
        model.addAttribute("inv", inv);

        model.addAttribute("trab", trab);
        model.addAttribute("vaca", vaca);
        model.addAttribute("inca", inca);
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
        //System.out.println(producto);
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
    public String ReporteVentas(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

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

    @RequestMapping(value = "Direccion/testpdfinventario", method = RequestMethod.POST)
    @ResponseBody
    public String ReporteInvenario(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<Inventario> inventario = daoInventario.findAll();
        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.reporteinventario((Map<String, Object>) model, response, inventario);

        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

    @RequestMapping(value = "Direccion/testpdfrh", method = RequestMethod.POST)
    @ResponseBody
    public String ReporteRH(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

        int detalles = daoDetallevacaciones.count();
        List<Detallevacaciones> detalle = daoDetallevacaciones.findAll();
        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.reporteRH((Map<String, Object>) model, response, detalles);

        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

    @RequestMapping(value = "Direccion/testpdffinanzas", method = RequestMethod.POST)
    @ResponseBody
    public String Reportefinanzas(TextoPdf pdfText, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<CuentaBancaria> cuenta = daoCuentaBancaria.findAll();
        PDFGeneratorDireccion pdfView = new PDFGeneratorDireccion();
        model.addAttribute("todoTexto", pdfText);
        try {
            pdfView.reportefinanzas((Map<String, Object>) model, response, cuenta);

        } catch (Exception ex) {
            Logger.getLogger(DireccionController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "OK";
    }

}
