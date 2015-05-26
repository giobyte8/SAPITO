
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.rh;

import com.sapito.config.SecurityUtils;
import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Credencial;
import com.sapito.db.entities.Departamento;
import com.sapito.db.entities.Detallevacaciones;
import com.sapito.db.entities.Empleado;
import com.sapito.db.entities.Puesto;
import com.sapito.db.entities.Rol;
import com.sapito.db.entities.Vacaciones;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Jorge Muñoz
 * @author Giovanni Aguirre
 */
@Controller
public class RecursosHumanosController {

    private final SecurityUtils secUtils = new SecurityUtils();

    private GenericDao<Credencial> daoCredencial;
    private GenericDao<Departamento> daoDepartamento;
    private GenericDao<Puesto> daoPuesto;
    private GenericDao<Empleado> daoEmpleado;
    private GenericDao<Rol> daoRol;
    private GenericDao<Vacaciones> daoVacaciones;
    private GenericDao<Detallevacaciones> daoDetallevacaciones;

    @Autowired
    public void setDaoCredencial(GenericDao<Credencial> daoCredencial) {
        this.daoCredencial = daoCredencial;
        daoCredencial.setClass(Credencial.class);
    }

    @Autowired
    public void setDaoVacaciones(GenericDao<Vacaciones> daoVacaciones) {
        this.daoVacaciones = daoVacaciones;
        daoVacaciones.setClass(Vacaciones.class);
    }

    @Autowired
    public void setDaoDetallevacaciones(GenericDao<Detallevacaciones> daoDetallevacaciones) {
        this.daoDetallevacaciones = daoDetallevacaciones;
        daoDetallevacaciones.setClass(Detallevacaciones.class);
    }

