package com.sapito.logistica;

import com.sapito.db.entities.OrdenEnvio;
import java.util.List;
import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Cliente;
import com.sapito.db.entities.Conductor;
import com.sapito.db.entities.EmpresaTransporte;
import com.sapito.db.entities.GastosEnvio;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.Transporte;
import java.util.HashMap;
import java.util.Map;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.sapito.ventas.*;
import org.springframework.dao.support.DaoSupport;


/**
 *
 * @author nel
 */
@Controller
public class LogisticaController {

    Transporte globalT = new Transporte();
    @RequestMapping(value = "logistica", method = RequestMethod.GET)
    public String index(Model model) {
        return "Logistica/indexLogistica";
    }

    @RequestMapping(value = "logistica/empresaextranjera", method = RequestMethod.GET)
    public String empresaExtranjera(Model model) {
        return "Logistica/extranjeraPage";
    }

    @RequestMapping(value = "logistica/envios", method = RequestMethod.GET)
    public String envios(Model model) {
        
            Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
            query1.setParameter("status", true);
            OrdenEnvio ordenEnvio=new OrdenEnvio();
            
            List<OrdenEnvio> ordenE = query1.getResultList();
            model.addAttribute("ordenEnvio", ordenEnvio);
            model.addAttribute("envios", ordenE);
        
        
        
        return "Logistica/enviosPage";
    }

    @RequestMapping(value = "logistica/mensajes", method = RequestMethod.GET)
    public String mensajes(Model model) {
        return "Logistica/mensajesView";
    }

    @RequestMapping(value = "logistica/alertas", method = RequestMethod.GET)
    public String alertas(Model model) {
        return "Logistica/alertView";
    }

    @RequestMapping(value = "logistica/perfil", method = RequestMethod.GET)
    public String perfil(Model model) {
        return "Logistica/perfilView";
    }

    public String hola(String hola) {
        System.out.println("Hola asas");
        return "Logistica/operadores";
    }

    //-------------Camiones-----------------
    private GenericDao<Transporte> daoTransporte;

    @Autowired
    public void setDaoTransporte(GenericDao<Transporte> daoTransporte) {
        this.daoTransporte = daoTransporte;
        daoTransporte.setClass(Transporte.class); // Asignamos la clase que manipulará
    }
    
    public void consultaCamiones(Model model, HttpServletRequest request) {
        
        Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
        query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
        query.setParameter("status", true);
        List<Transporte> transportes = query.getResultList();
        
        Transporte transporte = new Transporte();
        
        model.addAttribute("transporte",transporte);
        model.addAttribute("idempresa", request.getParameter("empresaid"));
        model.addAttribute("transportes", transportes);
    }
    
    public Transporte findTransporte(String id) {
        Query query2 = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where  a.id=:idtransporte");
        query2.setParameter("idtransporte", Long.parseLong(id));
        List<Transporte> transporte = query2.getResultList();
        return transporte.get(0);
    }
    

    @RequestMapping(value = "logistica/empresa/camiones", method = RequestMethod.GET)
    public String camiones(Model model, HttpServletRequest request) {                        
        consultaCamiones(model, request);
        return "Logistica/transportePage";
    }

    @RequestMapping(value = "logistica/transporteN", method = RequestMethod.GET)
    public String transporteNew(Model model, HttpServletRequest request) {
        
        

        Transporte transporte = new Transporte();
        transporte.setStatus(true);
        model.addAttribute("idempresa", request.getParameter("empresaid"));
        model.addAttribute("transporte", transporte);
        return "Logistica/transporteNew";
    }

