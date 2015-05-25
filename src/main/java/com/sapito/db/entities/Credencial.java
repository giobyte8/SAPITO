/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Jorge Muñoz
 * @author Giovanni
 */
@Entity
@Table(name = "credencial")
public class Credencial implements Serializable
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Integer id;
    
    @NotNull
    @Size(min=1, max=300)
    @Column(name = "USUARIO")
    private String usuario;
    
    @NotNull
    @Size(min=3, max=100)
    @Column(name = "CONTRASENA")
    private String contrasena;
    
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    
/** *** *** *** *** *** RELACIONES *** *** *** *** *** */
// *************************************************** // 
    
    @JoinColumn(name = "ID_EMPLEADO")
    @OneToOne
    private Empleado empleado;
    
/* ******************************************************/
/* ******************************************************/

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getUsuario()
    {
        return usuario;
    }

    public void setUsuario(String usuario)
    {
        this.usuario = usuario;
    }

    public String getContrasena()
    {
        return contrasena;
    }

    public void setContrasena(String contrasena)
    {
        this.contrasena = contrasena;
    }

    public boolean isStatus()
    {
        return status;
    }

    public void setStatus(boolean status)
    {
        this.status = status;
    }

    public Empleado getEmpleado()
    {
        return empleado;
    }

    public void setEmpleado(Empleado empleado)
    {
        this.empleado = empleado;
    }
    
}
