/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 *
 */
@Entity
@Table(name = "inventario")
public class Inventario implements Serializable {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer id;

   
    @NotNull
    @Column(name = "nombre")
    @Size(min = 1, max = 50, message = "El nombre debe contener entre 1 y 50 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    private String nombre;

   
    @NotNull
    @Column(name = "codigoInventario")
    @Size(min = 1, max = 6, message = "El código debe contener entre 1 y 70 caracteres")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    private String codigoInventario;

  
    @Column(name = "tipoProducto")
    @NotNull
    @Size(min = 1, max = 45, message = "Debe ser Materia o Producto terminado")
    @Pattern(regexp = RExp.letrasBasicasEspacios, message = RExpErrors.letrasBasicasEspacios)
    private String tipoProducto;

    
    @Column(name = "categoria")
    @NotNull
    @Size(min = 1, max = 70, message = "La categoria de ser tener entre 1 y 70 caracteres")
    private String categoria;

    @NotNull
    @Column(name = "PRECIO_UNITARIO")
    private double precioUnitario;

    
    @Column(name = "cantidad")
    @NotNull
    private Integer cantidad;

   
    @NotNull
    @Column(name = "minimo")
    @Min(1)
    private Integer minimo;

    
    @NotNull
    @Column(name = "maximo")
    @Min(1)
    private Integer maximo;

   
    @NotNull
    @Column(name = "ubicacion")
    @Size(min = 1, max = 70, message = "La ubicación debe contener entre 1 y 70 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    private String ubicacion;

    @NotNull
    @Column(name = "fechaEntrada")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd-mm-yyyy")
    private Date fechaEntrada;

   
    @NotNull
    @Column(name = "fechaProduccion")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd-mm-yyyy")
    private Date fechaProduccion;

    @NotNull
    @Column(name = "status")
    private boolean status;

    public Inventario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCodigoInventario() {
        return codigoInventario;
    }

    public void setCodigoInventario(String codigoInventario) {
        this.codigoInventario = codigoInventario;
    }

    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Integer getMinimo() {
        return minimo;
    }

    public void setMinimo(Integer minimo) {
        this.minimo = minimo;
    }

    public Integer getMaximo() {
        return maximo;
    }

    public void setMaximo(Integer maximo) {
        this.maximo = maximo;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public Date getFechaProduccion() {
        return fechaProduccion;
    }

    public void setFechaProduccion(Date fechaProduccion) {
        this.fechaProduccion = fechaProduccion;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
