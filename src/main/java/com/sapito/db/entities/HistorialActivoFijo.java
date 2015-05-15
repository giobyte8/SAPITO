/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "HISTORIAL_ACTIVOFIJO")
public class HistorialActivoFijo implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @Column(name = "FECHA_MOVIMIENTO")
    @Temporal(TemporalType.DATE)
    private Date fechaMovimiento;
        
    
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** ***  RELACIONES  *** *** *** *** *** */

@JoinColumn(name = "ID_ACTIVO_FIJO")
@ManyToOne
private ActivoFijo activoFijo;

/*@JoinColumn(name = "ID_EMPLEADO_ANTERIOR")
@OneToOne
private Empleado empleadoAnterior;

@JoinColumn(name = "ID_EMPLEADO_ACTUAL")
@OneToOne
private Empleado empleadoActual;*/


/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the fechaMovimiento
     */
    public Date getFechaMovimiento() {
        return fechaMovimiento;
    }

    /**
     * @param fechaMovimiento the fechaMovimiento to set
     */
    public void setFechaMovimiento(Date fechaMovimiento) {
        this.fechaMovimiento = fechaMovimiento;
    }

    /**
     * @return the activofijo
     */
    public ActivoFijo getActivofijo() {
        return activoFijo;
    }

    /**
     * @param activoFijo
     */
    public void setActivofijo(ActivoFijo activoFijo) {
        this.activoFijo = activoFijo;
    }

    /**
     * @return the empleadoAnterior
     */
    /*public Empleado getEmpleadoAnterior() {
        return empleadoAnterior;
    }

    /**
     * @param empleadoAnterior the empleadoAnterior to set
     */
    /*public void setEmpleadoAnterior(Empleado empleadoAnterior) {
        this.empleadoAnterior = empleadoAnterior;
    }

    /**
     * @return the empleadoActual
     */
    /*public Empleado getEmpleadoActual() {
        return empleadoActual;
    }

    /**
     * @param empleadoActual the empleadoActual to set
     */
    /*public void setEmpleadoActual(Empleado empleadoActual) {
        this.empleadoActual = empleadoActual;
    }*/

    
}
