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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "FACTURA")
public class Factura implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private Long id;
    
    @Column(name = "SUBTOTAL")
    private double subTotal;
    
    @Column(name = "TOTAL")
    private double total;
    
    @Column(name = "IVA")
    private double IVA;
    
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @OneToOne(mappedBy = "factura")
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

    public double getSubTotal()
    {
        return subTotal;
    }

    public void setSubTotal(double subTotal)
    {
        this.subTotal = subTotal;
    }

    public double getTotal()
    {
        return total;
    }

    public void setTotal(double total)
    {
        this.total = total;
    }

    public double getIVA()
    {
        return IVA;
    }

    public void setIVA(double IVA)
    {
        this.IVA = IVA;
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
