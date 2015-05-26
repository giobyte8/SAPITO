/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.config;

import com.sapito.db.dao.GenericDao;
import com.sapito.db.entities.Credencial;
import com.sapito.db.entities.Rol;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jca.support.SimpleBootstrapContext;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author giovanni
 */
@Service("userDetailsService")
public class UserDetailsServer implements UserDetailsService
{

    private GenericDao<Credencial> daoCredencial;

    @Autowired
    public void setDaoCredencial(GenericDao<Credencial> daoCredencial)
    {
        this.daoCredencial = daoCredencial;
        daoCredencial.setClass(Credencial.class);
    }

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException
    {
        List<Credencial> credenciales = daoCredencial
                .findBySpecificField("usuario", string, "equal", null, null);
        if(credenciales.size() > 0)
        {
            Credencial credencial = credenciales.get(0);
            
            // Obtener roles
            List<GrantedAuthority> authorities
                    = buildUserAuthority(credencial);

            // Nombre del usuario
            String nombre = credencial.getEmpleado().getNombre() + 
                    credencial.getEmpleado().getApaterno();
            
            return buildUserForAuthentication(credencial, authorities, nombre);
        }
        
        return null;
    }

    private User buildUserForAuthentication(Credencial credencial, 
            List<GrantedAuthority> authorities, String nombre)
    {
        User user = new User(credencial.getUsuario(), credencial.getContrasena(), authorities);
        return user;
    }

    private List<GrantedAuthority> buildUserAuthority(Credencial credencial)
    {
        List<GrantedAuthority> result = new ArrayList<>();
        result.add(new SimpleGrantedAuthority(credencial.getEmpleado().getPuesto().getRol().getNombre()));
        
        switch(credencial.getEmpleado().getDepartamento().getNombreDepartamento())
        {
            case "Ventas":
                result.add(new SimpleGrantedAuthority("VENTAS"));
                break;
            case "Recursos humnaos":
                result.add(new SimpleGrantedAuthority("RH"));
                break;
        }
        
        System.out.println("Sus roles:");
        for(GrantedAuthority ga : result)
        {
            System.out.println("Rol: " + ga.getAuthority());
        }

        return result;
    }

}
