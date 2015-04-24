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
        return "Logistica/camiones";
    }
    
    @RequestMapping(value="logistica/empresa/altaEmpresa", method=RequestMethod.GET)
    public String altaEmpresa(Model model)
    {
        return "Logistica/nacionalNew";
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
