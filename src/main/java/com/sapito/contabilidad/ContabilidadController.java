/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.contabilidad;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.CuentaBancaria;
import com.sapito.db.entities.Empresa;
import com.sapito.db.entities.GastosGenerales;
import com.sapito.db.entities.Nomina;
import com.sapito.db.entities.OrdenCompra;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.TipoMoneda;
import com.sapito.pdf.PDFView.PDFGeneratorContabilidad;
import com.sapito.pdf.PDFView.PDFGeneratorVentas;
import com.sapito.ventas.VentasController;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
 * @author Lore-Lap
 */
@Controller
public class ContabilidadController {

    private GenericDao<TipoMoneda> daoMoneda;
    private GenericDao<OrdenCompra> daoOrdenCompra;
    private GenericDao<OrdenVenta> daoOrdenVenta;
    private GenericDao<Nomina> daoNomina;
    private GenericDao<GastosGenerales> daoGastosGenerales;
    private GenericDao<Empresa> daoEmpresa;

    @Autowired
    public void setDaoGastosGenerales(GenericDao<GastosGenerales> gastosGenerales) {
        this.daoGastosGenerales = gastosGenerales;
        daoGastosGenerales.setClass(GastosGenerales.class);
    }
    
    @Autowired
    public void setDaoNomina(GenericDao<Nomina> nomina) {
        this.daoNomina = nomina;
        daoNomina.setClass(Nomina.class);
    }
    
    @Autowired
    public void setDaoMoneda(GenericDao<TipoMoneda> moneda) {
        this.daoMoneda = moneda;
        daoMoneda.setClass(TipoMoneda.class);
    }

    @Autowired
    public void setDaoOrdenCompra(GenericDao<OrdenCompra> ordenCompra) {
        this.daoOrdenCompra = ordenCompra;
        daoOrdenCompra.setClass(OrdenCompra.class);
    }
    
    
    @Autowired
    public void setDaoEmpresa(GenericDao<Empresa> empresa) {
        this.daoEmpresa = empresa;
        daoEmpresa.setClass(Empresa.class);
    }

    @Autowired
    public void setDaoOrdenVenta(GenericDao<OrdenVenta> ordenVenta) {
        this.daoOrdenVenta = ordenVenta;
        daoOrdenVenta.setClass(OrdenVenta.class);
    }

    @RequestMapping(value = "contabilidad", method = RequestMethod.GET)
    public String index(Model model) {
        return "Contabilidad/indexcontabilidad";
    }

    @RequestMapping(value = "contabilidad/contaActivoFijo", method = RequestMethod.GET)
    public String ContaActivoFijoo(Model model) {
        return "Contabilidad/contaActivoFijo";
    }

