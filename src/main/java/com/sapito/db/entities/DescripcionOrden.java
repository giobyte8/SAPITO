/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author chef
 */
@Entity
@Table(name = "DescripcionOrden")
public class DescripcionOrden implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "cantdad")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    private Integer cantidad;
    
    @NotNull
    @Column(name = "unidad")
    private boolean unidad;
    
    @NotNull
    @Column(name = "preciounitario")
    @Pattern(regexp = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?", message = "Numero Decimal")
    private double preciounitario;
    
    @NotNull
    @Column(name = "importe")
    @Pattern(regexp = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?", message = "Numero Decimal")
    private double importe;
    
    @OneToOne
    @JoinColumn(name = "ID_ORDEN")
    private OrdenCompra ordendcompra;
    
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
     * @return the preciounitario
     */
    public double getPreciounitario() {
        return preciounitario;
    }

    /**
     * @param preciounitario the preciounitario to set
     */
    public void setPreciounitario(double preciounitario) {
        this.preciounitario = preciounitario;
    }

    /**
     * @return the importe
     */
    public double getImporte() {
        return importe;
    }

    /**
     * @param importe the importe to set
     */
    public void setImporte(double importe) {
        this.importe = importe;
    }

    /**
     * @return the unidad
     */
    public boolean isUnidad() {
        return unidad;
    }

    /**
     * @param unidad the unidad to set
     */
    public void setUnidad(boolean unidad) {
        this.unidad = unidad;
    }

    /**
     * @return the ordendcompra
     */
    public OrdenCompra getOrdendcompra() {
        return ordendcompra;
    }

    /**
     * @param ordendcompra the ordendcompra to set
     */
    public void setOrdendcompra(OrdenCompra ordendcompra) {
        this.ordendcompra = ordendcompra;
    }
}
