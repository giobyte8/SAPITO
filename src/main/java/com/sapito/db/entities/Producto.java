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

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author pablo
 * @author giovanni
 */
@Entity
@Table(name = "Producto")
public class Producto implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private long id;

    @NotNull
    @Column(name = "NOMBRE")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String nombreProducto;

    @NotNull
    @Column(name = "DESCRIPCION")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String descripcion;

    @NotNull
    @Column(name = "MARCA")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    @Size(min = 2, max = 10, message = "Debe tener entre 2 y 10 caracteres")
    private String marca;

    @NotNull
    @Column(name = "CATEGORIA")
    @Pattern(regexp = RExp.letrasBasicas, message = RExpErrors.letrasBasicas)
    private String categoria;

    
/* --- --- --- RELACIONES --- --- --- */
/* --- --- --- --- --- --- --- --- -- */
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "producto")
    @JsonManagedReference
    private Collection<ProductoProveedor> productoProveedor;
    
/* --- --- --- --- --- --- --- --- -- */
/* --- --- --- --- --- --- --- --- -- */

    public long getId()
    {
        return id;
    }

    public void setId(long id)
    {
        this.id = id;
    }

    public String getNombreProducto()
    {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto)
    {
        this.nombreProducto = nombreProducto;
    }

    public String getDescripcion()
    {
        return descripcion;
    }

    public void setDescripcion(String descripcion)
    {
        this.descripcion = descripcion;
    }

    public String getMarca()
    {
        return marca;
    }

    public void setMarca(String marca)
    {
        this.marca = marca;
    }

    public String getCategoria()
    {
        return categoria;
    }

    public void setCategoria(String categoria)
    {
        this.categoria = categoria;
    }

    public Collection<ProductoProveedor> getProductoProveedor()
    {
        return productoProveedor;
    }

    public void setProductoProveedor(Collection<ProductoProveedor> productoProveedor)
    {
        this.productoProveedor = productoProveedor;
    }
    
}