    @RequestMapping(value = "logistica/transporteN", method = RequestMethod.POST)
    public String regTransporteNew(Model model, @Valid Transporte transporte, BindingResult bindingResult, HttpServletRequest request) {

        System.out.println("");
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/transporteNew";
        } else {

            Query query2 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.id=:idempresa");
            query2.setParameter("idempresa", Long.parseLong(request.getParameter("empresaid")));
            List<EmpresaTransporte> empresa = query2.getResultList();

            transporte.setEmpresaTransporte(empresa.get(0));
            transporte.setStatus(true);
            daoTransporte.create(transporte);

            model.addAttribute("imprime", "1");

            Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
            query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
            query.setParameter("status", true);
            List<Transporte> transportes = query.getResultList();

            model.addAttribute("transporte",transporte);
            model.addAttribute("idempresa", request.getParameter("empresaid"));
            model.addAttribute("transportes", transportes);

            return "Logistica/transportePage";
        }
    }
    
    
    @RequestMapping(value = "logistica/bajaTransporte", method = RequestMethod.GET)
    public String eliminarTransporte(Model model, HttpServletRequest request) {
        
        Transporte em = findTransporte(request.getParameter("id"));
        em.setStatus(false);
        daoTransporte.edit(em);
        
        consultaCamiones(model, request);
        return "Logistica/transportePage";
    }
    
    
    
    @RequestMapping(value = "logistica/modificaTransporte", method = RequestMethod.GET)
    public String modificaTransporte(Model model, HttpServletRequest request) {

        Transporte emT = findTransporte(request.getParameter("id"));
        model.addAttribute("idempresa", request.getParameter("empresaid"));
        model.addAttribute("modificar", "1");
        model.addAttribute("transporte", emT);        
        return "Logistica/transporteNew";
    }

    @RequestMapping(value = "logistica/modificaTransporte", method = RequestMethod.POST)
    public String regModificarTransporte(Model model, @Valid Transporte transporte, BindingResult bindingResult, HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/operadoresNew";
        } else {
            
            System.out.println(request.getParameter("empresaid"));
            
            Transporte tR=findTransporte(transporte.getId()+"");
            tR.setCostoDia(transporte.getCostoDia());
            tR.setDimension(transporte.getDimension());
            tR.setDisponibleTransporte(transporte.isDisponibleTransporte());
            tR.setPlacas(transporte.getPlacas());
            tR.setTipotransporte(transporte.getTipotransporte());

            daoTransporte.edit(tR);

            model.addAttribute("imprime", "2");

            Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
            query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
            query.setParameter("status", true);
            List<Transporte> transportes = query.getResultList();

            model.addAttribute("transporte",transporte);
            model.addAttribute("idempresa", request.getParameter("empresaid"));
            model.addAttribute("transportes", transportes);

            return "Logistica/transportePage";
        }

    }
    
    
    
    
    
    

    //-------------Fin Camiones-----------------
    

