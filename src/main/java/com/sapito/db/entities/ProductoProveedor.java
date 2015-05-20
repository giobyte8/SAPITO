/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "ProductoProveedor")
public class ProductoProveedor implements Serializable
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @NotNull
    @Column(name = "UNIDAD")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String unidad;

    @NotNull
    @Column(name = "COSTO")
    @Min(value = 1, message = "Debe ser mayor a uno")
    private double costo;

    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    
/* --- --- --- RELACIONES --- --- --- */
/* --- --- --- --- --- --- --- --- -- */

    @JoinColumn(name = "ID_PROVEEDOR")
    @ManyToOne
    private Proveedor proveedor;

    @JoinColumn(name = "ID_PRODUCTO")
    @ManyToOne
    @JsonIgnore
    private Producto producto;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productoProveedor")
    @JsonIgnore
    private Collection<ActivoFijo> productoRef;
    
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

    public String getUnidad()
    {
        return unidad;
    }

    public void setUnidad(String unidad)
    {
        this.unidad = unidad;
    }

    public double getCosto()
    {
        return costo;
    }

    public void setCosto(double costo)
    {
        this.costo = costo;
    }

    public boolean isStatus()
    {
        return status;
    }

    public void setStatus(boolean status)
    {
        this.status = status;
    }

    public Proveedor getProveedor()
    {
        return proveedor;
    }

    public void setProveedor(Proveedor proveedor)
    {
        this.proveedor = proveedor;
    }

    public Producto getProducto()
    {
        return producto;
    }

    public void setProducto(Producto producto)
    {
        this.producto = producto;
    }

    public Collection<ActivoFijo> getProductoRef()
    {
        return productoRef;
    }

    public void setProductoRef(Collection<ActivoFijo> productoRef)
    {
        this.productoRef = productoRef;
    }

}
