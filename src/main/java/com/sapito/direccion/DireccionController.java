/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.direccion;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Inventario;
import java.util.List;
import javax.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.persistence.Query;
/**
 *
 * @author LAWL
 */
@Controller
public class DireccionController {

    private GenericDao<Inventario> daoInventario;
    private EntityManager em;

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

}
