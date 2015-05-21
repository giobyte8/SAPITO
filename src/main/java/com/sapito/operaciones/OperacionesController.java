/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.operaciones;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Estacion;
import com.sapito.db.entities.Lineaproduccion;
import com.sapito.db.entities.Ordentrabajo;
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
 * @author zgm_e_000
 */
@Controller
public class OperacionesController {

    private GenericDao<Lineaproduccion> daoLineaproduccion;
    private GenericDao<Estacion> daoEstacion;
    private GenericDao<Ordentrabajo> daoOrdenTrabajo;

    @Autowired
    public void setDaoLineaproduccion(GenericDao<Lineaproduccion> daoLineaproduccion) {
        this.daoLineaproduccion = daoLineaproduccion;
        daoLineaproduccion.setClass(Lineaproduccion.class);
    }

    @Autowired
    public void setdaoEstacion(GenericDao<Estacion> daoEstacion) {
        this.daoEstacion = daoEstacion;
        daoEstacion.setClass(Estacion.class);
    }

    @Autowired
    public void setdaoOrdenTrabajo(GenericDao<Ordentrabajo> daoOrdenTrabajo) {
        this.daoOrdenTrabajo = daoOrdenTrabajo;
        daoOrdenTrabajo.setClass(Ordentrabajo.class);
    }

    @RequestMapping(value = "operaciones", method = RequestMethod.GET)
    public String indexOperaciones(Model model) {
        return "Operaciones/indexOperaciones";
    }

    //Linea de produccion
    @RequestMapping(value = "AltaLineaProduccionJO", method = RequestMethod.GET)
    public String AltaLineaProduccionJO(Model model) {
        Lineaproduccion Lineaproduccion = new Lineaproduccion();
        model.addAttribute("Lineaproduccion", Lineaproduccion);

        return "Operaciones/AltaLineaProduccionJO";
    }

    //registro lineaOP
    @RequestMapping(value = "AltaLineaProduccionJO", method = RequestMethod.POST)
    public String regAltaLineaProduccionJO(Model model, @Valid Lineaproduccion Lineaproduccion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Operaciones/AltaLineaProduccionJO";
        } else {
//            System.out.println(""+Lineaproduccion.getNombre());
            daoLineaproduccion.create(Lineaproduccion);

            Lineaproduccion Lineaproduccion2 = new Lineaproduccion();
            model.addAttribute("Lineaproduccion", Lineaproduccion2);
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

    //Orden de trabajo
    @RequestMapping(value = "AltaOrdenTrabajo", method = RequestMethod.GET)
    public String AltaOrdenTrabajo(Model model) {

        Ordentrabajo Ordentrabajo = new Ordentrabajo();
        model.addAttribute("Ordentrabajo", Ordentrabajo);
        return "Operaciones/AltaOrdenTrabajo";
    }

    //registro OrdenT
    @RequestMapping(value = "AltaOrdenTrabajo", method = RequestMethod.POST)
    public String regAltaOrdenTrabajo(Model model, @Valid Ordentrabajo Ordentrabajo, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Operaciones/AltaOrdenTrabajo";
        } else {
            daoOrdenTrabajo.create(Ordentrabajo);

            List<Ordentrabajo> ordenes = daoOrdenTrabajo.findAll();
            model.addAttribute("Ordentrabajo", Ordentrabajo);
            return "Operaciones/AltaOrdenTrabajo";
        }
    }

    @RequestMapping(value = "AdminOrdenTrabajo", method = RequestMethod.GET)
    public String AdminOrdenTrabajo(Model model) {
        return "Operaciones/AdminOrdenTrabajo";
    }

    //estaciones
    @RequestMapping(value = "AltaEstacion", method = RequestMethod.GET)
    public String AltaEstacion(Model model) {

        return "Operaciones/AltaEstacion";
    }

    @RequestMapping(value = "AdminEstaciones", method = RequestMethod.GET)
    public String AdminEstaciones(Model model) {
        return "Operaciones/AdminEstaciones";
    }

    //registro OrdenT
    @RequestMapping(value = "AltaEstacion", method = RequestMethod.POST)
    public String regAltaOrdenTrabajo(Model model, @Valid Estacion Estacion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Operaciones/AltaEstacion";
        } else {
            daoEstacion.create(Estacion);

            List<Ordentrabajo> estaciones = daoEstacion.findAll();
            model.addAttribute("Estacion", Estacion);
            return "Operaciones/AltaEstacion";
        }
    }
}
