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
@Table(name = "rol")
public class Rol implements Serializable
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Integer id;
    
    @NotNull
    @Size(min=1)
    @Column(name = "NOMBRE")
    private String nombre;
    
    @NotNull
    @Size(min=1)
    @Column(name = "DESCRIPCION")
    private String descripcion;
    
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    
/** *** *** *** *** *** RELACIONES *** *** *** *** *** */
// *************************************************** //
    
//    @JoinColumn(name = "ID_PUESTO")
//    @OneToOne
//    private Puesto puesto;
    
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

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public String getDescripcion()
    {
        return descripcion;
    }

    public void setDescripcion(String descripcion)
    {
        this.descripcion = descripcion;
    }

    public boolean isStatus()
    {
        return status;
    }

    public void setStatus(boolean status)
    {
        this.status = status;
    }

}