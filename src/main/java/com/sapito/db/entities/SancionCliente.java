/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "SANCION_CLIENTE")
public class SancionCliente implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Long id;

    @NotNull
    @Column(name = "MONTO")
    private double monto;
    
    @Column(name = "DESCRIPCION")
    private String descripcion;
    
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @JoinColumn(name = "ID_ORDEN_VENTA")
    @ManyToOne
    @JsonBackReference
    private OrdenVenta ordenVenta;
    
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** *** *** *** *** *** *** *** *** ***/

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public double getMonto()
    {
        return monto;
    }

    public void setMonto(double monto)
    {
        this.monto = monto;
    }

    public String getDescripcion()
    {
        return descripcion;
    }

    public void setDescripcion(String descripcion)
    {
        this.descripcion = descripcion;
    }

    public OrdenVenta getOrdenVenta()
    {
        return ordenVenta;
    }

    public void setOrdenVenta(OrdenVenta ordenVenta)
    {
        this.ordenVenta = ordenVenta;
    }
    
}
