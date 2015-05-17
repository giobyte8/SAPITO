/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.controller;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Credencial;
import com.sapito.db.entities.Empleado;
import com.sapito.db.entities.Rol;
import com.sapito.general.SHA1;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author giovanni
 */
@Controller
public class MainController {

    private GenericDao<Credencial> daoCredencial;
    private GenericDao<Rol> daoRol;
    private GenericDao<Empleado> daoEmpleado;

    @Autowired
    public void setDaoCredencial(GenericDao<Credencial> daoCredencial) {
        this.daoCredencial = daoCredencial;
        daoCredencial.setClass(Credencial.class);
    }

    @Autowired
    public void setDaoRol(GenericDao<Rol> daoRol) {
        this.daoRol = daoRol;
        daoRol.setClass(Rol.class);
    }

    @Autowired
    public void setDaoEmpleado(GenericDao<Empleado> daoEmpleado) {
        this.daoEmpleado = daoEmpleado;
        daoEmpleado.setClass(Empleado.class);
    }

    @RequestMapping(value = "/welcome**", method = RequestMethod.GET)
    public ModelAndView welcomePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Hello World");
        model.addObject("message", "This is welcome page!");
        model.setViewName("hello");
        return model;

    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String redirect(Model model) {
        return "redirect";
    }

    @RequestMapping(value = "indexMain", method = RequestMethod.GET)
    public String index(Model model) {
        return "sapoindex";
    }

    @RequestMapping(value = "loginIndex", method = RequestMethod.POST)
    public String login(Model model, String username, String password) {
        System.out.println(username);
        System.out.println(password);
        List<Credencial> credencialLogin = daoCredencial.findBySpecificField("usuario", username, "equal", null, null);

        if (!credencialLogin.isEmpty()) {

            String passSHA1 = SHA1.getStringMessageDigest(password, SHA1.SHA1);
            if (passSHA1.equals(credencialLogin.get(0).getContrasena())) {
                System.out.println("Are same");

                System.out.println("Numero de empleado (id)" + credencialLogin.get(0).getEmpleadoIdempleado().getPuestoIdpuesto() + " !!!!!!!");
                Empleado empleado = (Empleado) daoEmpleado.find(credencialLogin.get(0).getEmpleadoIdempleado().getIdempleado());
                Integer idRol = credencialLogin.get(0).getEmpleadoIdempleado().getPuestoIdpuesto().getIdrol().getIdrol();
                Integer idDeparamento = credencialLogin.get(0).getEmpleadoIdempleado().getDepartamentoIddepartamento().getId();
                System.out.println(idRol + ".............Rol");
                System.out.println(idDeparamento + ".............Departamento");
                boolean b = false;
                /**
                 *
                 * Roles : 1) Jefe operativo 2) jefe departamento 3) empleado
                 * base 4) director 5) sub director
                 *
                 *
                 * Departamentos: 1) Ventas 2)Compras 3)Inventarios
                 * 4)Contabilidad y Finanzas 5)Direccion 6)Activo fijo
                 * 7)Recursos Humanos 8)Operaciones 9)Logistica
                 */

                if (idRol == 1 && idDeparamento == 7) {
                    System.out.println("Menu operativo");
                    b = true;
                    return "redirect:recursoshumanosOperativo";
                }
                if (idRol == 2 && idDeparamento == 7) {
                    System.out.println("Menu jefe departamento");
                    b = true;
                    return "redirect:recursoshumanos";
                }
                if (idRol == 3 && idDeparamento == 7) {
                    b = true;
                    return "redirect:rhempleadobase";
                }

                // Jefe de departamento inventarios
                if (idRol == 1 && idDeparamento == 3) {
                    b = true;
                    return "redirect:inventarios";
                }

                // Jefe de departamento contabilidad
                if (idRol == 1 && idDeparamento == 4) {
                    b = true;
                    return "redirect:contabilidad";
                }

                // Jefe de departamento compras
                if (idRol == 1 && idDeparamento == 2) {
                    b = true;
                    return "redirect:compras";
                }

                // Jefe de departamento activoFijo
                if (idRol == 1 && idDeparamento == 6) {
                    b = true;
                    return "redirect:activofijo";
                }   

                // Jefe de departamento direccion
                if (idRol == 1 && idDeparamento == 5) {
                    b = true;
                    return "redirect:direccion";
                }
                // Jefe de departamento operaciones
                if (idRol == 1 && idDeparamento == 8) {
                    b = true;
                    return "redirect:operaciones";
                }
                if (idRol == 2 && idDeparamento == 9) {
                    return "redirect:logistica";
                }

                if (b == false) {
                    String error = "<br><div class='alert alert-danger' role='alert'>No se encontro usuario (Rol o Puesto)</div>";
                    model.addAttribute("NotFound", error);
                }
                return "sapoindex";
            } else {

                String error = "<br><div class='alert alert-danger' role='alert'>Usuario o Contrasela incorrecta</div>";
                model.addAttribute("NotFound", error);
                return "sapoindex";
            }
        } else {

            String error = "<br><div class='alert alert-danger' role='alert'>Usuario no valido</div>";
            model.addAttribute("NotFound", error);
            return "sapoindex";
        }
    }
}
