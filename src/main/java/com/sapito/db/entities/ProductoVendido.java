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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "PRODUCTO_VENDIDO")
public class ProductoVendido implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Long id;
    
    @NotNull
    @Column(name = "CANTIDAD")
    private int cantidad;
    

/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @JoinColumn(name = "ID_ORDEN_VENTA")
    @ManyToOne
    @JsonBackReference
    private OrdenVenta ordenVenta;
    
    @OneToOne
    private Inventario productoInventario;

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

    public int getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(int cantidad)
    {
        this.cantidad = cantidad;
    }

    public OrdenVenta getOrdenVenta()
    {
        return ordenVenta;
    }

    public void setOrdenVenta(OrdenVenta ordenVenta)
    {
        this.ordenVenta = ordenVenta;
    }

    public Inventario getProductoInventario()
    {
        return productoInventario;
    }

    public void setProductoInventario(Inventario productoInventario)
    {
        this.productoInventario = productoInventario;
    }

}
