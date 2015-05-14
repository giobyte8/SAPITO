
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.rh;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Credencial;
import com.sapito.db.entities.Departamento;
import com.sapito.db.entities.Empleado;
import com.sapito.db.entities.Puesto;
import com.sapito.general.SHA1;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Christian
 */
@Controller
public class RecursosHumanosController {

    private GenericDao<Credencial> daoCredencial;
    private GenericDao<Departamento> daoDepartamento;
    private GenericDao<Puesto> daoPuesto;
    private GenericDao<Empleado> daoEmpleado;

    @Autowired
    public void setDaoCredencial(GenericDao<Credencial> daoCredencial) {
        this.daoCredencial = daoCredencial;
        daoCredencial.setClass(Credencial.class);
    }

    @Autowired
    public void setDaoDepartamento(GenericDao<Departamento> daoDepartamento) {
        this.daoDepartamento = daoDepartamento;
        daoDepartamento.setClass(Departamento.class);
    }

    @Autowired
    public void setDaoPuesto(GenericDao<Puesto> daoPuesto) {
        this.daoPuesto = daoPuesto;
        daoPuesto.setClass(Puesto.class);
    }

    @Autowired
    public void setDaoEmpleado(GenericDao<Empleado> daoEmpleado) {
        this.daoEmpleado = daoEmpleado;
        daoEmpleado.setClass(Empleado.class);
    }

    @RequestMapping(value = "recursoshumanos", method = RequestMethod.GET)
    public String indexAdministrador(Model model) {
        

        return "RH/indexAdministrador";
    }

    @RequestMapping(value = "recursoshumanosOperativo", method = RequestMethod.GET)
    public String indexOperativo(Model model) {
        return "RH/indexOperativo";
    }

    @RequestMapping(value = "AdminEmpleados", method = RequestMethod.GET)
    public String AdminEmpleados(Model model) {
        
        

        return "RH/administrarEmpleados";
    }

    @RequestMapping(value = "newUser", method = RequestMethod.POST)
    public String newUser(String puestoId, String departamentoId, Model model, Empleado empleado, BindingResult result) {

            List<Empleado> empleados = daoEmpleado.findAll();
            System.out.println(empleados.size()+"Cantidad de empleados");
            System.out.println(empleado.getDepartamentoIddepartamento().getIddepartamento());
            
            int ultimo_empleado = empleados.get(empleados.size() - 1).getIdempleado();
            System.out.println("ultimo_empeado"+ultimo_empleado);
            empleado.setIdempleado(ultimo_empleado + 2);
            daoEmpleado.create(empleado);
            List<Credencial> credenciales = daoCredencial.findAll();
            int ultima_credencial = credenciales.size() - 1;
            Credencial credencial_empleado = new Credencial();
            credencial_empleado.setIdcredencial(ultima_credencial +2);
            credencial_empleado.setUsuario(empleado.getEmail());
            String passSHA1 = SHA1.getStringMessageDigest("newuser", SHA1.SHA1);
            credencial_empleado.setContrasena(passSHA1);
            credencial_empleado.setStatus((short) 1);
            credencial_empleado.setEmpleadoIdempleado(empleado);
            daoCredencial.create(credencial_empleado);
             model.addAttribute("Empleado", new Empleado());

   

       

        return "RH/AltaEmpleado";
    }

    @RequestMapping(value = "AltaEmpleado", method = RequestMethod.GET)
    public String AltaEmpleado(Model model) {
        List<Departamento> departamento = daoDepartamento.findAll();
        List<Puesto> puesto = daoPuesto.findAll();

        model.addAttribute("Departamento", departamento);
        model.addAttribute("puesto", puesto);
        Empleado empleado = new Empleado();
        model.addAttribute("Empleado", empleado);

        return "RH/AltaEmpleado";
    }

    @RequestMapping(value = "BajaEmpleado", method = RequestMethod.GET)
    public String BajaEmpleado(Model model) {
        return "RH/BajaEmpleado";
    }

    @RequestMapping(value = "updateEmpleado", method = RequestMethod.GET)
    public String updateEmpleado(Model model) {
        return "RH/updateEmpleado";
    }

    @RequestMapping(value = "HistorialEmpleado", method = RequestMethod.GET)
    public String HistorialEmpleado(Model model) {
        return "RH/HistorialEmpleado";
    }

