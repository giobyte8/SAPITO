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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "ORDEN_VENTA")
public class OrdenVenta implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private Long id;

    @Column(name = "FECHA_PEDIDO")
    @Temporal(TemporalType.DATE)
    private Date fechaPedido;
    
    @NotNull
    @Column(name = "FECHA_ENTREGA")
    @Temporal(TemporalType.DATE)
    private Date fechaEntrega;
    
    @NotNull
    @Column(name = "MONTO")
    private double monto;
    
    @Column(name = "FACTuRADA")
    private boolean facturada;
    
    @Column(name = "DEPOSITO")
    private boolean deposito;
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @JoinColumn(name = "ID_CLIENTE")
    @ManyToOne
    private Cliente cliente;
    
    @OneToOne
    @JoinColumn(name = "ORDEN_VENTA_ID")
    private Factura factura;
    
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

    public Date getFechaPedido()
    {
        return fechaPedido;
    }

    public void setFechaPedido(Date fechaPedido)
    {
        this.fechaPedido = fechaPedido;
    }

    public Date getFechaEntrega()
    {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega)
    {
        this.fechaEntrega = fechaEntrega;
    }

    public double getMonto()
    {
        return monto;
    }

    public void setMonto(double monto)
    {
        this.monto = monto;
    }

    public boolean isFacturada()
    {
        return facturada;
    }

    public void setFacturada(boolean facturada)
    {
        this.facturada = facturada;
    }

    public boolean isDeposito()
    {
        return deposito;
    }

    public void setDeposito(boolean deposito)
    {
        this.deposito = deposito;
    }

    public Cliente getCliente()
    {
        return cliente;
    }

    public void setCliente(Cliente cliente)
    {
        this.cliente = cliente;
    }

    public Factura getFactura()
    {
        return factura;
    }

    public void setFactura(Factura factura)
    {
        this.factura = factura;
    }
    
}