    @RequestMapping(value = "contabilidad/redirec", method = RequestMethod.POST)
    public String ContaRedirec(Model model, @Valid TipoMoneda moneda, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Contabilidad/redirec";
        } else {
            daoMoneda.edit(moneda);
            return "Contabilidad/redirec";
        }
    }

    @RequestMapping(value = "contabilidad/contaCompras", method = RequestMethod.GET)
    public String ContaCompras(Model model) {
        return "Contabilidad/contaCompras";
    }

    @RequestMapping(value = "contabilidad/contaDireccion", method = RequestMethod.GET)
    public String ContaDireccion(Model model) {
        return "Contabilidad/contaDireccion";
    }

    @RequestMapping(value = "contabilidad/contaRH", method = RequestMethod.GET)
    public String ContaRh(Model model) {
        return "Contabilidad/contaRH";
    }

    @RequestMapping(value = "contabilidad/contaVentas", method = RequestMethod.GET)
    public String ContaVentas(Model model) {
        return "Contabilidad/contaVentas";
    }

    @RequestMapping(value = "contabilidad/contaPresupuesto", method = RequestMethod.GET)
    public String ContaPresupuesto(Model model) {
        return "Contabilidad/contaPresupuesto";
    }

    @RequestMapping(value = "contabilidad/contaInformes", method = RequestMethod.GET)
    public String ContaInformes(Model model) {
        return "Contabilidad/contaInformes";
    }

    @RequestMapping(value = "contabilidad/contaAlmacen", method = RequestMethod.GET)
    public String ContaAlmacen(Model model) {
        return "Contabilidad/contaAlmacen";
    }

    @RequestMapping(value = "contabilidad/contaMoneda", method = RequestMethod.GET)
    public String ContaMoneda(Model model) {
        List<TipoMoneda> moneda = daoMoneda.findAll();
        model.addAttribute("Monedas", moneda);
        return "Contabilidad/contaMoneda";
    }

    @RequestMapping(value = "contabilidad/contaCatalogo", method = RequestMethod.GET)
    public String ContaCatalogo(Model model) {
        return "Contabilidad/contaCatalogo";
    }

    @RequestMapping(value = "contabilidad/contaPresupuestos", method = RequestMethod.GET)
    public String ContaPresupuestos(Model model) {
        return "Contabilidad/contaPresupuestos";
    }

    @RequestMapping(value = "contabilidad/contaFinanzas", method = RequestMethod.GET)
    public String ContaFinanzas(Model model) {
        return "Contabilidad/contaFinanzas";
    }

    @RequestMapping(value = "contabilidad/contaBalanceGeneral", method = RequestMethod.GET)
    public String ContaBalanceGeneral(Model model) {
        return "Contabilidad/contaBalanceGeneral";
    }

    @RequestMapping(value = "contabilidad/contaEstadoFlujo", method = RequestMethod.GET)
    public String ContaEstadoFlujo(Model model) {
        return "Contabilidad/contacontaEstadoFlujo";
    }

    @RequestMapping(value = "contabilidad/contaEstadoResultados", method = RequestMethod.GET)
    public String ContaEstadoResultados(Model model) {
        double ingresos = 0;
        List<OrdenVenta> ventas = daoOrdenVenta.findAll();
        for (Iterator iterador = ventas.listIterator(); iterador.hasNext();) {
            OrdenVenta venta = (OrdenVenta) iterador.next();
            if(venta.getStatus().equals("VENTA")||venta.getStatus().equals("VENTA_CAMBIO")){
                ingresos=+ venta.getMontoConCargos();
            }
            else{
                ingresos=- venta.getMontoConCargos();
            }
        }
        double costoV = 0;
        List<OrdenCompra> compras = daoOrdenCompra.findAll();
        for (Iterator iterador = compras.listIterator(); iterador.hasNext();) {
            OrdenCompra compra = (OrdenCompra) iterador.next();//fecha_pedido
            if(compra.isAprobada()){
                costoV=+ compra.getCostoTotal();
            }
        }
        List<Nomina> nominas = daoNomina.findAll();
        for (Iterator iterador = nominas.listIterator(); iterador.hasNext();) {
            Nomina nomina = (Nomina) iterador.next();
            double su=nomina.getSueldototal()*2;
            costoV=+ su;
        }
        float costoG = 0;
        List<GastosGenerales> gastosGenerales = daoGastosGenerales.findAll();
        for (Iterator iterador = gastosGenerales.listIterator(); iterador.hasNext();) {
            GastosGenerales gastosGenerale = (GastosGenerales) iterador.next();
            costoG=+gastosGenerale.getCosto();
        }
        model.addAttribute("ingresos", ingresos);
        model.addAttribute("costosv", costoV);
        model.addAttribute("costosg", costoG);
        model.addAttribute("impuestosI", (ingresos*0.16));
        model.addAttribute("impuestosC", ((costoG+costoV)*0.16));
        return "Contabilidad/contaEstadoResultados";
    }

    @RequestMapping(value = "contabilidad/contaVariaciondeCapital", method = RequestMethod.GET)
    public String ContaVariaciondeCapital(Model model) {
        return "Contabilidad/contaVariaciondeCapital";
    }

    @RequestMapping(value = "contabilidad/variacion", method = RequestMethod.GET)
    @ResponseBody
    public String variacion(Model model, HttpServletRequest request, HttpServletResponse response) {
        PDFGeneratorContabilidad pdfView = new PDFGeneratorContabilidad();
        try {
            pdfView.crearVariacionContable(response);
        } catch (Exception ex) {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "OK";
    }

    @RequestMapping(value = "contabilidad/estado", method = RequestMethod.GET)
    @ResponseBody
    public String estado(Model model, HttpServletRequest request, HttpServletResponse response) {
        PDFGeneratorContabilidad pdfView = new PDFGeneratorContabilidad();
        try {
            pdfView.crearEstadoResultados(response);
        } catch (Exception ex) {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "OK";
    }

    @RequestMapping(value = "contabilidad/balance", method = RequestMethod.GET)
    @ResponseBody
    public String balance(Model model, HttpServletRequest request, HttpServletResponse response) {
        PDFGeneratorContabilidad pdfView = new PDFGeneratorContabilidad();
        try {
            pdfView.crearBalance(response);
        } catch (Exception ex) {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "OK";
    }

    @RequestMapping(value = "contabilidad/flujo", method = RequestMethod.GET)
    @ResponseBody
    public String flujo(Model model, HttpServletRequest request, HttpServletResponse response) {
        PDFGeneratorContabilidad pdfView = new PDFGeneratorContabilidad();
        try {
            pdfView.crearFlujo(response);
        } catch (Exception ex) {
            Logger.getLogger(VentasController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "OK";
    }
    
    
     @RequestMapping(value = "contabilidad/contaCrearCuenta", method = RequestMethod.GET)
    public String contaCrearCuenta(Model model) {
         CuentaBancaria cuenta = new CuentaBancaria();               
        model.addAttribute("cuenta", cuenta);
        return "Contabilidad/contaCrearCuentas";
    }  
    @RequestMapping(value = "contabilidad/contaCrearCuenta", method = RequestMethod.POST)
    public String regCuenta(Model model, @Valid CuentaBancaria cuenta, BindingResult bindingResult)
    {
        cuenta.setEmpresa(null);
        if(!bindingResult.hasErrors())
        {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Contabilidad/contaCrearCuentas";
        }
        return "";
    }
    
    @RequestMapping(value = "contabilidad/inserts", method = RequestMethod.GET)
    @ResponseBody
     public String insert(Model model, HttpServletRequest request, HttpServletResponse response)
    {
        
        Empresa empresa= new Empresa();
        empresa.setNombre("Sapo");
        empresa.setCalle("Calle");
        empresa.setEstado("México");
        empresa.setMunicipio("Metepec");
        empresa.setPais("México");
        empresa.setRfc("12345678901234");
        empresa.setCaptalInicial(234);
        daoEmpresa.create(empresa);
        
        return "Contabilidad/contaCrearCuentas";
    }

}
