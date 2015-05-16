/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.activofijo;

import com.sapito.db.dao.GenericDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.sapito.db.entities.ActivoFijo;
import com.sapito.db.entities.Departamento;
import com.sapito.db.entities.Empleado;
import com.sapito.db.entities.HistorialActivoFijo;
import com.sapito.db.entities.Producto;
import com.sapito.db.entities.TipoActivoFijo;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Usuario
 */
@Controller
public class ActivoFijoController {

    private GenericDao<ActivoFijo> daoActivoFijo;
    private GenericDao<TipoActivoFijo> daoTipoActivoFijo;
    private GenericDao<Producto> daoProducto;
    private GenericDao<Empleado> daoEmpleado;
    private GenericDao<Departamento> daoDepartamento;
    private GenericDao<HistorialActivoFijo> daoHistorialActivoFijo;
    

    @Autowired
    public void setDaoActivoFijo(GenericDao<ActivoFijo> daoActivoFijo) {
        this.daoActivoFijo = daoActivoFijo;
        daoActivoFijo.setClass(ActivoFijo.class);
    }
    
    @Autowired
    public void setDaoTipoActivoFijo(GenericDao<TipoActivoFijo> daoTipoActivoFijo) {
        this.daoTipoActivoFijo = daoTipoActivoFijo;
        daoTipoActivoFijo.setClass(TipoActivoFijo.class);
    }
    
    @Autowired
    public void setDaoProducto(GenericDao<Producto> daoProducto) {
        this.daoProducto = daoProducto;
        daoProducto.setClass(Producto.class);
    }
    
    @Autowired
    public void setDaoEmpleado(GenericDao<Empleado> daoEmpleado) {
        this.daoEmpleado = daoEmpleado;
        daoEmpleado.setClass(Empleado.class);
    }
    
    @Autowired
    public void setDaoDepartamento(GenericDao<Departamento> daoDepartamento) {
        this.daoDepartamento = daoDepartamento;
        daoDepartamento.setClass(Departamento.class);
    }
    
    @Autowired
    public void setDaoHistorialActivoFijo(GenericDao<HistorialActivoFijo> daoHistorialActivoFijo)
    {
        this.daoHistorialActivoFijo = daoHistorialActivoFijo;
        daoHistorialActivoFijo.setClass(HistorialActivoFijo.class);
    }

    @RequestMapping(value = "activofijo", method = RequestMethod.GET)
    public String index(Model model) {        
        return "ActivoFijo/indexactivofijo";
    }

    @RequestMapping(value = "alta", method = RequestMethod.GET)
    public String alta(Model model) {
        ActivoFijo activofijo = new ActivoFijo();
        List<TipoActivoFijo> tipoAF = daoTipoActivoFijo.findAll();
        List<Producto> producto = daoProducto.findAll();
        model.addAttribute("activofijo", activofijo);
        model.addAttribute("tipoAF", tipoAF);
        model.addAttribute("producto", producto);
        return "ActivoFijo/alta";
    }
    
