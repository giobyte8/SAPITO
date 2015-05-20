/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "OrdenCompra")
public class OrdenCompra implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @NotNull
    @Column(name = "FECHA_PEDIDO")
    @Temporal(TemporalType.DATE)
    private java.util.Date fechaPedido;
    
    @Column(name = "FECHA_ENTREGA")
    @Temporal(TemporalType.DATE)
    private java.util.Date fechaEntrega;
    
    @NotNull
    @Column(name = "COSTO_TOTAL")
    private double costoTotal;

    @NotNull
    @Size(min=1, max=500, message = "Seleccione una forma de pago")
    @Column(name = "FORMA_PAGO")
    private String formaPago;
    
    @NotNull
    @Column(name = "APROBADA")
    private boolean aprobada;
    
    
/* --- --- --- RELACIONES --- --- --- */
/* --- --- --- --- --- --- --- --- -- */
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ordenCompra")
    @JsonManagedReference
    private Collection<ProductoComprado> productosEnOrden;
    
/* --- --- --- --- --- --- --- --- -- */
/* --- --- --- --- --- --- --- --- -- */

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public java.util.Date getFechaPedido()
    {
        return fechaPedido;
    }

    public void setFechaPedido(java.util.Date fechaPedido)
    {
        this.fechaPedido = fechaPedido;
    }

    public java.util.Date getFechaEntrega()
    {
        return fechaEntrega;
    }

    public void setFechaEntrega(java.util.Date fechaEntrega)
    {
        this.fechaEntrega = fechaEntrega;
    }

    public double getCostoTotal()
    {
        return costoTotal;
    }

    public void setCostoTotal(double costoTotal)
    {
        this.costoTotal = costoTotal;
    }

    public String getFormaPago()
    {
        return formaPago;
    }

    public void setFormaPago(String formaPago)
    {
        this.formaPago = formaPago;
    }

    public boolean isAprobada()
    {
        return aprobada;
    }

    public void setAprobada(boolean aprobada)
    {
        this.aprobada = aprobada;
    }

    public Collection<ProductoComprado> getProductosEnOrden()
    {
        return productosEnOrden;
    }

    public void setProductosEnOrden(Collection<ProductoComprado> productosEnOrden)
    {
        this.productosEnOrden = productosEnOrden;
    }

}