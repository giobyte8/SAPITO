package com.sapito.logistica;

import com.sapito.db.entities.OrdenEnvio;
import java.util.List;
import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Cliente;
import com.sapito.db.entities.Conductor;
import com.sapito.db.entities.EmpresaTransporte;
import com.sapito.db.entities.GastosEnvio;
import com.sapito.db.entities.OrdenVenta;
import com.sapito.db.entities.ProductoVendido;
import com.sapito.db.entities.Transporte;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.LinkedList;
import java.util.Map;
import java.util.Random;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
    
    public void enviosMuestra(Model model)
    {
        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT o FROM OrdenVenta o LEFT JOIN o.ordenEnvio g");
        List<OrdenVenta> gastosE2 = query2.getResultList();
        List<objEnvio> objEnvio = new ArrayList();
        System.out.println("");
        for (int i = 0; i < gastosE2.size(); i++) {
            objEnvio objE = new objEnvio();
            objE.setIdOrdenVenta(gastosE2.get(i).getId());
            objE.setFechaEntrega(gastosE2.get(i).getFechaEntrega());
            objE.setEmpresa(gastosE2.get(i).getCliente().getEmpresa());
            if (gastosE2.get(i).getOrdenEnvio() != null) {
                objE.setIdOrdenEnvio(gastosE2.get(i).getOrdenEnvio().getId());
                objE.setNombreRecibe(gastosE2.get(i).getOrdenEnvio().getNombreRecibe());
                objE.setTiempoEntrega(gastosE2.get(i).getOrdenEnvio().getTiempoEntrega());
                objE.setPlacasTransporte(gastosE2.get(i).getOrdenEnvio().getIdTransporte().getPlacas());
                objE.setLicenciaConductor(gastosE2.get(i).getOrdenEnvio().getIdConductor().getLicencia());
            }
            objEnvio.add(objE);
        }
        OrdenEnvio ordenEnvio = new OrdenEnvio();
        model.addAttribute("ordenEnvio", ordenEnvio);
        model.addAttribute("envios", objEnvio);

        Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
        query1.setParameter("status", true);
        List<OrdenEnvio> ordenEnvios = query1.getResultList();
        model.addAttribute("envios2", ordenEnvios);        
    }

    @RequestMapping(value = "logistica/envios", method = RequestMethod.GET)
    public String envios(Model model) {

        enviosMuestra(model);
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

//--------------Envio---------------//
    private GenericDao<OrdenEnvio> daoOrdenE;
       
    @Autowired
    public void setDaoOrdenEnvio(GenericDao<OrdenEnvio> daoOrdenE) {
        this.daoOrdenE = daoOrdenE;
        daoOrdenE.setClass(OrdenEnvio.class);
    }
    
    
    private GenericDao<OrdenVenta> daoOrdenVenta;
       
    @Autowired
    public void setDaoOrdenVenta(GenericDao<OrdenVenta> daoOrdenVenta) {
        this.daoOrdenVenta = daoOrdenVenta;
        daoOrdenVenta.setClass(OrdenVenta.class);
    }
    

    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.GET)
    public String altaEnvio(Model model,HttpServletRequest request) 
    {
        System.out.println("");
        OrdenVenta oV=findOrdenVenta(request.getParameter("idventa"));        
        
        Transporte tran=asignaTransporte(oV);
        if (tran==null) {
            enviosMuestra(model);
            model.addAttribute("transporte","1");
            return "Logistica/enviosPage";
        }else
        {
            model.addAttribute("transporte",tran);        
        }
        
        Conductor con=asignaConductor();
        if (con==null) 
        {
            enviosMuestra(model);
            model.addAttribute("conductor","1");
            return "Logistica/enviosPage";
        }else
        {
            model.addAttribute("conductor",con);        
        }
        
        if (oV.getCliente().getGastosEnvio().isEmpty()) 
        {
            enviosMuestra(model);
            model.addAttribute("gastos","1");
            return "Logistica/enviosPage";
        }        
        Double gastos=Double.parseDouble(oV.getCliente().getGastosEnvio().iterator().next().getCasetas())+
             Double.parseDouble(oV.getCliente().getGastosEnvio().iterator().next().getGastosAlojamiento())+
                Double.parseDouble(oV.getCliente().getGastosEnvio().iterator().next().getGastosEnvio());                                
        
        OrdenEnvio ordenEnvio = new OrdenEnvio();
        ordenEnvio.setStatus(true);        
        
        model.addAttribute("ordenEnvio", ordenEnvio);        
        model.addAttribute("ordenVenta", oV);
        model.addAttribute("gastos",gastos);
        return "Logistica/enviosNew";
    }
    
    
    public Conductor asignaConductor()
    {
        Conductor con=null;
        Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM Conductor a where a.status=true and a.disponibleConductor=true");        
        List<Conductor> conductor = query1.getResultList();
        if (conductor.isEmpty()) {
            return null;
        }else
        {
            Random rnd = new Random();
            int nE=(int)(rnd.nextDouble() * conductor.size() + 0);        
            return con=conductor.get(nE);
        }        
    }
    
    
    
    public Transporte asignaTransporte(OrdenVenta venta)
    {
        Transporte transporteR=null;
        boolean empresa;
        empresa = venta.getCliente().getPais().equals("Mexico");
        
        Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=true and a.tipo="+empresa+"");        
        List<EmpresaTransporte> empresaTransporte = query1.getResultList();
        if (empresaTransporte.isEmpty()) 
        {
            return null;
        }else
        {
            Random rnd = new Random();
            int nE=(int)(rnd.nextDouble() * empresaTransporte.size() + 0);        
            EmpresaTransporte et=empresaTransporte.get(nE);
            
            //Collection<Transporte> tranporte=et.getTransportes();
            
            Query query11 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM Transporte a where a.status=true and a.disponibleTransporte=true and a.empresaTransporte.id="+et.getId()+"");        
            List<Transporte> transporte = query11.getResultList();
            
            
            
            if (transporte.isEmpty()) {
                return null;
            }else
            {                
                    Random rnd2 = new Random();
                    int nE2=(int)(rnd2.nextDouble() * transporte.size() + 0);        
                    return transporteR=transporte.get(nE2);                
            }
        }
                        
    }
    
    

    @RequestMapping(value = "logistica/envios/altaEnvio", method = RequestMethod.POST)
    public String regNvoE(Model model, @Valid OrdenEnvio ordenEnvio, BindingResult bindingResult,HttpServletRequest request) 
    {       
        if (bindingResult.hasErrors()) {

            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            
            
            model.addAttribute("ordenVenta",findOrdenVenta(request.getParameter("idventa")));
            model.addAttribute("gastos",request.getParameter("gastos"));
            model.addAttribute("transporte",findTransporte(request.getParameter("idtransporte"))); 
            model.addAttribute("conductor",findOperador(request.getParameter("idconductor")));        
            return "Logistica/enviosNew";
        } else 
        {
            System.out.println(request.getParameter("idtransporte"));
            System.out.println(request.getParameter("idconductor"));
            //System.out.println(request.getParameter("idventa"));
            //System.out.println(request.getParameter("gastos"));
            
            ordenEnvio.setIdConductor(findOperador(request.getParameter("idconductor")));
            ordenEnvio.setIdTransporte(findTransporte(request.getParameter("idtransporte")));
            //ordenEnvio.setOrdenVenta(findOrdenVenta(request.getParameter("idventa")));
            ordenEnvio.setStatus(true);
            
            OrdenVenta or=findOrdenVenta(request.getParameter("idventa"));
            or.setOrdenEnvio(ordenEnvio);            
            
            daoOrdenE.create(ordenEnvio);
            findOrdenEnvio(null);
            
            daoOrdenVenta.edit(or);            
            enviosMuestra(model);
            return "Logistica/enviosPage";
        }
    }

    public OrdenEnvio findOrdenEnvio(String id) {
        Query query2 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.id=:idOrdenEnvio");
        query2.setParameter("idOrdenEnvio", Long.parseLong(id));
        List<OrdenEnvio> ordenEnvio = query2.getResultList();
        return ordenEnvio.get(0);
    }
    
    public OrdenVenta findOrdenVenta(String id) {
        Query query2 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenVenta a where a.id=:idOrdenVenta");
        query2.setParameter("idOrdenVenta", Long.parseLong(id));
        List<OrdenVenta> ordenEnvio = query2.getResultList();
        return ordenEnvio.get(0);
    }
    

    /////modificaciones
    @RequestMapping(value = "logistica/envios/modificaEnvio", method = RequestMethod.POST)
    public String regModificarEnvio(Model model, @Valid OrdenEnvio ordenEnvio, BindingResult bindingResult,HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/enviosNew";
        } else {
            
            OrdenEnvio oe=findOrdenEnvio(request.getParameter("id"));
            OrdenVenta ov=findOrdenVenta(request.getParameter("idventa"));
            
            oe.setHoraEntrega(ordenEnvio.getHoraEntrega());
            oe.setNombreRecibe(ordenEnvio.getNombreRecibe());
            oe.setTiempoEntrega(ordenEnvio.getTiempoEntrega());
                    
            daoOrdenE.edit(oe);
            
            ov.setOrdenEnvio(oe);
            
            daoOrdenVenta.edit(ov);
            
            model.addAttribute("imprime", "2");/////////////checar el modifica
            enviosMuestra(model);
            return "Logistica/enviosPage";
        }
    }

    @RequestMapping(value = "logistica/envios/modificaEnvio", method = RequestMethod.GET)
    public String modificaOrdenEnvio(Model model, HttpServletRequest request) {
        System.out.println("iiiiiiiiiiiiiiiiidddddddddd" + findOrdenEnvio(request.getParameter("idOrdenEnvio")));
        OrdenEnvio ordenE = findOrdenEnvio(request.getParameter("idOrdenEnvio"));
        model.addAttribute("modificar", "1");
        model.addAttribute("ordenEnvio", ordenE);
        model.addAttribute("idventa",request.getParameter("idventa"));
        return "Logistica/enviosNew";
    }

    @RequestMapping(value = "logistica/envios/bajaEnvio", method = RequestMethod.GET)
    public String eliminarOrdenEnvio(Model model, HttpServletRequest request) {
        OrdenEnvio ordenEnvio = findOrdenEnvio(request.getParameter("idOrdenEnvio"));                
        
        Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM OrdenVenta a where a.ordenEnvio.id="+request.getParameter("idOrdenEnvio")+"");        
        List<OrdenVenta> ordenVentas = query1.getResultList();                        
        ordenVentas.get(0).setOrdenEnvio(null);
        daoOrdenVenta.edit(ordenVentas.get(0));                
        daoOrdenE.remove(ordenEnvio);
        enviosMuestra(model);        
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
    public void setDaoGastosE(GenericDao<GastosEnvio> daoGastosE) {
        this.daoGastosE = daoGastosE;
        daoGastosE.setClass(GastosEnvio.class);
    }

    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.GET)
    public String gastosEnvioN(Model model) {
        System.out.println("aaa");
        GastosEnvio gastosE = new GastosEnvio();
        gastosE.setStatus(true);

        
                                
//        
//        
//        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT c  FROM Cliente c INNER JOIN c.gastosEnvio g where g.status=true");        
//        List<Cliente> gastosE2 = query2.getResultList();
//        System.out.println("");
        

        Query query22 = daoGastosE.getEntityMgr().createQuery("SELECT c  FROM Cliente c where SIZE(c.gastosEnvio) = 0");        
        List<Cliente> gastosE22 = query22.getResultList();        
                                
        
//        Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT c.empresa, g.gastosAlojamiento FROM Cliente c, GastosEnvio g where c.gastosEnvio = g");
//        query1.setParameter("status", true);
//        List<Cliente> clientes = query1.getResultList();        
                
        
        if (gastosE22.isEmpty()) {
            
            Query query3 = daoGastosE.getEntityMgr().createQuery("SELECT a , c FROM GastosEnvio a, Cliente c where a.status=:status and a.cliente.id=c.id");
            query3.setParameter("status", true);
            List<GastosEnvio> gastosEe = query3.getResultList();                        
            model.addAttribute("gastos", gastosEe);
            model.addAttribute("lleno","1");
            return "Logistica/gastosEnvioPage";            
        }else
        {
            model.addAttribute("gastosE", gastosE);
            model.addAttribute("clientes", gastosE22);
            return "Logistica/gastosEnvioNew";
        }
        
        
    }

    @RequestMapping(value = "logistica/gastosEnvioN", method = RequestMethod.POST)
    public String regGastosEnvio(Model model, @Valid GastosEnvio gastosE, BindingResult bindingResult,HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            System.out.println("as0");
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/gastosEnvioNew";
        } else {
            System.out.println("as");
            gastosE.setStatus(true);
            gastosE.setCliente(findCliente(request.getParameter("c")));
//            System.out.println(model.asMap().get("c"+"aaaaaaaa"));
            System.out.println(request.getParameter("c"));
            
            daoGastosE.create(gastosE);            
            
            Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a , c FROM GastosEnvio a, Cliente c where a.status=:status and a.cliente.id=c.id");
            query1.setParameter("status", true);
            List<GastosEnvio> gastosEnvio = query1.getResultList();                        
            model.addAttribute("gastos", gastosEnvio);
            
            
            model.addAttribute("gastosE", gastosE);            
            return "Logistica/gastosEnvioPage";            
        }
    }
    
    
    
    @RequestMapping(value = "logistica/gastosEnvioM", method = RequestMethod.GET)
    public String gastosEnvioM(Model model,HttpServletRequest request) {
        
        GastosEnvio gastosEe =findGastosEnvio(request.getParameter("id"));                                                    
        model.addAttribute("gastosE", gastosEe);        
        model.addAttribute("modificar","1");
        return "Logistica/gastosEnvioNew";
        
        
    }

    @RequestMapping(value = "logistica/gastosEnvioM", method = RequestMethod.POST)
    public String regGastosEnvioM(Model model, @Valid GastosEnvio gastosE, BindingResult bindingResult,HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            System.out.println("as0");
            System.out.println("Invalid with: " + bindingResult.getErrorCount() + " errors");
            System.out.println("Error: " + bindingResult.getFieldError().getField());
            return "Logistica/gastosEnvioNew";
        } else {            
            GastosEnvio g=findGastosEnvio(gastosE.getId()+"");
            g.setCasetas(gastosE.getCasetas());
            g.setGastosAlojamiento(gastosE.getGastosAlojamiento());
            g.setGastosEnvio(gastosE.getGastosEnvio());
            daoGastosE.edit(g);
            
            Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a , c FROM GastosEnvio a, Cliente c where a.status=:status and a.cliente.id=c.id");
            query1.setParameter("status", true);
            List<GastosEnvio> gastosEnvio = query1.getResultList();                        
            model.addAttribute("gastos", gastosEnvio);
            
            model.addAttribute("gastosE", gastosE);            
            return "Logistica/gastosEnvioPage";
        }
    }
    
    
    
    
    
    
    
    
    @RequestMapping(value = "logistica/gastosenvio", method = RequestMethod.GET)
    public String gatosF(Model model) {
               
        System.out.println("");
        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT c , g FROM Cliente c LEFT JOIN c.gastosEnvio g");        
        List<GastosEnvio> gastosE2 = query2.getResultList();
        System.out.println("");
                
        
        Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a , c FROM GastosEnvio a, Cliente c where a.status=:status and a.cliente.id=c.id");
        query1.setParameter("status", true);
        List<GastosEnvio> gastosE = query1.getResultList();                        
        model.addAttribute("gastos", gastosE);
        return "Logistica/gastosEnvioPage";
    }

    public GastosEnvio findGastosEnvio(String id) {
        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM GastosEnvio a where a.id=:idGastosEnvio");
        query2.setParameter("idGastosEnvio", Long.parseLong(id));
        List<GastosEnvio> gastosEnvios = query2.getResultList();
        return gastosEnvios.get(0);
    }
    public Cliente findCliente(String id) {
        Query query2 = daoGastosE.getEntityMgr().createQuery("SELECT a FROM Cliente a where a.id=:id");
        query2.setParameter("id", Long.parseLong(id));
        List<Cliente> gastosEnvios = query2.getResultList();
        return gastosEnvios.get(0);
    }
    

    @RequestMapping(value = "logistica/gastosenvio/bajaGastosEnvio", method = RequestMethod.GET)
    public String eliminarGastosEnvio(Model model, HttpServletRequest request) {
        GastosEnvio gastosEnvio = findGastosEnvio(request.getParameter("idGastosEnvio"));
        //gastosEnvio.setStatus(false);        
        daoGastosE.remove(gastosEnvio);

            Query query1 = daoGastosE.getEntityMgr().createQuery("SELECT a , c FROM GastosEnvio a, Cliente c where a.status=:status and a.cliente.id=c.id");
            query1.setParameter("status", true);
            List<GastosEnvio> gastosE = query1.getResultList();                        
            model.addAttribute("gastos", gastosE);
        
        GastosEnvio g=new GastosEnvio();
        model.addAttribute("gastosEnvio", g);
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

//
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

        EmpresaTransporte eT = findEmpresaTransporte(request.getParameter("empresaid"));
        model.addAttribute("Empresa", eT);

        model.addAttribute("transporte", transporte);
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
            EmpresaTransporte eT = findEmpresaTransporte(request.getParameter("empresaid"));
            model.addAttribute("Empresa", eT);
            model.addAttribute("transporte", transporte);
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

            Transporte tR = findTransporte(transporte.getId() + "");
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
            EmpresaTransporte eT = findEmpresaTransporte(request.getParameter("empresaid"));
            model.addAttribute("Empresa", eT);
            model.addAttribute("transporte", transporte);
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
            model.addAttribute("empresaT", empresaTransporte);

            consultaEmpresa(model);
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
            model.addAttribute("empresaT", empresaTransporte);

            consultaEmpresa(model);

            return "Logistica/nacionalPage";
        }

    }
    //------------------Fin alta empresa--------------

    //---- Consulta empresa----------
    @RequestMapping(value = "logistica/empresanacional", method = RequestMethod.GET)
    public String empresaNacional(Model model, HttpServletRequest request) {
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

        EmpresaTransporte empresaTransporte = new EmpresaTransporte();
        model.addAttribute("empresaT", empresaTransporte);

        Query query1 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.status=:status");
        query1.setParameter("status", true);
        List<EmpresaTransporte> empresas = query1.getResultList();
        List<EmpresaTransporte> empresasN = new LinkedList();
        List<EmpresaTransporte> empresasE = new LinkedList();

        for (int i = 0; i < empresas.size(); i++) {
            if (empresas.get(i).isTipo() == true) {
                empresasN.add(empresas.get(i));
            } else {
                empresasE.add(empresas.get(i));
            }
        }

        model.addAttribute("empresas", empresas);
        model.addAttribute("empresasNacional", empresasN);
        model.addAttribute("empresasExtranjera", empresasE);

    }

    @RequestMapping(value = "logistica/busca", method = RequestMethod.GET)
    public @ResponseBody EmpresaTransporte extranjeraView(Model model, String id) {
        Query query2 = daoEmpresaTransporte.getEntityMgr().createQuery("SELECT a FROM EmpresaTransporte a where a.id=:idempresa");
        query2.setParameter("idempresa", Long.parseLong(id));
        List<EmpresaTransporte> empresa = query2.getResultList();
        return empresa.get(0);
    }

    @RequestMapping(value = "logistica/pdfRecpcion", method = RequestMethod.GET)
    public ModelAndView indexpdf(Model model, HttpServletRequest request) throws ServletRequestBindingException {
        String output = ServletRequestUtils.getStringParameter(request, "output");

        
        //idenvio
        
        //dummy data
        Query query1 = daoOrdenE.getEntityMgr().createQuery("SELECT a FROM OrdenEnvio a where a.status=:status");
        query1.setParameter("status", true);
        List<OrdenEnvio> ordenEnvios = query1.getResultList();

        if ("REPORTE".equals(output.toUpperCase())) {
            return new ModelAndView("PdfReporte", "revenueData",ordenEnvios);

        } else if ("RECEPCION".equals(output.toUpperCase())) {

            String output2 = ServletRequestUtils.getStringParameter(request, "idenvio");
            OrdenEnvio envios=findOrdenEnvio(output2);
            return new ModelAndView("PdfRecepcion", "revenueData",envios);

        } else {
            return new ModelAndView("Logistica/indexLogistica");

        }

    }

}