//------------Operadores-----------------
    private GenericDao<Conductor> daoConductor;

    @Autowired
    public void setDaoConductor(GenericDao<Conductor> daoConductor) {
        this.daoConductor = daoConductor;
        daoConductor.setClass(Conductor.class); // Asignamos la clase que manipulará
    }

    @RequestMapping(value = "logistica/altaOperador", method = RequestMethod.GET)
    public String altaOperador(Model model) {
        Conductor conductor = new Conductor();
        conductor.setStatus(true);
        model.addAttribute("conductor", conductor);
        return "Logistica/operadoresNew";
    }

    @RequestMapping(value = "logistica/altaOperador", method = RequestMethod.POST)
    public String regAltaOperador(Model model, @Valid Conductor conductor, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/operadoresNew";
        } else {
            conductor.setStatus(true);
            daoConductor.create(conductor);
            model.addAttribute("imprime", "1");

            Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
            query1.setParameter("status", true);
            List<Conductor> conductores = query1.getResultList();
            model.addAttribute("conductores", conductores);
            return "Logistica/operadoresPage";
        }
    }
    
    
    
    @RequestMapping(value = "logistica/modificaOperador", method = RequestMethod.GET)
    public String modificaOperador(Model model, HttpServletRequest request) {

        Conductor emT = findOperador(request.getParameter("id"));
        model.addAttribute("modificar", "1");
        model.addAttribute("conductor", emT);        
        return "Logistica/operadoresNew";
    }

    @RequestMapping(value = "logistica/modificaOperador", method = RequestMethod.POST)
    public String regModificarOperador(Model model, @Valid Conductor conductor, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/operadoresNew";
        } else {

            daoConductor.edit(conductor);

            model.addAttribute("imprime", "2");

            Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
            query1.setParameter("status", true);
            List<Conductor> conductores = query1.getResultList();
            model.addAttribute("conductor", conductor);
            model.addAttribute("conductores", conductores);
            return "Logistica/operadoresPage";
        }

    }
    
    
    
    
    
    
    @RequestMapping(value = "logistica/bajaOperador", method = RequestMethod.GET)
    public String eliminarOperador(Model model, HttpServletRequest request) {
        
        Conductor em = findOperador(request.getParameter("id"));
        em.setStatus(false);
        daoConductor.edit(em);
        
        consultaOperador(model);
        return "Logistica/operadoresPage";
    }
    
    
    public Conductor findOperador(String id) {
        Query query2 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.id=:idoperador");
        query2.setParameter("idoperador", Long.parseLong(id));
        List<Conductor> conductor = query2.getResultList();
        return conductor.get(0);
    }
    
    public void consultaOperador(Model model) {
        Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
        query1.setParameter("status", true);
        List<Conductor> conductores = query1.getResultList();
        Conductor conductor = new Conductor();
        model.addAttribute("conductor", conductor);
        model.addAttribute("conductores", conductores);
    }
    
    
    

    @RequestMapping(value = "logistica/operadores", method = RequestMethod.GET)
    public String operadores(Model model) {

        consultaOperador(model);
        return "Logistica/operadoresPage";
    }
    //------------Operadores Fin-----------------

    
    
    
    //--------------Empresa--------------------------//
    private GenericDao<EmpresaTransporte> daoEmpresaTransporte;

    @Autowired
    public void setDaoEmpresaTransporte(GenericDao<EmpresaTransporte> daoEmpresaTransporte) {
        this.daoEmpresaTransporte = daoEmpresaTransporte;
        daoEmpresaTransporte.setClass(EmpresaTransporte.class); // Asignamos la clase que manipulará
    }

    //---------------Alta empresa---------------
    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.GET)
    public String altaEmpresa(Model model) {
        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
        empresaTransporte.setStatus(true);
        model.addAttribute("empresaTransporte", empresaTransporte);
        return "Logistica/nacionalNew";
    }

    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.POST)
    public String regaltaEmpresa(Model model, @Valid EmpresaTransporte empresaTransporte, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/nacionalNew";
        } else {
            empresaTransporte.setStatus(true);
            daoEmpresaTransporte.create(empresaTransporte);
            model.addAttribute("imprime", "1");

            Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
            query1.setParameter("status", true);
            List<EmpresaTransporte> empresas = query1.getResultList();
            model.addAttribute("empresaT", empresaTransporte);
            model.addAttribute("empresas", empresas);
            return "Logistica/nacionalPage";

        }
    }

    @RequestMapping(value = "logistica/empresa/bajaEmpresa", method = RequestMethod.GET)
    public String eliminar(Model model, HttpServletRequest request) {
        EmpresaTransporte em = findEmpresaTransporte(request.getParameter("empresaid"));
        em.setStatus(false);
        daoTransporte.edit(em);
        consultaEmpresa(model);        
        return "Logistica/nacionalPage";
    }

    
    @RequestMapping(value = "logistica/empresa/modificaEmpresa", method = RequestMethod.GET)
    public String modificaEmpresa(Model model, HttpServletRequest request) {

        EmpresaTransporte emT = findEmpresaTransporte(request.getParameter("empresaid"));
        model.addAttribute("modificar", "1");
        model.addAttribute("empresaTransporte", emT);        
        return "Logistica/nacionalNew";
    }

    @RequestMapping(value = "logistica/empresa/modificaEmpresa", method = RequestMethod.POST)
    public String regModificarEmpresa(Model model, @Valid EmpresaTransporte empresaTransporte, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/nacionalNew";
        } else {
            

            daoEmpresaTransporte.edit(empresaTransporte);

            model.addAttribute("imprime", "2");

            Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
            query1.setParameter("status", true);
            List<EmpresaTransporte> empresas = query1.getResultList();
            model.addAttribute("empresaT", empresaTransporte);
            model.addAttribute("empresas", empresas);
            return "Logistica/nacionalPage";
        }

    }
    //------------------Fin alta empresa--------------

    
    //---- Consulta empresa----------
    @RequestMapping(value = "logistica/empresanacional", method = RequestMethod.GET)
    public String empresaNacional(Model model) {
        consultaEmpresa(model);
        return "Logistica/nacionalPage";
    }
    //---- Consulta empresa----------

    public EmpresaTransporte findEmpresaTransporte(String id) {
        Query query2 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.id=:idempresa");
        query2.setParameter("idempresa", Long.parseLong(id));
        List<EmpresaTransporte> empresa = query2.getResultList();
        return empresa.get(0);
    }

    public void consultaEmpresa(Model model) {
        Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
        query1.setParameter("status", true);
        List<EmpresaTransporte> empresas = query1.getResultList();
        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
        model.addAttribute("empresaT", empresaTransporte);
        model.addAttribute("empresas", empresas);

    }

    //---------------Fin Empresa--------------------------//
    
    //--------------Envio---------------//

    private GenericDao<OrdenEnvio> daoOrdenE;
    
    public Transporte asignaTransporte(boolean tipo,int cantidad,Transporte tran)
    {
        boolean nacional;
        nacional = tipo;
        Transporte oTransporte;
        if(nacional==true)
        {
            Query queryE = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.tipo=:nacional");
            queryE.setParameter("nacional", true);
            List<EmpresaTransporte> EmTransporte = queryE.getResultList();
            Query queryT = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.tipotransporte=:tipoT and a.empresaTransporte=:empresa ");
            if((cantidad<101)&(cantidad>0))
            {
                
                queryT.setParameter("tipoT","Rabon");
                queryT.setParameter("empresa",EmTransporte.get(0).getId());
                List<Transporte> transporte = queryT.getResultList();
                for (int i = 0; i < transporte.size(); i++)
                {   
                    oTransporte = transporte.get(i);
                    if(oTransporte.isStatus()==true & oTransporte.getTipotransporte().equals("Rabon"))
                    {
                        transporte.get(i).setStatus(false);
                        tran = oTransporte;
                    }break;
                }
            }else
            {
                queryT.setParameter("tipoT","Tracto Camion");
                queryT.setParameter("empresa",EmTransporte.get(0).getId());
                List<Transporte> transporte = queryT.getResultList();
                for (int i = 0; i < transporte.size(); i++)
                {   
                    oTransporte = transporte.get(i);
                    if(oTransporte.isStatus()==true & oTransporte.getTipotransporte().equals("Tracto Camion"))
                    {
                        transporte.get(i).setStatus(false);
                        tran = oTransporte;
                    }break;
                }
            }
            
        }else
        {
            Query queryE = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.tipo=:extranjera");
            queryE.setParameter("extranjera", false);
            List<EmpresaTransporte> EmTransporte = queryE.getResultList();
            Query queryT = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.tipotransporte=:tipoT and a.empresaTransporte=:empresa ");
            if((cantidad<101)&(cantidad>0))
            {
                queryT.setParameter("tipoT","Rabon");
                queryT.setParameter("empresa",EmTransporte.get(0).getId());
                List<Transporte> transporte = queryT.getResultList();
                for (int i = 0; i < transporte.size(); i++)
                {   
                    oTransporte = transporte.get(i);
                    if(oTransporte.isStatus()==true & oTransporte.getTipotransporte().equals("Rabon"))
                    {
                        transporte.get(i).setStatus(false);
                        tran = oTransporte;
                    }break;
                }
            }else
            {
                queryT.setParameter("tipoT","Tracto Camion");
                queryT.setParameter("empresa",EmTransporte.get(0).getId());
                List<Transporte> transporte = queryT.getResultList();
                for (int i = 0; i < transporte.size(); i++)
                {   
                    oTransporte = transporte.get(i);
                    if(oTransporte.isStatus()==true & oTransporte.getTipotransporte().equals("Tracto Camion"))
                    {
                        transporte.get(i).setStatus(false);
                        tran = oTransporte;
                    }break;
                }
            }
        }return tran;
    }
    
    public Conductor asignaConductor(Conductor rConductor)
    {
        Conductor gConductor;
        Query queryC = daoConductor.getEntityMgr().createQuery("SELECT * FROM Conductor");
        List<Conductor> conductor = queryC.getResultList();
        for (int i = 0; i < conductor.size(); i++)
        {
            gConductor = conductor.get(i);
            if(gConductor.isDisponibleConductor()==true)
            {
                conductor.get(i).setStatus(false);
                conductor.get(i).setDisponibleConductor(false);
                rConductor=conductor.get(i);
            }
        }return rConductor;
    }
    
    @Autowired
    public void setDaoOrdenEnvio(GenericDao<OrdenEnvio> daoOrdenE) 
    {
        this.daoOrdenE = daoOrdenE;
        daoOrdenE.setClass(OrdenEnvio.class);
    }

    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.GET)
    public String altaEnvio(Model model) {
        OrdenEnvio ordenEnvio = new OrdenEnvio();
        ordenEnvio.setStatus(true);
        model.addAttribute("ordenEnvio", ordenEnvio);
        return "Logistica/enviosNew";
    }
    
    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.POST)
    public String regNvoE(Model model, @Valid OrdenEnvio ordenE, BindingResult bindingResult) 
    {
        if (bindingResult.hasErrors()) {

            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/enviosNew";
        } else 
        {
//            ordenE.setIdTransporte(asignaTransporte(true, 100, null));////////////////7//////checar alta
//            ordenE.setIdConductor(asignaConductor(null));///////////////////////////////checar
            ordenE.setStatus(true);
            daoOrdenE.create(ordenE);
                                    
            
            
            Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
            query1.setParameter("status", true);
            List<OrdenEnvio> ordenEnvios = query1.getResultList();
            model.addAttribute("ordenEnvio", ordenE);
            model.addAttribute("envios", ordenEnvios);
            
            
            return "Logistica/enviosPage";
        }
    }
    
