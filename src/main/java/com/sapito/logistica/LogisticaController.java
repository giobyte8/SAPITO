//package com.sapito.logistica;
//
//import com.itextpdf.text.Document;
//import com.itextpdf.text.Element;
//import com.itextpdf.text.Font;
//import com.itextpdf.text.Paragraph;
//import com.itextpdf.text.Phrase;
//import com.itextpdf.text.pdf.PdfPCell;
//import com.itextpdf.text.pdf.PdfPTable;
//import com.itextpdf.text.pdf.PdfWriter;
//import com.sapito.db.entities.OrdenEnvio;
//import java.util.List;
//import com.sapito.db.dao.GenericDao;
//import com.sapito.db.entities.Conductor;
//import com.sapito.db.entities.EmpresaTransporte;
//import com.sapito.db.entities.GastosEnvio;
//import com.sapito.db.entities.Transporte;
//import java.io.File;
//import java.io.FileOutputStream;
//import java.io.OutputStream;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.Map;
//import javax.persistence.Query;
//import javax.servlet.http.HttpServletRequest;
//import javax.validation.Valid;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.ServletRequestBindingException;
//import org.springframework.web.bind.ServletRequestUtils;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
///**
// *
// * @author nel
// */
//@Controller
//public class LogisticaController {
//
//    @RequestMapping(value = "logistica", method = RequestMethod.GET)
//    public String index(Model model) {
//        return "Logistica/indexLogistica";
//    }
//
//    @RequestMapping(value = "logistica/empresaextranjera", method = RequestMethod.GET)
//    public String empresaExtranjera(Model model) {
//        return "Logistica/extranjeraPage";
//    }
//
//    @RequestMapping(value = "logistica/gastosenvio", method = RequestMethod.GET)
//    public String gastos(Model model) {
//        return "Logistica/gastosEnvioPage";
//    }
//
//    @RequestMapping(value = "logistica/envios", method = RequestMethod.GET)
//    public String envios(Model model) {
//        return "Logistica/enviosPage";
//    }
//
//    @RequestMapping(value = "logistica/mensajes", method = RequestMethod.GET)
//    public String mensajes(Model model) {
//        return "Logistica/mensajesView";
//    }
//
//    @RequestMapping(value = "logistica/alertas", method = RequestMethod.GET)
//    public String alertas(Model model) {
//        return "Logistica/alertView";
//    }
//
//    @RequestMapping(value = "logistica/perfil", method = RequestMethod.GET)
//    public String perfil(Model model) {
//        return "Logistica/perfilView";
//    }
//
//    public String hola(String hola) {
//        System.out.println("Hola asas");
//        return "Logistica/operadores";
//    }
//
//    //-------------Camiones-----------------
//    private GenericDao<Transporte> daoTransporte;
//
//    @Autowired
//    public void setDaoTransporte(GenericDao<Transporte> daoTransporte) {
//        this.daoTransporte = daoTransporte;
//        daoTransporte.setClass(Transporte.class); // Asignamos la clase que manipulará
//    }
//    
//    public void consultaCamiones(Model model, HttpServletRequest request) {
//        
//        Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
//        query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
//        query.setParameter("status", true);
//        List<Transporte> transportes = query.getResultList();
//        
//        Transporte transporte = new Transporte();
//        
//        model.addAttribute("transporte",transporte);
//        model.addAttribute("idempresa", request.getParameter("empresaid"));
//        model.addAttribute("transportes", transportes);
//    }
//    
//    public Transporte findTransporte(String id) {
//        Query query2 = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where  a.id=:idtransporte");
//        query2.setParameter("idtransporte", Long.parseLong(id));
//        List<Transporte> transporte = query2.getResultList();
//        return transporte.get(0);
//    }
//    
//
//    @RequestMapping(value = "logistica/empresa/camiones", method = RequestMethod.GET)
//    public String camiones(Model model, HttpServletRequest request) {                        
//        consultaCamiones(model, request);
//        return "Logistica/transportePage";
//    }
//
//    @RequestMapping(value = "logistica/transporteN", method = RequestMethod.GET)
//    public String transporteNew(Model model, HttpServletRequest request) {
//        
//        
//
//        Transporte transporte = new Transporte();
//        transporte.setStatus(true);
//        model.addAttribute("idempresa", request.getParameter("empresaid"));
//        model.addAttribute("transporte", transporte);
//        return "Logistica/transporteNew";
//    }
//
//    @RequestMapping(value = "logistica/transporteN", method = RequestMethod.POST)
//    public String regTransporteNew(Model model, @Valid Transporte transporte, BindingResult bindingResult, HttpServletRequest request) {
//
//        System.out.println("");
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/transporteNew";
//        } else {
//
//            Query query2 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.id=:idempresa");
//            query2.setParameter("idempresa", Long.parseLong(request.getParameter("empresaid")));
//            List<EmpresaTransporte> empresa = query2.getResultList();
//
//            transporte.setEmpresaTransporte(empresa.get(0));
//            transporte.setStatus(true);
//            daoTransporte.create(transporte);
//
//            model.addAttribute("imprime", "1");
//
//            Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
//            query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
//            query.setParameter("status", true);
//            List<Transporte> transportes = query.getResultList();
//
//            model.addAttribute("transporte",transporte);
//            model.addAttribute("idempresa", request.getParameter("empresaid"));
//            model.addAttribute("transportes", transportes);
//
//            return "Logistica/transportePage";
//        }
//    }
//    
//    
//    @RequestMapping(value = "logistica/bajaTransporte", method = RequestMethod.GET)
//    public String eliminarTransporte(Model model, HttpServletRequest request) {
//        
//        Transporte em = findTransporte(request.getParameter("id"));
//        em.setStatus(false);
//        daoTransporte.edit(em);
//        
//        consultaCamiones(model, request);
//        return "Logistica/transportePage";
//    }
//    
//    
//    
//    @RequestMapping(value = "logistica/modificaTransporte", method = RequestMethod.GET)
//    public String modificaTransporte(Model model, HttpServletRequest request) {
//
//        Transporte emT = findTransporte(request.getParameter("id"));
//        model.addAttribute("idempresa", request.getParameter("empresaid"));
//        model.addAttribute("modificar", "1");
//        model.addAttribute("transporte", emT);        
//        return "Logistica/transporteNew";
//    }
//
//    @RequestMapping(value = "logistica/modificaTransporte", method = RequestMethod.POST)
//    public String regModificarTransporte(Model model, @Valid Transporte transporte, BindingResult bindingResult, HttpServletRequest request) {
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/operadoresNew";
//        } else {
//            
//            System.out.println(request.getParameter("empresaid"));
//            
//            Transporte tR=findTransporte(transporte.getId()+"");
//            tR.setCostoDia(transporte.getCostoDia());
//            tR.setDimension(transporte.getDimension());
//            tR.setDisponibleTransporte(transporte.isDisponibleTransporte());
//            tR.setPlacas(transporte.getPlacas());
//            tR.setTipotransporte(transporte.getTipotransporte());
//
//            daoTransporte.edit(tR);
//
//            model.addAttribute("imprime", "2");
//
//            Query query = daoTransporte.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.empresaTransporte.id=:empresaid and a.status=:status");
//            query.setParameter("empresaid", Long.parseLong(request.getParameter("empresaid")));
//            query.setParameter("status", true);
//            List<Transporte> transportes = query.getResultList();
//
//            model.addAttribute("transporte",transporte);
//            model.addAttribute("idempresa", request.getParameter("empresaid"));
//            model.addAttribute("transportes", transportes);
//
//            return "Logistica/transportePage";
//        }
//
//    }
//    
//    
//    
//    
//    
//    
//
//    //-------------Fin Camiones-----------------
//    
//
////------------Operadores-----------------
//    private GenericDao<Conductor> daoConductor;
//
//    @Autowired
//    public void setDaoConductor(GenericDao<Conductor> daoConductor) {
//        this.daoConductor = daoConductor;
//        daoConductor.setClass(Conductor.class); // Asignamos la clase que manipulará
//    }
//
//    @RequestMapping(value = "logistica/altaOperador", method = RequestMethod.GET)
//    public String altaOperador(Model model) {
//        Conductor conductor = new Conductor();
//        conductor.setStatus(true);
//        model.addAttribute("conductor", conductor);
//        return "Logistica/operadoresNew";
//    }
//
//    @RequestMapping(value = "logistica/altaOperador", method = RequestMethod.POST)
//    public String regAltaOperador(Model model, @Valid Conductor conductor, BindingResult bindingResult) {
//
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/operadoresNew";
//        } else {
//            conductor.setStatus(true);
//            daoConductor.create(conductor);
//            model.addAttribute("imprime", "1");
//
//            Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
//            query1.setParameter("status", true);
//            List<Conductor> conductores = query1.getResultList();
//            model.addAttribute("conductores", conductores);
//            return "Logistica/operadoresPage";
//        }
//    }
//    
//    
//    
//    @RequestMapping(value = "logistica/modificaOperador", method = RequestMethod.GET)
//    public String modificaOperador(Model model, HttpServletRequest request) {
//
//        Conductor emT = findOperador(request.getParameter("id"));
//        model.addAttribute("modificar", "1");
//        model.addAttribute("conductor", emT);        
//        return "Logistica/operadoresNew";
//    }
//
//    @RequestMapping(value = "logistica/modificaOperador", method = RequestMethod.POST)
//    public String regModificarOperador(Model model, @Valid Conductor conductor, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/operadoresNew";
//        } else {
//
//            daoConductor.edit(conductor);
//
//            model.addAttribute("imprime", "2");
//
//            Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
//            query1.setParameter("status", true);
//            List<Conductor> conductores = query1.getResultList();
//            model.addAttribute("conductor", conductor);
//            model.addAttribute("conductores", conductores);
//            return "Logistica/operadoresPage";
//        }
//
//    }
//    
//    
//    
//    
//    
//    
//    @RequestMapping(value = "logistica/bajaOperador", method = RequestMethod.GET)
//    public String eliminarOperador(Model model, HttpServletRequest request) {
//        
//        Conductor em = findOperador(request.getParameter("id"));
//        em.setStatus(false);
//        daoConductor.edit(em);
//        
//        consultaOperador(model);
//        return "Logistica/operadoresPage";
//    }
//    
//    
//    public Conductor findOperador(String id) {
//        Query query2 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.id=:idoperador");
//        query2.setParameter("idoperador", Long.parseLong(id));
//        List<Conductor> conductor = query2.getResultList();
//        return conductor.get(0);
//    }
//    
//    public void consultaOperador(Model model) {
//        Query query1 = daoConductor.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=:status");
//        query1.setParameter("status", true);
//        List<Conductor> conductores = query1.getResultList();
//        Conductor conductor = new Conductor();
//        model.addAttribute("conductor", conductor);
//        model.addAttribute("conductores", conductores);
//    }
//    
//    
//    
//
//    @RequestMapping(value = "logistica/operadores", method = RequestMethod.GET)
//    public String operadores(Model model) {
//
//        consultaOperador(model);
//        return "Logistica/operadoresPage";
//    }
//    //------------Operadores Fin-----------------
//
//    
//    
//    
//    //--------------Empresa--------------------------//
//    private GenericDao<EmpresaTransporte> daoEmpresaTransporte;
//
//    @Autowired
//    public void setDaoEmpresaTransporte(GenericDao<EmpresaTransporte> daoEmpresaTransporte) {
//        this.daoEmpresaTransporte = daoEmpresaTransporte;
//        daoEmpresaTransporte.setClass(EmpresaTransporte.class); // Asignamos la clase que manipulará
//    }
//
//    //---------------Alta empresa---------------
//    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.GET)
//    public String altaEmpresa(Model model) {
//        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
//        empresaTransporte.setStatus(true);
//        model.addAttribute("empresaTransporte", empresaTransporte);
//        return "Logistica/nacionalNew";
//    }
//
//    @RequestMapping(value = "logistica/empresa/altaEmpresa", method = RequestMethod.POST)
//    public String regaltaEmpresa(Model model, @Valid EmpresaTransporte empresaTransporte, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/nacionalNew";
//        } else {
//            empresaTransporte.setStatus(true);
//            daoEmpresaTransporte.create(empresaTransporte);
//            model.addAttribute("imprime", "1");
//
//            Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
//            query1.setParameter("status", true);
//            List<EmpresaTransporte> empresas = query1.getResultList();
//            model.addAttribute("empresaT", empresaTransporte);
//            model.addAttribute("empresas", empresas);
//            return "Logistica/nacionalPage";
//
//        }
//    }
//
//    @RequestMapping(value = "logistica/empresa/bajaEmpresa", method = RequestMethod.GET)
//    public String eliminar(Model model, HttpServletRequest request) {
//        EmpresaTransporte em = findEmpresaTransporte(request.getParameter("empresaid"));
//        em.setStatus(false);
//        daoTransporte.edit(em);
//        consultaEmpresa(model);
//        return "Logistica/nacionalPage";
//    }
//
//    
//    @RequestMapping(value = "logistica/empresa/modificaEmpresa", method = RequestMethod.GET)
//    public String modificaEmpresa(Model model, HttpServletRequest request) {
//
//        EmpresaTransporte emT = findEmpresaTransporte(request.getParameter("empresaid"));
//        model.addAttribute("modificar", "1");
//        model.addAttribute("empresaTransporte", emT);        
//        return "Logistica/nacionalNew";
//    }
//
//    @RequestMapping(value = "logistica/empresa/modificaEmpresa", method = RequestMethod.POST)
//    public String regModificarEmpresa(Model model, @Valid EmpresaTransporte empresaTransporte, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/nacionalNew";
//        } else {
//
//            daoEmpresaTransporte.edit(empresaTransporte);
//
//            model.addAttribute("imprime", "2");
//
//            Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
//            query1.setParameter("status", true);
//            List<EmpresaTransporte> empresas = query1.getResultList();
//            model.addAttribute("empresaT", empresaTransporte);
//            model.addAttribute("empresas", empresas);
//            return "Logistica/nacionalPage";
//        }
//
//    }
//    //------------------Fin alta empresa--------------
//
//    
//    //---- Consulta empresa----------
//    @RequestMapping(value = "logistica/empresanacional", method = RequestMethod.GET)
//    public String empresaNacional(Model model) {
//        consultaEmpresa(model);
//        return "Logistica/nacionalPage";
//    }
//    //---- Consulta empresa----------
//
//    public EmpresaTransporte findEmpresaTransporte(String id) {
//        Query query2 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.id=:idempresa");
//        query2.setParameter("idempresa", Long.parseLong(id));
//        List<EmpresaTransporte> empresa = query2.getResultList();
//        return empresa.get(0);
//    }
//
//    public void consultaEmpresa(Model model) {
//        Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
//        query1.setParameter("status", true);
//        List<EmpresaTransporte> empresas = query1.getResultList();
//        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
//        model.addAttribute("empresaT", empresaTransporte);
//        model.addAttribute("empresas", empresas);
//
//    }
//
//    //---------------Fin Empresa--------------------------//
//    
//    //--------------Envio---------------
//
//    private GenericDao<OrdenEnvio> daoOrdenE;
//
//    @Autowired
//    public void setDaoOrdenEnvio(GenericDao<OrdenEnvio> daoOrdenE) {
//        this.daoOrdenE = daoOrdenE;
//        daoOrdenE.setClass(OrdenEnvio.class);
//    }
//
//    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.GET)
//    public String altaEnvio(Model model) {
//        OrdenEnvio ordenE = new OrdenEnvio();
//        ordenE.setStatus(true);
//        model.addAttribute("ordenEnvio", ordenE);
//        return "Logistica/enviosNew";
//    }
//
//    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.POST)
//    public String regNvoE(Model model, @Valid OrdenEnvio ordenE, BindingResult bindingResult) 
//    {
//        if (bindingResult.hasErrors()) {
//
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/enviosNew";
//        } else {
//            daoOrdenE.create(ordenE);
//            List<OrdenEnvio> ordenEnvio=daoOrdenE.findAll();
//            model.addAttribute("envios",ordenEnvio);
//            return "Logistica/enviosPage";
//        }
//    }
//    
//    @RequestMapping(value = "logistica/altaEnvio", method = RequestMethod.GET)
//    public String enviosF(Model model) 
//    {        
//        List<OrdenEnvio> ordenEnvios=daoOrdenE.findAll();
//        model.addAttribute("envios", ordenEnvios);
//        return "Logistica/enviosPage";
//    }
//    
//
//    @RequestMapping(value = "logistica/enviosV", method = RequestMethod.GET)
//    public String enviosView(Model model) {
//        return "Logistica/enviosView";
//    }
//
//    @RequestMapping(value = "logistica/operadoresV", method = RequestMethod.GET)
//    public String operadoresView(Model model) {
//        return "Logistica/operadoresView";
//    }
//
//    private GenericDao<GastosEnvio> daoGastosE;
//
//    @Autowired
//    public void setDaoGastosE(GenericDao<GastosEnvio> daoGastosE) {
//        this.daoGastosE = daoGastosE;
//        daoGastosE.setClass(GastosEnvio.class);
//    }
//
//    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.GET)
//    public String gastosEnvioNew(Model model) {
//        GastosEnvio gastosE = new GastosEnvio();
//        gastosE.setStatus(true);
//
//        model.addAttribute("gastosE", gastosE);
//        return "Logistica/gastosEnvioNew";
//    }
//
//    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.POST)
//    public String regGastosEnvio(Model model, @Valid GastosEnvio gastosE, BindingResult bindingResult) {
//        if (bindingResult.hasErrors()) {
//            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
//            System.out.println("Error: " + bindingResult.getFieldError().getField());
//            return "Logistica/gastosEnvioNew";
//        } else {
//            daoGastosE.create(gastosE);
//            return "Logistica/gastosEnvioNew";
//        }
//    }
//
//    @RequestMapping(value = "logistica/nacionalV", method = RequestMethod.GET)
//    public String nacionalView(Model model) {
//        return "Logistica/nacionalView";
//    }
//
//    @RequestMapping(value = "logistica/transporteV", method = RequestMethod.GET)
//    public String transporteView(Model model) {
//        return "Logistica/transporteView";
//    }
//
//    @RequestMapping(value = "logistica/empresa/nacionalN", method = RequestMethod.GET)
//    public String nacionalNew(Model model) {
//        return "Logistica/nacionalNew";
//    }
//
//    @RequestMapping(value = "logistica/extranjeraV", method = RequestMethod.GET)
//    public String extranjeraView(Model model) {
//        return "Logistica/extranjeraView";
//    }
////    
////    @RequestMapping(value="logistica", method=RequestMethod.GET)
////    public String index(Model model)
////    {
////        return "Logistica/indexLogistica";
////    }
////    
//
//    @RequestMapping(value = "logistica/pdf", method = RequestMethod.GET)
//    public ModelAndView indexpdf(Model model,HttpServletRequest request) throws ServletRequestBindingException 
//    {
//        String output =
//			ServletRequestUtils.getStringParameter(request, "output");
//		
//		//dummy data
//		Map<String,String> revenueData = new HashMap<String,String>();
//		revenueData.put("1/20/2010", "$100,000");
//		revenueData.put("1/21/2010", "$200,000");
//		revenueData.put("1/22/2010", "$300,000");
//		revenueData.put("1/23/2010", "$400,000");
//		revenueData.put("1/24/2010", "$500,000");
//		
//		if(output ==null || "".equals(output)){
//			//return normal view
//			return new ModelAndView("RevenueSummary","revenueData",revenueData);
//			
//		}else if("PDF".equals(output.toUpperCase())){
//			//return excel view
//			return new ModelAndView("PdfRevenueSummary","revenueData",revenueData);
//			
//		}else{
//			//return normal view
//			return new ModelAndView("RevenueSummary","revenueData",revenueData);
//			
//		}
//
//        
//    }
////    
//
//}