    @RequestMapping(value = "VacacionEmpleado", method = RequestMethod.GET)
    public String VacacionEmpleado(Model model) {
        return "RH/VacacionEmpleado";
    }

    @RequestMapping(value = "AdmVacacionEmpleado", method = RequestMethod.GET)
    public String AdmVacacionEmpleado(Model model) {
        return "RH/AdmVacacionEmpleado";
    }

    @RequestMapping(value = "adminEmpleadosOperativo", method = RequestMethod.GET)
    public String adminEmpleadosOperativo(Model model) {
        return "RH/administrarEmpleadosOperativo";
    }

    @RequestMapping(value = "VacacionEmpleadoOperativo", method = RequestMethod.GET)
    public String VacacionEmpleadoOperativo(Model model) {
        return "RH/VacacionEmpleadoOperativo";
    }

    @RequestMapping(value = "altaCapacitacionAdmin", method = RequestMethod.GET)
    public String altaCapacitacionAdmin(Model model) {
        return "RH/addCapacitacionAdministrador";
    }

    @RequestMapping(value = "adminCapacitacionAdmin", method = RequestMethod.GET)
    public String adminCapacitacionAdmin(Model model) {
        return "RH/adminCapacitacionAdministrador";
    }

    @RequestMapping(value = "historialCapacitacionAdmin", method = RequestMethod.GET)
    public String historialCapacitacionAdmin(Model model) {
        return "RH/historialCapacitacionesAdministrador";
    }

    @RequestMapping(value = "altaDepAdmin", method = RequestMethod.GET)
    public String altaDepAdmin(Model model) {
        return "RH/addDepartamentoAdministrador";
    }

    @RequestMapping(value = "adminDepAdmin", method = RequestMethod.GET)
    public String adminDepAdmin(Model model) {
        return "RH/adminDepartamentosAdministrador";
    }

    @RequestMapping(value = "updateDepAdmin", method = RequestMethod.GET)
    public String updateDepAdmin(Model model) {
        return "RH/updateDepartamentoAdministrador";
    }

    @RequestMapping(value = "deleteDepAdmin", method = RequestMethod.GET)
    public String deleteDepAdmin(Model model) {
        return "RH/deleteDepartamentoAdministrador";
    }

    @RequestMapping(value = "addRolesAdmin", method = RequestMethod.GET)
    public String addRolesAdmin(Model model) {
        return "RH/addRolesAdministrador";
    }

    @RequestMapping(value = "adminRolesAdmin", method = RequestMethod.GET)
    public String adminRolesAdmin(Model model) {
        return "RH/adminRolesAdministrador";
    }

    @RequestMapping(value = "altaPuestoAdmin", method = RequestMethod.GET)
    public String altaPuestoAdmin(Model model) {
        return "RH/addPuestoAdministrador";
    }

    @RequestMapping(value = "adminPuestoAdmin", method = RequestMethod.GET)
    public String adminPuestoAdmin(Model model) {
        return "RH/adminPuestosAdministrador";
    }

    @RequestMapping(value = "addSancionAdmin", method = RequestMethod.GET)
    public String addSancionAdmin(Model model) {
        return "RH/addSancionAdministrador";
    }

    @RequestMapping(value = "adminSancionAdmin", method = RequestMethod.GET)
    public String adminSancionAdmin(Model model) {
        return "RH/adminSancionesAdministrador";
    }

    @RequestMapping(value = "adminCapacitacionOperativo", method = RequestMethod.GET)
    public String adminCapacitacionOperativo(Model model) {
        return "RH/adminCapacitacionOperativo";
    }

    @RequestMapping(value = "adminPrestacionesAdmin", method = RequestMethod.GET)
    public String adminPrestacionesAdministrador(Model model) {
        return "RH/adminPrestacionesAdmin";
    }

    @RequestMapping(value = "addPrestacionesAdministrador", method = RequestMethod.GET)
    public String addPrestacionesAdministrador(Model model) {
        return "RH/addPrestacionesAdministrador";
    }

    @RequestMapping(value = "downPrestacionesAdministrador", method = RequestMethod.GET)
    public String downPrestacionesAdministrador(Model model) {
        return "RH/downPrestacionesAdministrador";
    }
}