    @RequestMapping(value = "gdaAlta", method = RequestMethod.POST)
    public String regAlta(Model model, @Valid ActivoFijo activofijo, String tipoactivofijoS, String productoS, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "ActivoFijo/alta";
        }
        else
        {
            TipoActivoFijo tipoactivofijo = (TipoActivoFijo) daoTipoActivoFijo.find(Long.valueOf(tipoactivofijoS));
            Producto prod = (Producto) daoProducto.find(Long.valueOf(productoS));
            activofijo.setTipoactivofijo(tipoactivofijo);
            activofijo.setProducto(prod);
            activofijo.setStatus("SinAsignar");
            daoActivoFijo.create(activofijo);
            return "ActivoFijo/gdaAlta";
        }
    }

    /*@RequestMapping(value = "gdaAlta", method = RequestMethod.GET)
    public String gdaAlta(Model model) {
        return "ActivoFijo/gdaAlta";
    }*/

    /*@RequestMapping(value="asignar", method=RequestMethod.GET)
     public String asignar(Model model){
     return "ActivoFijo/asignar";
     }*/
    @RequestMapping(value = "aActivoFijo", method = RequestMethod.GET)
    public String aActivoFijo(Model model) {
        //ActivoFijo activofijo2 = new ActivoFijo();
        
        List<ActivoFijo> af = daoActivoFijo.findAll();
        ActivoFijo lastAF = af.get(af.size() -1 );
        
        List<ActivoFijo> af2 = daoActivoFijo.findAll();
        
        List<Empleado> emp = daoEmpleado.findAll();
        model.addAttribute("emp", emp);
        
        List<Departamento> depto = daoDepartamento.findAll();
        model.addAttribute("depto", depto);
        
        model.addAttribute("lastAF", lastAF);
        model.addAttribute("lastAF2", af2);
        return "ActivoFijo/aActivoFijo";
    }

    @RequestMapping(value = "gdaActivoFijo", method = RequestMethod.POST)
    public String gdaActivoFijo(Model model, String idAF, String departamento, String propietario, String depreciacion) {
        
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        activofijo.setTipoDepreciacion(depreciacion);
        activofijo.setStatus("Asignado");
        daoActivoFijo.edit(activofijo);
        
        HistorialActivoFijo historial = new HistorialActivoFijo();
        Empleado empActual = (Empleado) daoEmpleado.find(Integer.valueOf(propietario));
        historial.setActivofijo(activofijo);
        historial.setNombreref2(empActual);
        historial.setFechaMovimiento(activofijo.getFechaAdquisicion());
        
        daoActivoFijo.create(historial);
        
        return "ActivoFijo/gdaActivoFijo";
    }

    @RequestMapping(value = "addTipoAF", method = RequestMethod.GET)
    public String addTipoAF(Model model) {
        TipoActivoFijo tipoAF = new TipoActivoFijo();        
        model.addAttribute("tipoAF", tipoAF);
        return "ActivoFijo/addTipoAF";
    }
    
    @RequestMapping(value = "gdaAddTipoAF", method = RequestMethod.POST)
    public String gdaAddTipoAF(Model model, @Valid TipoActivoFijo tipoAF, BindingResult bindingResult)
    {
        if(bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "ActivoFijo/alta";
        }
        else
        {
            daoActivoFijo.create(tipoAF);
            return "ActivoFijo/gdaAddTipoAF";
        }
    }
    
    @RequestMapping(value = "mActivoFijo", method = RequestMethod.GET)
    public String mActivoFijo(Model model, String idAF) {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        
        String nomTipoAF = activofijo.getTipoactivofijo().getNombre();
        model.addAttribute("nomTipoAF", nomTipoAF);
        
        Long idTipoAF = activofijo.getTipoactivofijo().getId();
        model.addAttribute("idTipoAF", idTipoAF);
        
        List<TipoActivoFijo> tipoAF = daoTipoActivoFijo.findAll();        
        model.addAttribute("tipoAF", tipoAF);
        
        Long idActivoFijo = activofijo.getId();
        model.addAttribute("idActivoFijo", idActivoFijo);
        
        return "ActivoFijo/mActivoFijo";
    }

    @RequestMapping(value = "gdaModificacion", method = RequestMethod.POST)
    public String gdaModificacion(Model model, String tipoAF, String idActivoFijo) {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idActivoFijo));
        TipoActivoFijo tipoactivofijo = (TipoActivoFijo) daoTipoActivoFijo.find(Long.valueOf(tipoAF));
        
        activofijo.setTipoactivofijo(tipoactivofijo);
        daoActivoFijo.edit(activofijo);
        
        return "ActivoFijo/gdaModificacion";
    }

    @RequestMapping(value = "traslado", method = RequestMethod.GET)
    public String traslado(Model model) {
        
        List<HistorialActivoFijo> historiales = daoHistorialActivoFijo.findAll();
        model.addAttribute("historiales", historiales);
        return "ActivoFijo/traslado";
    }

    @RequestMapping(value = "tActivoFijo", method = RequestMethod.GET)
    public String tActivoFijo(Model model) {
        return "ActivoFijo/tActivoFijo";
    }

    @RequestMapping(value = "gdaTraslado", method = RequestMethod.POST)
    public String gdaTraslado(Model model) {
        return "ActivoFijo/gdaTraslado";
    }

    @RequestMapping(value = "gdaBaja", method = RequestMethod.GET)
    public String gdaBaja(Model model, String idAF) {
        ActivoFijo activofijo = (ActivoFijo) daoActivoFijo.find(Long.valueOf(idAF));
        activofijo.setStatus("Eliminado");
        
        daoActivoFijo.edit(activofijo);
        
        return "ActivoFijo/gdaBaja";
    }

    @RequestMapping(value = "rSolicitud", method = RequestMethod.GET)
    public String rSolicitud(Model model) {
        return "ActivoFijo/rSolicitud";
    }

    @RequestMapping(value = "gdaSolicitud", method = RequestMethod.POST)
    public String gdaSolicitud(Model model) {
        return "ActivoFijo/gdaSolicitud";
    }

    @RequestMapping(value = "consultar", method = RequestMethod.GET)
    public String consultar(Model model) {
        
        List<ActivoFijo> activofijo = daoActivoFijo.findAll();
        
        List<ActivoFijo> af = daoActivoFijo.findBySpecificField("status", "Asignado", "equal", null, null);
        
        model.addAttribute("activofijo", af);
        
        return "ActivoFijo/consultar";
    }

    @RequestMapping(value = "formularioSolicitudCorrecta", method = RequestMethod.GET)
    public String formularioSolicitudCorrecta(Model model) {
        return "ActivoFijo/formularioSolicitudCorrecta";
    }

    @RequestMapping(value = "formularioSolicitudErronea", method = RequestMethod.GET)
    public String formularioSolicitudErronea(Model model) {
        return "ActivoFijo/formularioSolicitudErronea";
    }

    @RequestMapping(value = "gdaSolicitudError", method = RequestMethod.GET)
    public String gdaSolicitudError(Model model) {
        return "ActivoFijo/gdaSolicitudError";
    }

    @RequestMapping(value = "gdaSolicitudCorrecta", method = RequestMethod.GET)
    public String gdaSolicitudCorrecta(Model model) {
        return "ActivoFijo/gdaSolicitudCorrecta";
    }

    @RequestMapping(value = "reporteInversion", method = RequestMethod.GET)
    public String reporteInversion(Model model) {
        return "ActivoFijo/reporteInversion";
    }

    @RequestMapping(value = "reporteDepreciacion", method = RequestMethod.GET)
    public String reporteDepreciacion(Model model) {
        return "ActivoFijo/reporteDepreciacion";
    }

    @RequestMapping(value = "gdaReporte", method = RequestMethod.GET)
    public String gdaReporte(Model model) {
        return "ActivoFijo/gdaReporte";
    }
    
    // AJAX CONTROLLER
    @RequestMapping(value = "activofijo/buscarempleados", method = RequestMethod.GET)
    @ResponseBody
    public List<Empleado> getEmpleadosByDepartamento(Model mode, String idDpto)
    {
        Departamento dpto = (Departamento) daoDepartamento.find(Integer.valueOf(idDpto));
        
        List<Empleado> empleados = daoEmpleado.findBySpecificField("departamentoIddepartamento", dpto, "equal", null, null);
        return empleados;
    }
}
