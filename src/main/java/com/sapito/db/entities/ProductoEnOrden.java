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
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import javax.persistence.Table;
import javax.validation.constraints.NotNull;


/**
 *
 * @author chef
 */
@Entity
@Table(name = "ProductoEnOrden")
public class ProductoEnOrden implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Basic(optional = false)
    @NotNull
    @Column(name = "cantdad")
    private Integer cantidad;

    @JoinColumn(name = "ID_ORDEN")
    @ManyToOne
    @JsonBackReference
    private OrdenCompra ordenCompra;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productoComprado")
    @JsonManagedReference
    private Collection<ProductoProveedor> productoOrdenProveedor;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the cantidad
     */
    public Integer getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the ordendcompra
     */
    public OrdenCompra getOrdendcompra() {
        return getOrdenCompra();
    }

    /**
     * @param ordendcompra the ordendcompra to set
     */
    public void setOrdendcompra(OrdenCompra ordendcompra) {
        this.setOrdenCompra(ordendcompra);
    }

    public OrdenCompra getOrdenCompra()
    {
        return ordenCompra;
    }

    public void setOrdenCompra(OrdenCompra ordenCompra)
    {
        this.ordenCompra = ordenCompra;
    }

    public Collection<ProductoProveedor> getProductoOrdenProveedor()
    {
        return productoOrdenProveedor;
    }

    public void setProductoOrdenProveedor(Collection<ProductoProveedor> productoOrdenProveedor)
    {
        this.productoOrdenProveedor = productoOrdenProveedor;
    }
}
