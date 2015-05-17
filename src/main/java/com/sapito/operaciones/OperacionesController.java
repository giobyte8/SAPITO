/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.operaciones;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Lineaproduccion;
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
 * @author Edgar
 */
@Controller
public class OperacionesController {

    private GenericDao<Lineaproduccion> daoProd;

    @Autowired
    public void setDaoLineaProduccion(GenericDao<Lineaproduccion> daoProd) {
        this.daoProd = daoProd;
        daoProd.setClass(Lineaproduccion.class);
    }

    @RequestMapping(value = "operaciones", method = RequestMethod.GET)
    public String indexOperaciones(Model model) {
        return "Operaciones/indexOperaciones";
    }

    @RequestMapping(value = "AltaLineaProduccionJO", method = RequestMethod.GET)
    public String AltaLineaProduccionJO(Model model) {
        Lineaproduccion Lineaproduccion = new Lineaproduccion();
        

        model.addAttribute("Lineaproduccion", Lineaproduccion);

        return "Operaciones/AltaLineaProduccionJO";
    }

    @RequestMapping(value = "AltaLineaProduccionJO", method = RequestMethod.POST)
    public String regAltaLineaProduccionJO(Model model, @Valid Lineaproduccion Lineaproduccion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Operaciones/AltaLineaProduccionJO";
        } else {
            daoProd.create(Lineaproduccion);

            List<Lineaproduccion> producciones = daoProd.findAll();
            model.addAttribute("Lineaproduccion", Lineaproduccion);
            return "Operaciones/AltaLineaProduccionJO";
        }
    }

    @RequestMapping(value = "AdministrarLineasProduccion", method = RequestMethod.GET)
    public String AdministrarLineasProduccion(Model model) {
        return "Operaciones/AdministrarLineasProduccion";
    }

    @RequestMapping(value = "BuscarLineaProduccion", method = RequestMethod.GET)
    public String BuscarLineaProduccion(Model model) {
        return "Operaciones/BuscarLineaProduccion";
    }

    @RequestMapping(value = "AltaOrdenTrabajo", method = RequestMethod.GET)
    public String AltaOrdenTrabajo(Model model) {
        return "Operaciones/AltaOrdenTrabajo";
    }

    @RequestMapping(value = "AdminOrdenTrabajo", method = RequestMethod.GET)
    public String AdminOrdenTrabajo(Model model) {
        return "Operaciones/AdminOrdenTrabajo";
    }

    @RequestMapping(value = "AltaEstacion", method = RequestMethod.GET)
    public String AltaEstacion(Model model) {

        return "Operaciones/AltaEstacion";
    }

    @RequestMapping(value = "AdminEstaciones", method = RequestMethod.GET)
    public String AdminEstaciones(Model model) {
        return "Operaciones/AdminEstaciones";
    }
}
