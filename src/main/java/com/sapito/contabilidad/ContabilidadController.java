/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.contabilidad;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Lore-Lap
 */
@Controller
public class ContabilidadController {

    @RequestMapping(value = "contabilidad", method = RequestMethod.GET)
    public String index(Model model) {
        return "Contabilidad/indexcontabilidad";
    }

    @RequestMapping(value = "contabilidad/contaActivoFijo", method = RequestMethod.GET)
    public String ContaActivoFijoo(Model model) {
        return "Contabilidad/contaActivoFijo";
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
}
