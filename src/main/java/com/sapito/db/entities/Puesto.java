/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "puesto")
public class Puesto implements Serializable
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
    
    @NotNull
    @Column(name = "HORA_ENTRADA")
    private String horaentrada;
    
    @NotNull
    @Column(name = "HORA_FIN")
    private String horafin;
    
    @NotNull
    @Column(name = "SUELDO_BASE")
    private double sueldobase;
    
    /**
     * Can we delete this property?
     */
    @NotNull
    @Column(name = "PRESUPUESTO")
    private double presupuesto;
    
    
/** *** *** *** *** *** RELACIONES *** *** *** *** *** */
// *************************************************** //
    
    @OneToOne
    private Rol rol;
    
    @OneToMany(cascade=CascadeType.ALL, mappedBy="puesto")
    @JsonManagedReference
    private Collection<Empleado> empleados;
    
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

    public String getHoraentrada()
    {
        return horaentrada;
    }

    public void setHoraentrada(String horaentrada)
    {
        this.horaentrada = horaentrada;
    }

    public String getHorafin()
    {
        return horafin;
    }

    public void setHorafin(String horafin)
    {
        this.horafin = horafin;
    }

    public double getSueldobase()
    {
        return sueldobase;
    }

    public void setSueldobase(double sueldobase)
    {
        this.sueldobase = sueldobase;
    }

    public double getPresupuesto()
    {
        return presupuesto;
    }

    public void setPresupuesto(double presupuesto)
    {
        this.presupuesto = presupuesto;
    }

    public Collection<Empleado> getEmpleados()
    {
        return empleados;
    }

    public void setEmpleados(Collection<Empleado> empleados)
    {
        this.empleados = empleados;
    }

    public Rol getRol()
    {
        return rol;
    }

    public void setRol(Rol rol)
    {
        this.rol = rol;
    }

}