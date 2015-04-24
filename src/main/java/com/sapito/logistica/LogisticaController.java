package com.sapito.logistica;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author nel
 */
@Controller
public class LogisticaController 
{
    @RequestMapping(value="logistica", method=RequestMethod.GET)
    public String index(Model model)
    {
        return "Logistica/indexLogistica";
    }
    
    @RequestMapping(value="logistica/empresanacional", method=RequestMethod.GET)
    public String empresaNacional(Model model)
    {
        return "Logistica/nacionalPage";
    }
    @RequestMapping(value="logistica/empresaextranjera", method=RequestMethod.GET)
    public String empresaExtranjera(Model model)
    {
        return "Logistica/extranjeraPage";
    }
    
    @RequestMapping(value="logistica/empresa/camiones", method=RequestMethod.GET)
    public String camiones(Model model)
    {
        return "Logistica/transportePage";
    }
    @RequestMapping(value="logistica/operadores", method=RequestMethod.GET)
    public String operadores(Model model)
    {
        return "Logistica/operadoresPage";
    }
    
    
    @RequestMapping(value="logistica/gastosenvio", method=RequestMethod.GET)
    public String gastos(Model model)
    {
        return "Logistica/gastosEnvioPage";
    }
    
    
    @RequestMapping(value="logistica/envios", method=RequestMethod.GET)
    public String envios(Model model)
    {
        return "Logistica/enviosPage";
    }
    
    @RequestMapping(value="logistica/mensajes", method=RequestMethod.GET)
    public String mensajes(Model model)
    {
        return "Logistica/mensajesView";
    }
    
    @RequestMapping(value="logistica/alertas", method=RequestMethod.GET)
    public String alertas(Model model)
    {
        return "Logistica/alertView";
    }
    
    public String hola(String hola)
    {
        System.out.println("Hola asas");
        return "Logistica/operadores";
    }
    
    @RequestMapping(value="logistica/empresa/altaEmpresa", method=RequestMethod.GET)
    public String altaEmpresa(Model model)
    {
        return "Logistica/nacionalNew";
    }
    
    @RequestMapping(value="logistica/envios/altaEnvio", method=RequestMethod.GET)
    public String altaEnvio(Model model)
    {
        return "Logistica/enviosNew";
    }
    
    @RequestMapping(value="logistica/enviosView", method=RequestMethod.GET)
    public String enviosView(Model model)
    {
        return "Logistica/enviosView";
    }
    
    @RequestMapping(value="logistica/altaOperador", method=RequestMethod.GET)
    public String altaOperador(Model model)
    {
        return "Logistica/operadoresNew";
    }
    
    @RequestMapping(value="logistica/operadoresView", method=RequestMethod.GET)
    public String operadoresView(Model model)
    {
        return "Logistica/operadoresView";
    }
    
    @RequestMapping(value="logistica/gastosEnvioNew", method=RequestMethod.GET)
    public String gastosEnvioNew(Model model)
    {
        return "Logistica/gastosEnvioNew";
    }
    
    @RequestMapping(value="logistica/nacionalView", method=RequestMethod.GET)
    public String nacionalView(Model model)
    {
        return "Logistica/nacionalView";
    }
    
    @RequestMapping(value="logistica/transporteNew", method=RequestMethod.GET)
    public String transporteNew(Model model)
    {
        return "Logistica/transporteNew";
    }
    
    @RequestMapping(value="logistica/transporteView", method=RequestMethod.GET)
    public String transporteView(Model model)
    {
        return "Logistica/transporteView";
    }
    
    @RequestMapping(value="logistica/empresa/nacionalNew", method=RequestMethod.GET)
    public String nacionalNew(Model model)
    {
        return "Logistica/nacionalNew";
    }
    
    @RequestMapping(value="logistica/extranjeraView", method=RequestMethod.GET)
    public String extranjeraView(Model model)
    {
        return "Logistica/extranjeraView";
    }
    
//    
//    @RequestMapping(value="logistica", method=RequestMethod.GET)
//    public String index(Model model)
//    {
//        return "Logistica/indexLogistica";
//    }
//    
//    @RequestMapping(value="logistica", method=RequestMethod.GET)
//    public String index(Model model)
//    {
//        return "Logistica/indexLogistica";
//    }
//    
}
