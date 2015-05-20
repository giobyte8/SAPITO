/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;

import javax.persistence.Basic;
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
@Table(name = "ProductoEnOrden")
public class ProductoComprado implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Long id;

    @Basic(optional = false)
    @NotNull
    @Column(name = "cantdad")
    private Integer cantidad;
    
  
/* --- --- --- RELACIONES --- --- --- */
/* --- --- --- --- --- --- --- --- -- */

    @JoinColumn(name = "ID_ORDEN")
    @ManyToOne
    @JsonBackReference
    private OrdenCompra ordenCompra;

    @NotNull
    @JoinColumn(name = "ID_PRODUCTOPROVEEDOR")
    @OneToOne
    @JsonManagedReference
    private ProductoProveedor productoProveedor;

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

    public Integer getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(Integer cantidad)
    {
        this.cantidad = cantidad;
    }

    public OrdenCompra getOrdenCompra()
    {
        return ordenCompra;
    }

    public void setOrdenCompra(OrdenCompra ordenCompra)
    {
        this.ordenCompra = ordenCompra;
    }

    public ProductoProveedor getProductoProveedor()
    {
        return productoProveedor;
    }

    public void setProductoProveedor(ProductoProveedor productoProveedor)
    {
        this.productoProveedor = productoProveedor;
    }

}
