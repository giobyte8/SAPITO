/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author pablo
 */
@Entity
@Table(name = "Producto")
public class Producto implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "IdProducto")
    private long id;

    @NotNull
    @Column(name = "Descripcion")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String descripcion;

    @NotNull
    @Column(name = "Marca")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Size(min = 2, max = 10, message = "Debe tener entre 2 y 10 caracteres")
    private String marca;

    @NotNull
    @Column(name = "Categoria")
    @Pattern(regexp = RExp.letrasBasicas, message = RExpErrors.letrasBasicas)
    private String categoria;

    @NotNull
    @Column(name = "Unidad")
    @Pattern(regexp = RExp.letrasBasicas, message = RExpErrors.letrasBasicas)
    private String unidad;

    @NotNull
    @Column(name = "costo")
    @Pattern(regexp = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?", message = "Numero Decimal")
    private double costo;
    
    @NotNull
    @Column(name = "proveedor")
    private int proveedor;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public int getProveedor() {
        return proveedor;
    }

    public void setProveedor(int proveedor) {
        this.proveedor = proveedor;
    }
    
    
    
    

}
