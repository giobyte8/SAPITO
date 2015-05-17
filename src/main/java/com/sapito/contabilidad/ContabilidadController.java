/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.contabilidad;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.CatalogoCuenta;
import com.sapito.db.entities.CuentaBancaria;
import com.sapito.db.entities.Departamento;
import com.sapito.db.entities.Empresa;
import com.sapito.db.entities.GastosGenerales;
import com.sapito.db.entities.Nomina;
import com.sapito.db.entities.OrdenCompra;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.ProductoProveedor;
import com.sapito.db.entities.TipoMoneda;
import com.sapito.pdf.PDFView.PDFGeneratorContabilidad;
import com.sapito.ventas.VentasController;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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
    private GenericDao<CuentaBancaria> daoCuentaBancaria;
    private GenericDao<ProductoProveedor> daoProductoProveedor;
    private GenericDao<CatalogoCuenta> daoCatalogoCuenta;
    private GenericDao<Departamento> daoDepartamento;

    @Autowired
    public void setDaoDepartamento(GenericDao<Departamento> departamento) {
        this.daoDepartamento = departamento;
        daoDepartamento.setClass(Departamento.class);
    }

    @Autowired
    public void setDaoCatalogoCuenta(GenericDao<CatalogoCuenta> catalogoCuenta) {
        this.daoCatalogoCuenta = catalogoCuenta;
        daoCatalogoCuenta.setClass(CatalogoCuenta.class);
    }

    @Autowired
    public void setDaoProductoProveedor(GenericDao<ProductoProveedor> productoProveedor) {
        this.daoProductoProveedor = productoProveedor;
        daoProductoProveedor.setClass(ProductoProveedor.class);
    }

    @Autowired
    public void setDaoCuentaBancaria(GenericDao<CuentaBancaria> cuentaBancaria) {
        this.daoCuentaBancaria = cuentaBancaria;
        daoCuentaBancaria.setClass(CuentaBancaria.class);
    }

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
        float nocirculante = 0;
        List<CuentaBancaria> cuentaBancarias = daoOrdenCompra.findAll();
        for (Iterator iterador = cuentaBancarias.listIterator(); iterador.hasNext();) {
            CuentaBancaria cuentaBancaria = (CuentaBancaria) iterador.next();//fecha_pedido
            nocirculante = +cuentaBancaria.getHaber();
        }
        double activos = 0;
        List<ProductoProveedor> productoProveedors = daoProductoProveedor.findAll();
        for (Iterator iterador = productoProveedors.listIterator(); iterador.hasNext();) {
            ProductoProveedor productoProveedor = (ProductoProveedor) iterador.next();
            if (productoProveedor.getProducto().getCategoria().equals("Activo fijo")) {
                activos = +productoProveedor.getCosto();
            }
        }
        double pasivo = 0;
        List<OrdenCompra> compras = daoOrdenCompra.findAll();
        for (Iterator iterador = compras.listIterator(); iterador.hasNext();) {
            OrdenCompra compra = (OrdenCompra) iterador.next();
            if (compra.isAprobada() == false) {
                pasivo = +compra.getCostoTotal();
            }
        }
        List<GastosGenerales> gastosGenerales = daoGastosGenerales.findAll();
        for (Iterator iterador = gastosGenerales.listIterator(); iterador.hasNext();) {
            GastosGenerales gastosGenerale = (GastosGenerales) iterador.next();
            pasivo = +gastosGenerale.getCosto();
        }
        Map<String, Object> fechas = new HashMap<String, Object>();
        fechas.put("2015", "2015");
        fechas.put("2014", "2014");
        fechas.put("2013", "2013");
        fechas.put("2012", "2012");
        fechas.put("2011", "2011");
        model.addAttribute("fechas", fechas);
        model.addAttribute("fecha", "");
        model.addAttribute("activoc", 0);
        model.addAttribute("activonc", nocirculante);
        model.addAttribute("totalactivo", activos);
        model.addAttribute("pasivo", pasivo);
        return "Contabilidad/contaBalanceGeneral";
    }

    @RequestMapping(value = "contabilidad/contaEstadoFlujo", method = RequestMethod.GET)
    public String ContaEstadoFlujo(Model model) {
        float saldoini = 0;
        List<CatalogoCuenta> catalogoCuentas = daoCatalogoCuenta.findAll();
        for (Iterator iterador = catalogoCuentas.listIterator(); iterador.hasNext();) {
            CatalogoCuenta catalogoCuenta = (CatalogoCuenta) iterador.next();
            saldoini = +catalogoCuenta.getHaber();
        }
        return "Contabilidad/contaEstadoFlujo";
    }

    @RequestMapping(value = "contabilidad/contaEstadoResultados", method = RequestMethod.GET)
    public String ContaEstadoResultados(Model model) {
        double ingresos = 0;
        List<OrdenVenta> ventas = daoOrdenVenta.findAll();
        for (Iterator iterador = ventas.listIterator(); iterador.hasNext();) {
            OrdenVenta venta = (OrdenVenta) iterador.next();
            if (venta.getStatus().equals("VENTA") || venta.getStatus().equals("VENTA_CAMBIO")) {
                ingresos = +venta.getMontoConCargos();
            } else {
                ingresos = -venta.getMontoConCargos();
            }
        }
        double costoV = 0;
        List<OrdenCompra> compras = daoOrdenCompra.findAll();
        for (Iterator iterador = compras.listIterator(); iterador.hasNext();) {
            OrdenCompra compra = (OrdenCompra) iterador.next();//fecha_pedido
            if (compra.isAprobada()) {
                costoV = +compra.getCostoTotal();
            }
        }
        List<Nomina> nominas = daoNomina.findAll();
        for (Iterator iterador = nominas.listIterator(); iterador.hasNext();) {
            Nomina nomina = (Nomina) iterador.next();
            double su = nomina.getSueldototal() * 2;
            costoV = +su;
        }
        float costoG = 0;
        List<GastosGenerales> gastosGenerales = daoGastosGenerales.findAll();
        for (Iterator iterador = gastosGenerales.listIterator(); iterador.hasNext();) {
            GastosGenerales gastosGenerale = (GastosGenerales) iterador.next();
            costoG = +gastosGenerale.getCosto();
        }
        model.addAttribute("ingresos", ingresos);
        model.addAttribute("costosv", costoV);
        model.addAttribute("costosg", costoG);
        model.addAttribute("impuestosI", (ingresos * 0.16));
        model.addAttribute("impuestosC", ((costoG + costoV) * 0.16));
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
            pdfView.crearVariacionContable(response, "", "", "", "", "", "");//Mandar valores aqui
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
            pdfView.crearEstadoResultados(response, "", "", "", "", "");
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
        CuentaBancaria cuentaBancaria = new CuentaBancaria();
        List<Departamento> depas = daoDepartamento.findAll();
        model.addAttribute("cuentaBancaria", cuentaBancaria);
        model.addAttribute("depas", depas);
        return "Contabilidad/contaCrearCuentas";
    }

    @RequestMapping(value = "contabilidad/contaCrearCuenta", method = RequestMethod.POST)
    public String contaCrearCuentas(Model model, @Valid CuentaBancaria cuentaBancaria, BindingResult bindingResult) {
        cuentaBancaria.setEmpresa((Empresa) daoEmpresa.findAll().get(0));
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());           

            List<Departamento> depas = daoDepartamento.findAll();
            model.addAttribute("depas", depas);
            return "Contabilidad/contaCrearCuentas";
        }

        
        daoCuentaBancaria.create(cuentaBancaria);
        return "Contabilidad";

    }

    @RequestMapping(value = "contabilidad/contaCrearPago", method = RequestMethod.GET)
    public String contaCrearPago(Model model) {
        GastosGenerales gastosGenerales = new GastosGenerales();
        model.addAttribute("GastosGenerales", gastosGenerales);
        return "Contabilidad/contaCrearPago";
    }

    @RequestMapping(value = "contabilidad/contaCrearPago", method = RequestMethod.POST)
    public String contaCrearPago(Model model, @Valid GastosGenerales gastosGenerales, BindingResult bindingResult) {
        gastosGenerales.setFecha(new Date());
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Contabilidad/contaCrearPago";
        }
        daoGastosGenerales.create(gastosGenerales);
        return "contabilidad";
    }

    @RequestMapping(value = "contabilidad/inserts", method = RequestMethod.GET)
    @ResponseBody
    public String insert(Model model, HttpServletRequest request, HttpServletResponse response) {

        Empresa empresa = new Empresa();
        empresa.setNombre("Sapo");
        empresa.setCalle("Calle");
        empresa.setEstado("México");
        empresa.setMunicipio("Metepec");
        empresa.setPais("México");
        empresa.setRfc("123456789012");
        empresa.setCaptalInicial(234);
        empresa.setNumE("23 E");
        empresa.setColonia("Colonia");
        empresa.setEmail("rofa@soluciones.mx");
        empresa.setTelefono("0123456789");
        empresa.setNumI(" 21 I");
        daoEmpresa.create(empresa);

        Departamento depa = new Departamento();
        depa.setNombreDepartamento("Contabilidad");
        depa.setPresupuesto(125.1);
        depa.setEmpresaIdempresa(empresa);

        Departamento depa1 = new Departamento();
        depa1.setNombreDepartamento("RH");
        depa1.setPresupuesto(125.1);
        depa1.setEmpresaIdempresa(empresa);

        Departamento depa2 = new Departamento();
        depa2.setNombreDepartamento("Compras");
        depa2.setPresupuesto(125.1);
        depa2.setEmpresaIdempresa(empresa);

        daoDepartamento.create(depa);
        daoDepartamento.create(depa1);
        daoDepartamento.create(depa2);

        return "Contabilidad/contaCrearCuentas";
    }

}