//    @RequestMapping(value = "logistica/altaEnvio", method = RequestMethod.GET)
//    public String enviosF(Model model) 
//    {        
//        Query queryJ = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
//        queryJ.setParameter("status", true);
//        List<OrdenEnvio> ordenEnvio=queryJ.getResultList();
//        model.addAttribute("ordenEnvio", ordenEnvio);
//        return "Logistica/enviosPage";
//    }
    
    public OrdenEnvio findOrdenEnvio(String id) 
    {
        Query query2 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.id=:idOrdenEnvio");
        query2.setParameter("idOrdenEnvio",Long.parseLong(id));
        List<OrdenEnvio> ordenEnvio = query2.getResultList();
        return ordenEnvio.get(0);
    }
    
     /////modificaciones
    @RequestMapping(value = "logistica/envios/modificaEnvio", method = RequestMethod.POST)
    public String regModificarEnvio(Model model, @Valid OrdenEnvio ordenEnvio, BindingResult bindingResult) 
    {
        if (bindingResult.hasErrors())
        {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/enviosNew";
        } else 
        {
            daoOrdenE.edit(ordenEnvio);
            model.addAttribute("imprime", "2");/////////////checar el modifica
            Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
            query1.setParameter("status", true);
            List<OrdenEnvio> ordenE = query1.getResultList();
            model.addAttribute("ordenEnvio", ordenEnvio);
            model.addAttribute("ordenE", ordenE);
            return "Logistica/enviosPage";
        }	
    }
    
    @RequestMapping(value = "logistica/envios/modificaEnvio", method = RequestMethod.GET)
    public String modificaOrdenEnvio(Model model, HttpServletRequest request) 
    {
        System.out.println("iiiiiiiiiiiiiiiiidddddddddd"+findOrdenEnvio(request.getParameter("idOrdenEnvio")));
        OrdenEnvio ordenE = findOrdenEnvio(request.getParameter("idOrdenEnvio"));
        model.addAttribute("modificar", "1");
        model.addAttribute("ordenE", ordenE);        
        return "Logistica/enviosNew";
    }
    
    @RequestMapping(value = "logistica/envios/bajaEnvio", method = RequestMethod.GET)
    public String eliminarOrdenEnvio(Model model, HttpServletRequest request) 
    {
            OrdenEnvio ordenEnvio = findOrdenEnvio(request.getParameter("idOrdenEnvio"));
            ordenEnvio.setStatus(false);
            daoTransporte.edit(ordenEnvio);
            
            Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
            query1.setParameter("status", true);
            List<OrdenEnvio> ordenE = query1.getResultList();
            model.addAttribute("ordenEnvio", ordenEnvio);
            model.addAttribute("envios", ordenE);
        return "Logistica/enviosPage";
    }
    
    /////////////////////Envios/////////////////////

    @RequestMapping(value = "logistica/enviosV", method = RequestMethod.GET)
    public String enviosView(Model model) {
        return "Logistica/enviosView";
    }

    @RequestMapping(value = "logistica/operadoresV", method = RequestMethod.GET)
    public String operadoresView(Model model) {
        return "Logistica/operadoresView";
    }

    ////////////////Gastos//////////////
    private GenericDao<GastosEnvio> daoGastosE;
    @Autowired
    public void setDaoGastosE(GenericDao<GastosEnvio> daoGastosE) 
    {
        this.daoGastosE = daoGastosE;
        daoGastosE.setClass(GastosEnvio.class);
    }

    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.GET)
    public String gastosEnvioN(Model model) 
    {
        System.out.println("aaa");
        GastosEnvio gastosE = new GastosEnvio();
        gastosE.setStatus(true);

        model.addAttribute("gastosE", gastosE);
        return "Logistica/gastosEnvioNew";
    }

    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.POST)
    public String regGastosEnvio(Model model, @Valid GastosEnvio gastosE, BindingResult bindingResult) 
    {
        if (bindingResult.hasErrors()) 
        {
            System.out.println("as0");
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/gastosEnvioNew";
        } else 
        {
            System.out.println("as");
            gastosE.setStatus(true);
            daoGastosE.create(gastosE);
            Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM GastosEnvio a where a.status=:status");
            query1.setParameter("status", true);
            List<GastosEnvio> gastosEnvio = query1.getResultList();
            model.addAttribute("gastosE",gastosE);
            model.addAttribute("gastos",gastosEnvio);
            return "Logistica/gastosEnvioPage";
        }
    }
    
    @RequestMapping(value = "logistica/gastosenvio", method = RequestMethod.GET)
    public String gatosF(Model model) 
    {        
        Query queryJ = daoGastosE.getEntityMgr().createQuery("SELECT a FROM GastosEnvio a where a.status=:status");
        queryJ.setParameter("status", true);
        List<GastosEnvio> gastosEnvio=queryJ.getResultList();
        model.addAttribute("gastos", gastosEnvio);
        return "Logistica/gastosEnvioPage";
    }
    
    public GastosEnvio findGastosEnvio(String id) 
    {
        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM GastosEnvio a where a.id=:idGastosEnvio");
        query2.setParameter("idGastosEnvio",Long.parseLong(id));
        List<GastosEnvio> gastosEnvios = query2.getResultList();
        return gastosEnvios.get(0);
    }
    
    @RequestMapping(value = "logistica/gastosenvio/bajaGastosEnvio", method = RequestMethod.GET)
    public String eliminarGastosEnvio(Model model, HttpServletRequest request) 
    {
            GastosEnvio gastosEnvio = findGastosEnvio(request.getParameter("idGastosEnvio"));
            gastosEnvio.setStatus(false);
            daoGastosE.edit(gastosEnvio);
            
            Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM GastosEnvio a where a.status=:status");
            query1.setParameter("status", true);
            List<GastosEnvio> gastosE = query1.getResultList();
            model.addAttribute("gastosEnvio", gastosEnvio);
            model.addAttribute("gastos", gastosE);
        return "Logistica/gastosEnvioPage";
    }
    
    ////////////////llena tabla gastosF
    @RequestMapping(value = "logistica/nacionalV", method = RequestMethod.GET)
    public String nacionalView(Model model) {
        return "Logistica/nacionalView";
    }

    @RequestMapping(value = "logistica/transporteV", method = RequestMethod.GET)
    public String transporteView(Model model) {
        return "Logistica/transporteView";
    }

    @RequestMapping(value = "logistica/empresa/nacionalN", method = RequestMethod.GET)
    public String nacionalNew(Model model) {
        return "Logistica/nacionalNew";
    }

    @RequestMapping(value = "logistica/extranjeraV", method = RequestMethod.GET)
    public String extranjeraView(Model model) {
        return "Logistica/extranjeraView";
    }
//    
//    @RequestMapping(value="logistica", method=RequestMethod.GET)
//    public String index(Model model)
//    {
//        return "Logistica/indexLogistica";
//    }
//    

    @RequestMapping(value = "logistica/pdf", method = RequestMethod.GET)
    public ModelAndView indexpdf(Model model,HttpServletRequest request) throws ServletRequestBindingException 
    {
        String output =
			ServletRequestUtils.getStringParameter(request, "output");
		
		//dummy data
		Map<String,String> revenueData = new HashMap<String,String>();
		revenueData.put("1/20/2010", "$100,000");
		revenueData.put("1/21/2010", "$200,000");
		revenueData.put("1/22/2010", "$300,000");
		revenueData.put("1/23/2010", "$400,000");
		revenueData.put("1/24/2010", "$500,000");
		
		if(output ==null || "".equals(output)){
			//return normal view
			return new ModelAndView("RevenueSummary","revenueData",revenueData);
			
		}else if("PDF".equals(output.toUpperCase())){
			//return excel view
			return new ModelAndView("PdfRevenueSummary","revenueData",revenueData);
			
		}else{
			//return normal view
			return new ModelAndView("RevenueSummary","revenueData",revenueData);
			
		}

        
    }
//    

}