    @Autowired
    public void setDaorol(GenericDao<Rol> daoRol) {
        this.daoRol = daoRol;
        daoRol.setClass(Rol.class);
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

//- *** *** *** *** ***  CONTROLLER ENDPOINTS MAPPING *** *** *** *** *** *** */
///////////////////////////////////////////////////////////////////////////// */
//
    @RequestMapping(value = "recursoshumanos/recursoshumanos", method = RequestMethod.GET)
    public String indexAdministrador(Model model) {

        System.out.println(secUtils.getAuthority());
        if (secUtils.getAuthority().equals("JEFE_DEPARTAMENTO_ROL")) {

            return "RH/indexAdministrador";

        } else {
            return "login";
        }

    }

    @RequestMapping(value = "recursoshumanos/rhempleadobase", method = RequestMethod.GET)
    public String rhempleadobase(Model model) {

        if (secUtils.getAuthority().equals("EMPLEADO_BASE_ROL")) {

            return "RH/indexEmpleadoBase";

        } else {
            return "login";
        }

    }

    @RequestMapping(value = "recursoshumanos/recursoshumanosOperativo", method = RequestMethod.GET)
    public String indexOperativo(Model model) {

        if (secUtils.getAuthority().equals("JEFE_OPERATIVO_ROL")) {

            return "RH/indexOperativo";

        } else {
            return "login";
        }

    }

// -------------------- EMPLEADOS -------------------------------
/////////////////////////////////////////////////////////////////
//
    @RequestMapping(value = "recursoshumanos/altaempleadoMenu", method = RequestMethod.GET)
    public String altaEmpleado(Model model) {

        if (secUtils.getAuthority().equals("JEFE_DEPARTAMENTO_ROL")) {

            List<Departamento> departamentos = daoDepartamento.findAll();
            List<Puesto> puestos = daoPuesto.findAll();

            Empleado empleado = new Empleado();

            model.addAttribute("departamentos", departamentos);
            model.addAttribute("puestos", puestos);
            model.addAttribute("empleado", empleado);

            return "RH/AltaEmpleado";

        } else {
            return "login";
        }

    }

    @RequestMapping(value = "recursoshumanos/altaempleado", method = RequestMethod.POST)
    public String newUser(Model model, @Valid Empleado empleado, BindingResult result) {
        System.out.println("entrando a controller");
        if (secUtils.getAuthority().equals("JEFE_DEPARTAMENTO_ROL")) {

            if (result.hasErrors()) {

                List<Departamento> departamentos = daoDepartamento.findAll();
                List<Puesto> puestos = daoPuesto.findAll();

                model.addAttribute("departamentos", departamentos);
                model.addAttribute("puestos", puestos);
                return "RH/AltaEmpleado";
            } else {
                Credencial credencial = new Credencial();
                credencial.setUsuario(empleado.getEmail());
                //String passSHA1 = SHA1.getStringMessageDigest("newuser", SHA1.SHA1);
                credencial.setContrasena("demo");
                credencial.setStatus(true);
                credencial.setEmpleado(empleado);

                daoEmpleado.create(empleado);
                daoCredencial.create(credencial);

                List<Departamento> departamentos = daoDepartamento.findAll();
                List<Puesto> puestos = daoPuesto.findAll();

                model.addAttribute("departamentos", departamentos);
                model.addAttribute("puestos", puestos);
                model.addAttribute("empleado", new Empleado());
                return "RH/AltaEmpleado";
            }

        } else {
            return "login";
        }

    }

    @RequestMapping(value = "recursoshumanos/adminempleados", method = RequestMethod.GET)
    public String AdminEmpleados(Model model) {

        System.out.println("ADMIN EMPLEADOS::::::::::::::::::::::::::");

        List<Departamento> departamentos = daoDepartamento.findAll();
        List<Puesto> puestos = daoPuesto.findAll();
        List<Empleado> empleados = daoEmpleado.findAll();

        model.addAttribute("departamentos", departamentos);
        model.addAttribute("puestos", puestos);
        model.addAttribute("empleados", empleados);
        model.addAttribute("empleado", new Empleado());

        return "RH/administrarEmpleados";
    }

    @RequestMapping(value = "recursoshumanos/adminempleadosdetalle", method = RequestMethod.POST)
    public String AdminEmpleadosDetalle(Model model, Empleado empleado) {
        List<Departamento> departamentos = daoDepartamento.findAll();
        List<Puesto> puestos = daoPuesto.findAll();
        model.addAttribute("departamentos", departamentos);
        model.addAttribute("puestos", puestos);

        Departamento target = (Departamento) daoDepartamento
                .find(empleado.getDepartamento().getId());
        List<Empleado> empleados = daoEmpleado
                .findBySpecificField("departamento", target, "equal", null, null);
        if (empleados == null) {
            empleados = new ArrayList<>();
        }
        model.addAttribute("empleado", new Empleado());
        model.addAttribute("empleados", empleados);

        return "RH/administrarEmpleados";
    }

    @RequestMapping(value = "recursoshumanos/fancyadminempleadosc", method = RequestMethod.GET)
    public String facyAdminEmpleadosC(Model model, String id) {
        Empleado empleado = (Empleado) daoEmpleado.find(Integer.parseInt(id));
        model.addAttribute("idempleado", id);
        model.addAttribute("Empleado", empleado);
        return "RH/fancyAdminEmpleados";
    }

    @RequestMapping(value = "recursoshumanos/updateempleado", method = RequestMethod.GET)
    public String updateEmpleado(Model model, String id, @Valid Empleado empleado, BindingResult bindingResult) {
        Empleado empleados = (Empleado) daoEmpleado.find(Integer.parseInt(id));

        List<Departamento> departamento = daoDepartamento.findAll();
        List<Puesto> puesto = daoPuesto.findAll();

        model.addAttribute("Departamento", departamento);
        model.addAttribute("puesto", puesto);
        model.addAttribute("Empleado", empleados);

        return "RH/updateEmpleado";
    }

    @RequestMapping(value = "recursoshumanos/editEmpleado", method = RequestMethod.POST)
    public String editEmpleado(Model model, @ModelAttribute("empleado") Empleado empleado, BindingResult bindingResult) {
        System.out.println(empleado.getTelefono());
        System.out.println(empleado.getIdempleado());

        if (bindingResult.hasErrors()) {

            model.addAttribute("Resultado", "<div class='alert-message alert-message-danger'> <h4>Resultado de la operación:</h4><p> Operación Incorrrecta: Usuario no editado</p></div>");
            return "RH/ResultadoEmpleado";
        } else {

            daoEmpleado.edit(empleado);
            System.out.println("Empleado editado4");
            model.addAttribute("Resultado", "<div class='alert-message alert-message-success'> <h4>Resultado de la operación:</h4><p> Operación Correcta: Usuario editado de manera correct</p></div>");
            return "RH/ResultadoEmpleado";
        }
    }

    @RequestMapping(value = "recursoshumanos/BajaEmpleado", method = RequestMethod.GET)
    public String BajaEmpleado(Model model) {
        return "RH/BajaEmpleado";
    }

    @RequestMapping(value = "HistorialEmpleado", method = RequestMethod.GET)
    public String HistorialEmpleado(Model model) {
        return "RH/HistorialEmpleado";
    }

////////////////////////////////////////////////////////////////////////////////
//
    @RequestMapping(value = "recursoshumanos/VacacionEmpleado", method = RequestMethod.GET)
    public String VacacionEmpleado(Model model) {

        model.addAttribute("EmpleadoSeleccionado", "No a seleccionado algun Empleado");
        model.addAttribute("vacaciones", new Vacaciones());
        return "RH/VacacionEmpleado";
    }

    @RequestMapping(value = "recursoshumanos/adminVacacionEmpleadoOperativo", method = RequestMethod.GET)
    public String adminVacacionEmpleadoOperativo(Model model) {

        List<Detallevacaciones> detallevacaciones = daoDetallevacaciones.findAll();
        System.out.println(detallevacaciones.get(0).getIdempleado().getNombre());

        model.addAttribute("recursoshumanos/detallevacaciones", detallevacaciones);
        return "RH/adminVacacionesOperativo";
    }

    @RequestMapping(value = "recursoshumanos/asistenciaEmpleadoBase", method = RequestMethod.GET)
    public String asistenciaEmpleadoBase(Model model) {
        return "RH/AsistenciaEmpleadoBase";
    }

    @RequestMapping(value = "recursoshumanos/asistenciaJO", method = RequestMethod.GET)
    public String asistenciaJO(Model model) {
        return "RH/AsistenciasJefeOperativo";
    }

    @RequestMapping(value = "recursoshumanos/AdmVacacionEmpleado", method = RequestMethod.GET)
    public String AdmVacacionEmpleado(Model model) {

        List<Detallevacaciones> detallevacaciones = daoDetallevacaciones.findAll();
        System.out.println(detallevacaciones.get(0).getIdempleado().getNombre());

        model.addAttribute("detallevacaciones", detallevacaciones);
        return "RH/AdmVacacionEmpleado";
    }

    @RequestMapping(value = "recursoshumanos/facyAdminEmpleadosCOper", method = RequestMethod.GET)
    public String facyAdminEmpleadosCoper(Model model, String id) {
        System.out.println(id);
        Empleado empleado = (Empleado) daoEmpleado.find(Integer.parseInt(id));
        System.out.println(empleado.getAmaterno());
        System.out.println(empleado.getMunicipio());
        System.out.println(empleado.getAmaterno());
        model.addAttribute("idempleado", id);
        model.addAttribute("Empleado", empleado);
        return "RH/fancyAdminEmpleadosOperativo";
    }

    @RequestMapping(value = "recursoshumanos/adminEmpleadosOperativo", method = RequestMethod.GET)
    public String adminEmpleadosOperativo(Model model) {
//        List<Departamento> departamentos = daoDepartamento.findAll();
//        List<Puesto> puestos = daoPuesto.findAll();
//
//        model.addAttribute("departamentos", departamentos);
//        model.addAttribute("puestos", puestos);
//        List<Empleado> empleados = daoEmpleado.findAll();
//         List<Empleado> empleados = daoEmpleado.findAll();
//
//        model.addAttribute("Empleados", empleados);
//        
//        

        System.out.println("ADMIN EMPLEADOS::::::::::::::::::::::::::");

        List<Departamento> departamentos = daoDepartamento.findAll();
        List<Puesto> puestos = daoPuesto.findAll();
        List<Empleado> empleados = daoEmpleado.findAll();

        model.addAttribute("departamentos", departamentos);
        model.addAttribute("puestos", puestos);
        model.addAttribute("empleados", empleados);
        model.addAttribute("empleado", new Empleado());

        return "RH/administrarEmpleadosOperativo";
    }

    @RequestMapping(value = "recursoshumanos/VacacionEmpleadoOperativo", method = RequestMethod.GET)
    public String VacacionEmpleadoOperativo(Model model) {

        model.addAttribute("EmpleadoSeleccionado", "No a seleccionado algun Empleado");
        model.addAttribute("vacaciones", new Vacaciones());
        return "RH/VacacionEmpleadoOperativo";
    }

    @RequestMapping(value = "recursoshumanos/altaVacacionEmpleadoBase", method = RequestMethod.GET)
    public String altaVacacionEmpleadoBase(Model model) {
        return "RH/altaVacacionesEmpleadoBase";
    }

    @RequestMapping(value = "recursoshumanos/searchEmpleado", method = RequestMethod.POST)
    public String searchEmpleado(Model model, String idEmpleado) {
        System.out.println(idEmpleado);
        System.out.println("entrado a controlador");
        Empleado empleado = (Empleado) daoEmpleado.find(Integer.parseInt(idEmpleado));
        try {
            System.out.println(empleado);
        } catch (Exception e) {
            model.addAttribute("NotFound", "<div class='alert-message alert-message-danger'> <h4>Empleado no encontrado</p></div>");
        }

        model.addAttribute("EmpleadoSeleccionado", "Empleado seleccionado para dar de alta vacaciones");
        model.addAttribute("vacaciones", new Vacaciones());
        model.addAttribute("Empleado", empleado);

        return "RH/VacacionEmpleado";
    }
    
      @RequestMapping(value = "recursoshumanos/searchEmpleadoOperativo", method = RequestMethod.POST)
    public String searchEmpleadOoperativo(Model model, String idEmpleado) {
        System.out.println(idEmpleado);
        System.out.println("entrado a controlador");
        Empleado empleado = (Empleado) daoEmpleado.find(Integer.parseInt(idEmpleado));
        try {
            System.out.println(empleado);
        } catch (Exception e) {
            model.addAttribute("NotFound", "<div class='alert-message alert-message-danger'> <h4>Empleado no encontrado</p></div>");
        }

        model.addAttribute("EmpleadoSeleccionado", "Empleado seleccionado para dar de alta vacaciones");
        model.addAttribute("vacaciones", new Vacaciones());
        model.addAttribute("Empleado", empleado);

        return "RH/VacacionEmpleadoOperativo";
    }


    @RequestMapping(value = "recursoshumanos/UpVacacionesAdmin", method = RequestMethod.POST)
    public String adminCapacitacionAdmin(Model model, String idEmpleadoV, Vacaciones vacaciones, BindingResult bindingResult) {
        int id;
        List<Vacaciones> vacacionesS = null;
        System.out.println("Entrando al controlador alta ");
        System.out.println(idEmpleadoV);
        vacaciones.setAprobacion(1);
        try {
            vacacionesS = daoVacaciones.findAll();
            System.out.println(vacacionesS.size());
            id = vacacionesS.size();
            System.out.println(id);
            System.out.println(vacacionesS.get(id - 1));
            vacaciones.setIdvacaciones((vacacionesS.get(id - 1).getIdvacaciones()) + 1);
            vacaciones.setStatus("0");
        } catch (Exception f) {
            System.out.println("ocurrio una excepcion");
            id = 0;
            vacaciones.setIdvacaciones(id + 1);
            vacaciones.setStatus("1");
        }

        System.out.println("Id de vacaciones:" + (id + 1));

        System.out.println(vacaciones.getFechaalta());
        System.out.println(vacaciones.getFechabaja());

        daoVacaciones.create(vacaciones);

        Detallevacaciones devacaciones = new Detallevacaciones();
        Vacaciones newVac = vacaciones;
        Empleado empleados = (Empleado) daoEmpleado.find(Integer.parseInt(idEmpleadoV));
        System.out.println("Empleado alta vacaciones" + empleados.getIdempleado() + "......" + empleados.getNombre());
        model.addAttribute("Resultado", "<div class='alert-message alert-message-success'> <h4>Inserccion Correcta</p></div>");
        devacaciones.setIdempleado(empleados);
        devacaciones.setIdvacaciones(newVac);

        daoDetallevacaciones.create(devacaciones);
        model.addAttribute("Vacaciones", new Vacaciones());
        return "RH/VacacionEmpleado";
    }
    @RequestMapping(value = "recursoshumanos/UpVacacionesAdminOperativo", method = RequestMethod.POST)
    public String UpVacacionesAdminOperativo(Model model, String idEmpleadoV, Vacaciones vacaciones, BindingResult bindingResult) {
        int id;
        List<Vacaciones> vacacionesS = null;
        System.out.println("Entrando al controlador alta ");
        System.out.println(idEmpleadoV);
        vacaciones.setAprobacion(1);
        try {
            vacacionesS = daoVacaciones.findAll();
            System.out.println(vacacionesS.size());
            id = vacacionesS.size();
            System.out.println(id);
            System.out.println(vacacionesS.get(id - 1));
            vacaciones.setIdvacaciones((vacacionesS.get(id - 1).getIdvacaciones()) + 1);
            vacaciones.setStatus("0");
        } catch (Exception f) {
            System.out.println("ocurrio una excepcion");
            id = 0;
            vacaciones.setIdvacaciones(id + 1);
            vacaciones.setStatus("0");
        }

        System.out.println("Id de vacaciones:" + (id + 1));

        System.out.println(vacaciones.getFechaalta());
        System.out.println(vacaciones.getFechabaja());

        daoVacaciones.create(vacaciones);

        Detallevacaciones devacaciones = new Detallevacaciones();
        Vacaciones newVac = vacaciones;
        Empleado empleados = (Empleado) daoEmpleado.find(Integer.parseInt(idEmpleadoV));
        System.out.println("Empleado alta vacaciones" + empleados.getIdempleado() + "......" + empleados.getNombre());
        model.addAttribute("Resultado", "<div class='alert-message alert-message-success'> <h4>Inserccion Correcta</p></div>");
        devacaciones.setIdempleado(empleados);
        devacaciones.setIdvacaciones(newVac);

        daoDetallevacaciones.create(devacaciones);
        model.addAttribute("Vacaciones", new Vacaciones());
        return "RH/VacacionEmpleadoOperativo";
    }

    @RequestMapping(value = "recursoshumanos/historialCapacitacionAdmin", method = RequestMethod.GET)
    public String historialCapacitacionAdmin(Model model) {
        return "RH/historialCapacitacionesAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/altaDepAdmin", method = RequestMethod.GET)
    public String altaDepAdmin(Model model) {
        return "RH/addDepartamentoAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/adminDepAdmin", method = RequestMethod.GET)
    public String adminDepAdmin(Model model) {
        return "RH/adminDepartamentosAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/updateDepAdmin", method = RequestMethod.GET)
    public String updateDepAdmin(Model model) {
        return "RH/updateDepartamentoAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/deleteDepAdmin", method = RequestMethod.GET)
    public String deleteDepAdmin(Model model) {
        return "RH/deleteDepartamentoAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/addRolesAdmin", method = RequestMethod.GET)
    public String addRolesAdmin(Model model) {
        return "RH/addRolesAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/adminRolesAdmin", method = RequestMethod.GET)
    public String adminRolesAdmin(Model model) {
        return "RH/adminRolesAdministrador";
    }

// ***************************** PUESTOS ***************************************
////////////////////////////////////////////////////////////////////////////////
//
    @RequestMapping(value = "recursoshumanos/uppuestoadmin", method = RequestMethod.POST)
    public String upPuestoAdmin(Model model, Puesto puesto, BindingResult bindingResult) {
        puesto.setPresupuesto(100);
        daoPuesto.create(puesto);

        model.addAttribute("Resultado", "<div class='alert-message alert-message-success'> <h4>Insercccion Correcta</p></div>");
        model.addAttribute("Puesto", new Puesto());
        return "RH/addPuestoAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/altapuestoadmin", method = RequestMethod.GET)
    public String altaPuestoAdmin(Model model) {
        List<Rol> rol = daoRol.findAll();
        Puesto puesto = new Puesto();
        model.addAttribute("Puesto", puesto);
        model.addAttribute("Rol", rol);
        return "RH/addPuestoAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/adminpuestoadmin", method = RequestMethod.GET)
    public String adminPuestoAdmin(Model model) {
        List<Puesto> puestos = daoPuesto.findAll();
        if (puestos == null) {
            puestos = new ArrayList<>();
        }
        model.addAttribute("Puestos", puestos);

        return "RH/adminPuestosAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/addSancionAdmin", method = RequestMethod.GET)
    public String addSancionAdmin(Model model) {
        return "RH/addSancionAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/adminSancionAdmin", method = RequestMethod.GET)
    public String adminSancionAdmin(Model model) {
        return "RH/adminSancionesAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/adminCapacitacionOperativo", method = RequestMethod.GET)
    public String adminCapacitacionOperativo(Model model) {
        return "RH/adminCapacitacionOperativo";
    }

    @RequestMapping(value = "recursoshumanos/adminPrestacionesAdmin", method = RequestMethod.GET)
    public String adminPrestacionesAdministrador(Model model) {
        return "RH/adminPrestacionesAdmin";
    }

    @RequestMapping(value = "recursoshumanos/addPrestacionesAdministrador", method = RequestMethod.GET)
    public String addPrestacionesAdministrador(Model model) {
        return "RH/addPrestacionesAdministrador";
    }

    @RequestMapping(value = "recursoshumanos/downPrestacionesAdministrador", method = RequestMethod.GET)
    public String downPrestacionesAdministrador(Model model) {
        return "RH/downPrestacionesAdministrador";
    }
}
