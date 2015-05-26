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
import com.sapito.db.entities.Producto;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author zgm_e_000
 */
@Controller
public class OperacionesController {

    private GenericDao<Lineaproduccion> daoLineaproduccion;
    private GenericDao<Estacion> daoEstacion;
    private GenericDao<Ordentrabajo> daoOrdenTrabajo;
    private GenericDao<Producto> daoProducto;

    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto) {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }

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
        List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
        model.addAttribute("lLineas", lineas);
        return "Operaciones/AdministrarLineasProduccion";
    }

    @RequestMapping(value = "AdminOrdenTrabajo", method = RequestMethod.GET)
    public String AdministrarOrdenesdetrabajo(Model model) {
        List<Ordentrabajo> ordenes = daoOrdenTrabajo.findAll();
        model.addAttribute("lOrden", ordenes);
        return "Operaciones/AdminOrdenTrabajo";
    }

    @RequestMapping(value = "BuscarLineaProduccion", method = RequestMethod.GET)
    public String BuscarLineaProduccion(Model model) {
        List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
        model.addAttribute("lLineas", lineas);
        return "Operaciones/BusquedaLineaProduccion";
    }

    @RequestMapping(value = "modificaLineas", method = RequestMethod.GET)
    public String modificaLineas(Model model, String idLinea) {
        Lineaproduccion lineas = (Lineaproduccion) daoLineaproduccion.find(Integer.valueOf(idLinea));
        List<Producto> productos = daoProducto.findAll();
        Lineaproduccion lineaproduccion = new Lineaproduccion();
        lineaproduccion.setActivo(lineas.getActivo());
        model.addAttribute("Lineaproduccion", lineaproduccion);
        model.addAttribute("linea", lineas);
        model.addAttribute("lProductos", productos);
        return "Operaciones/modificaLineas";
    }
    
    @RequestMapping(value = "modificaEstacion", method = RequestMethod.GET)
    public String modificaEstacion(Model model,@RequestParam String idEstacion) {          
        Integer i=Integer.valueOf(idEstacion);        
        Estacion estacion=(Estacion)daoEstacion.find(i);        
        List<Lineaproduccion> lineas= daoLineaproduccion.findAll();        
        model.addAttribute("lLineas", lineas);
        model.addAttribute("Estacion", new Estacion());        
        model.addAttribute("estacion", estacion);        
        return "Operaciones/modificaEstacion";
    }

    @RequestMapping(value = "bajaLineas", method = RequestMethod.GET)
    public String bajaLineas(Model model, String idLinea) {

        Lineaproduccion linea = (Lineaproduccion) daoLineaproduccion.find(Integer.valueOf(idLinea));
        try {
            daoLineaproduccion.remove(linea);
            Lineaproduccion lineaproduccion = new Lineaproduccion();
            model.addAttribute("Lineaproduccion", lineaproduccion);
            List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
            model.addAttribute("lLineas", lineas);
            return "Operaciones/AdministrarLineasProduccion";
        } catch (Exception ex) {
            return "Operaciones/errorModificarLineas";
        }

    }
   
    @RequestMapping(value = "bajaEstacion", method = RequestMethod.GET)
    public String bajaEstacion(Model model, String idEstacion) {        
        Estacion estacion = (Estacion) daoEstacion.find(Integer.valueOf(idEstacion));
        try {
            daoEstacion.remove(estacion);
            
            Estacion estacion2= new Estacion();
            model.addAttribute("Estacion", estacion2);
            List<Estacion> estaciones = daoEstacion.findAll();
            model.addAttribute("lEstacion", estaciones);
            return "Operaciones/AdminEstaciones";
        } catch (Exception ex) {
            return "Operaciones/errorModificarEstacion";
        }

    }

    @RequestMapping(value = "modificaOrdenTrabajo", method = RequestMethod.GET)
    public String modificaOrdenes(Model model, String idOrden) {
        Ordentrabajo orden = (Ordentrabajo) daoOrdenTrabajo.find(Integer.valueOf(idOrden));
        List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
        Ordentrabajo ordentrabajo = new Ordentrabajo();
        model.addAttribute("Ordentrabajo", ordentrabajo);
        model.addAttribute("orden", orden);
        model.addAttribute("lLineas", lineas);
        return "Operaciones/modificaOrdenes";
    }

    @RequestMapping(value = "bajaOrdenTrabajo", method = RequestMethod.GET)
    public String bajaOrdenes(Model model, String idLinea) {
        
        Ordentrabajo orden = (Ordentrabajo) daoOrdenTrabajo.find(Integer.valueOf(idLinea));
        try {
            daoOrdenTrabajo.remove(orden);
            Ordentrabajo ordentrabajo = new Ordentrabajo();

            model.addAttribute("Ordentrabjo", ordentrabajo);
            List<Ordentrabajo> ordenes = daoOrdenTrabajo.findAll();
            model.addAttribute("lOrdenes", ordenes);
            return "Operaciones/AdminOrdenTrabjo";
        } catch (Exception ex) {
            return "Operaciones/errorModificarOrdenes";
        }

    }

    @RequestMapping(value = "ModificarLineas", method = RequestMethod.POST)
    public String modificarLineas(Model model, @Valid Lineaproduccion Lineaproduccion, BindingResult bindingResult, String idLinea) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Lineaproduccion Lineaproduccion2 = new Lineaproduccion();
            model.addAttribute("Lineaproduccion", Lineaproduccion2);
            return "Operaciones/errorModificarLineas";
        } else {
            Lineaproduccion linea = (Lineaproduccion) daoLineaproduccion.find(Integer.valueOf(idLinea));
            linea.setNombre(Lineaproduccion.getNombre());
            linea.setTiempo(Lineaproduccion.getTiempo());
            linea.setResponsa(Lineaproduccion.getResponsa());
            linea.setActivo(Lineaproduccion.getActivo());
            linea.setIdProducto(Lineaproduccion.getIdProducto());
            daoLineaproduccion.edit(linea);
            return "Operaciones/succesfulModificarLineas";
        }
    }

    @RequestMapping(value = "ModificarOrdenTrabajo", method = RequestMethod.POST)
    public String modificarOrdenes(Model model, @Valid Ordentrabajo ordentrabajo, BindingResult bindingResult, String idOrden) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Ordentrabajo ordentrabajo2 = new Ordentrabajo();
            model.addAttribute("Ordentrabajo", ordentrabajo2);
            return "Operaciones/errorModificarOrdenes";
        } else {
            Ordentrabajo orden = (Ordentrabajo) daoOrdenTrabajo.find(Integer.valueOf(idOrden));
            orden.setFechapedido(ordentrabajo.getFechapedido());
            orden.setFechaentrega(ordentrabajo.getFechaentrega());
            orden.setPrioridad(ordentrabajo.getPrioridad());
            orden.setAuditor(ordentrabajo.getAuditor());
            orden.setComentario(ordentrabajo.getComentario());
            orden.setDescripcion(ordentrabajo.getDescripcion());
            orden.setLineaproduccionIdlineaproduccion(ordentrabajo.getLineaproduccionIdlineaproduccion());
            daoOrdenTrabajo.edit(orden);
            return "Operaciones/succesfulModificarOrdenes";
        }
    }
    
    @RequestMapping(value = "ModificarEstacion", method = RequestMethod.POST)
    public String modificarOrdenes(Model model, @Valid Estacion Estacion, BindingResult bindingResult, String idEstacion) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Estacion estacion2=new Estacion();
            model.addAttribute("Estacion", estacion2);
            return "Operaciones/errorModificarEstacion";
        } else {                       
            Estacion estacion = (Estacion) daoEstacion.find(Integer.valueOf(idEstacion));
            estacion.setNombre(Estacion.getNombre());
            estacion.setTiempo(Estacion.getTiempo());
            estacion.setDescripcion(Estacion.getDescripcion());
            estacion.setLineaproduccionIdlineaproduccion(Estacion.getLineaproduccionIdlineaproduccion());
           daoEstacion.edit(estacion);
            return "Operaciones/succesfulModificarEstacion";
        }
    }

    @RequestMapping(value = "BuscarOrdenTrabajo", method = RequestMethod.GET)
    public String BuscarOrdenTrabajo(Model model) {
        List<Ordentrabajo> ordenes = daoOrdenTrabajo.findAll();
        model.addAttribute("lOrden", ordenes);
        return "Operaciones/BusquedaOrdenTrabajo";
    }

    @RequestMapping(value = "BuscarEstacion", method = RequestMethod.GET)
    public String BuscarEstacion(Model model) {
        List<Estacion> estacion = daoEstacion.findAll();
        model.addAttribute("lEstacion", estacion);
        return "Operaciones/BusquedaEstacion";
    }

    //Orden de trabajo
    @RequestMapping(value = "AltaOrdenTrabajo", method = RequestMethod.GET)
    public String AltaOrdenTrabajo(Model model) {

        Ordentrabajo Ordentrabajo = new Ordentrabajo();
        List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
        model.addAttribute("Ordentrabajo", Ordentrabajo);
        model.addAttribute("lLineas", lineas);
        return "Operaciones/AltaOrdenTrabajo";
    }

    //registro OrdenT
    @RequestMapping(value = "AltaOrdenTrabajo", method = RequestMethod.POST)
    public String regAltaOrdenTrabajo(Model model, @Valid Ordentrabajo Ordentrabajo, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Ordentrabajo ordentrabajo = new Ordentrabajo();
            model.addAttribute("Ordentrabajo", ordentrabajo);
            return "Operaciones/AltaOrdenTrabajo";
        } else {
            daoOrdenTrabajo.create(Ordentrabajo);
            List<Estacion> estacion = daoEstacion.findAll();
            Ordentrabajo ordentrabajo = new Ordentrabajo();
            model.addAttribute("Ordentrabajo", ordentrabajo);
            model.addAttribute("lEstacion", estacion);
            return "Operaciones/AltaOrdenTrabajo";
        }
    }

    

    //estaciones
    @RequestMapping(value = "AltaEstacion", method = RequestMethod.GET)
    public String AltaEstacion(Model model) {

        List<Lineaproduccion> lineas = daoLineaproduccion.findAll();
        Estacion estacion = new Estacion();
        model.addAttribute("lLineas", lineas);
        model.addAttribute("Estacion", estacion);
        return "Operaciones/AltaEstacion";
    }

    @RequestMapping(value = "AdminEstaciones", method = RequestMethod.GET)
    public String AdminEstaciones(Model model) {
        List<Estacion> estacion  = daoEstacion.findAll();
        model.addAttribute("lEstacion", estacion);
        return "Operaciones/AdminEstaciones";
    }

    //registro OrdenT
    @RequestMapping(value = "AltaEstacion", method = RequestMethod.POST)
    public String regAltaOrdenTrabajo(Model model, @Valid Estacion Estacion, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            Estacion estacion = new Estacion();
            model.addAttribute("Estacion", estacion);
            return "Operaciones/AltaEstacion";
        } else {            
            daoEstacion.create(Estacion);
            Estacion estacion = new Estacion();
            model.addAttribute("Estacion", estacion);
            return "Operaciones/AltaEstacion";
        }
    }

}
