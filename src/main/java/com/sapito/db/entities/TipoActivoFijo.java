/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "TIPOACTIVOFIJO")
public class TipoActivoFijo implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @Pattern(regexp = RExp.letrasAcentuadas, message = RExpErrors.letrasAcentuadas)
    @Column(name = "NOMBRE")
    private String nombre;
    
    
    
    
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** ***  RELACIONES  *** *** *** *** *** */    
    
@OneToOne(cascade = CascadeType.ALL, mappedBy = "tipoActivoFijo")
private Collection<ActivoFijo> activoFijo;

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
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the activofijo
     */
    public Collection<ActivoFijo> getActivofijo() {
        return activoFijo;
    }

    /**
     * @param activofijo the activofijo to set
     */
    public void setActivofijo(Collection<ActivoFijo> activoFijo) {
        this.activoFijo = activoFijo;
    }
}
