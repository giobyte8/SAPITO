/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.contabilidad;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.TipoMoneda;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Lore-Lap
 */
@Controller
public class ContabilidadController {

    private GenericDao<TipoMoneda> daomodena;

    @Autowired
    public void setDaomodena(GenericDao<TipoMoneda> moneda) {
        this.daomodena = moneda;
        daomodena.setClass(TipoMoneda.class);
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
            daomodena.edit(moneda);
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
        List<TipoMoneda> moneda = daomodena.findAll();
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
        return "Contabilidad/contaEstadoResultados";
    }

    @RequestMapping(value = "contabilidad/contaVariaciondeCapital", method = RequestMethod.GET)
    public String ContaVariaciondeCapital(Model model) {
        return "Contabilidad/contaVariaciondeCapital";
    }
}
