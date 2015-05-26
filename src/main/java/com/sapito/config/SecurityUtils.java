/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.config;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Credencial;
import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Utility methods for access authentication info
 * @author giovanni
 */
public class SecurityUtils
{
    
    /**
     * Check if logged user has authority: 'JEFE_DEPARTAMENTO_ROL' | 
     * 'JEFE_OPERATIVO_ROL' | 'EMPLEADO_BASE_ROL'
     * 
     * @return 'JEFE_DEPARTAMENTO_ROL' | 'JEFE_OPERATIVO_ROL' | 
     * 'EMPLEADO_BASE_ROL' | null if none found
     */
    public String getAuthority()
    {
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)
            SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        
        for(GrantedAuthority authoritie : authorities)
        {
            switch(authoritie.getAuthority())
            {
                case "JEFE_DEPARTAMENTO_ROL":
                    return authoritie.getAuthority();
                case "JEFE_OPERATIVO_ROL":
                    return authoritie.getAuthority();
                case "EMPLEADO_BASE_ROL":
                    return authoritie.getAuthority();
                default: 
                    //System.out.println("SAPO Rol not found!");
            }
        }
        
        return null;
    }
    
    /**
     * Gets the username of logged user
     * @return logged user's username
     */
    public String getUsername()
    {
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }
    
    /**
     * Get the user's first name and last name
     * @param username
     * @param daoCredencial
     * @return User's name and last name
     */
    public String getNombre(String username, GenericDao<Credencial> daoCredencial)
    {
        System.out.println("Buscando nombre para: " + username);
        List<Credencial> credenciales = daoCredencial
                .findBySpecificField("usuario", username, "equal", null, null);
        if(credenciales != null)
        {
            String nombre = credenciales.get(0).getEmpleado().getNombre() + " " +
                    credenciales.get(0).getEmpleado().getApaterno();
            return nombre;
        }
        
        return " *** *** ";
    }
    
}
