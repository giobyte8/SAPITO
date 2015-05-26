/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
    
    @NotNull
    @Column(name = "MONTO_CONCARGOS")
    private double montoConCargos;
    
    /**
     * Can be: 'VENTA' | 'DEVOLUCION' | 'CAMBIO'? | 'VENTA-CAMBIO'
     */
    @NotNull
    @Column(name = "STATUS")
    private String status;
    
    /**
     * TODO: Could we remove this field?
     */
    @Column(name = "FACTuRADA")
    private boolean facturada;
    
    /**
     * true : Order paid with electronic transfer
     * false: Order was paid with cash
     */
    @Column(name = "DEPOSITO")
    private boolean deposito;
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @JoinColumn(name = "ID_CLIENTE")
    @ManyToOne
    @JsonBackReference
    private Cliente cliente;
    
    @OneToOne
    @JoinColumn(name = "ID_FACTURA")
    @JsonManagedReference
    private Factura factura;
    
    @OneToOne(mappedBy = "ordenVenta")
    private OrdenEnvio ordenEnvio;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ordenVenta")
    @JsonManagedReference
    private Collection<SancionCliente> sancionesCliente;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ordenVenta")
    @JsonManagedReference
    private Collection<ProductoVendido> productosVendidos;
    
    @OneToOne
    private Empleado vendedor;
    
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

    @JsonBackReference
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

    public OrdenEnvio getOrdenEnvio()
    {
        return ordenEnvio;
    }

    public void setOrdenEnvio(OrdenEnvio ordenEnvio)
    {
        this.ordenEnvio = ordenEnvio;
    }

    public Collection<SancionCliente> getSancionesCliente()
    {
        return sancionesCliente;
    }

    public void setSancionesCliente(Collection<SancionCliente> sancionesCliente)
    {
        this.sancionesCliente = sancionesCliente;
    }

    public Collection<ProductoVendido> getProductosVendidos()
    {
        return productosVendidos;
    }

    public void setProductosVendidos(Collection<ProductoVendido> productosVendidos)
    {
        this.productosVendidos = productosVendidos;
    }

    public double getMontoConCargos()
    {
        return montoConCargos;
    }

    public void setMontoConCargos(double montoConCargos)
    {
        this.montoConCargos = montoConCargos;
    }

    public String getStatus()
    {
        return status;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public Empleado getVendedor()
    {
        return vendedor;
    }

    public void setVendedor(Empleado vendedor)
    {
        this.vendedor = vendedor;
    }
    
}
