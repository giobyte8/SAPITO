/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author giovanni
 */
@Entity
@Table(name = "ACTIVOFIJO")
public class ActivoFijo implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @Column(name = "FECHA_ADQUISICION")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd-mm-yyyy")
    private Date fechaAdquisicion;
    
    @Column(name = "TIPO_DEPRECIACION")
    private String tipoDepreciacion;
    
    @Min(value = 1, message = "Debe ser mayor de 0")
    @Column(name = "ANOS_VIDA_UTIL")
    private int anosVidaUtil;
    
    @Column(name = "STATUS")
    private String status;
    
    
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** ***  RELACIONES  *** *** *** *** *** */    
    
@OneToMany(cascade = CascadeType.ALL, mappedBy = "activoFijo")
private Collection<HistorialActivoFijo> historialTraslado;

@JoinColumn(name = "ID_TIPO_ACTIVO_FIJO")
@ManyToOne
private TipoActivoFijo tipoActivoFijo;

@JoinColumn(name = "ID_PRODUCTO")
@ManyToOne
private Producto producto;


/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the fechaAdquisicion
     */
    public Date getFechaAdquisicion() {
        return fechaAdquisicion;
    }

    /**
     * @param fechaAdquisicion the fechaAdquisicion to set
     */
    public void setFechaAdquisicion(Date fechaAdquisicion) {
        this.fechaAdquisicion = fechaAdquisicion;
    }
   
    /**
     * @return the tipoDepreciacion
     */
    public String getTipoDepreciacion() {
        return tipoDepreciacion;
    }

    /**
     * @param tipoDepreciacion the tipoDepreciacion to set
     */
    public void setTipoDepreciacion(String tipoDepreciacion) {
        this.tipoDepreciacion = tipoDepreciacion;
    }

    /**
     * @return the anosVidaUtil
     */
    public int getAnosVidaUtil() {
        return anosVidaUtil;
    }

    /**
     * @param anosVidaUtil the anosVidaUtil to set
     */
    public void setAnosVidaUtil(int anosVidaUtil) {
        this.anosVidaUtil = anosVidaUtil;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    

    /**
     * @return the historialTraslado
     */
    public Collection<HistorialActivoFijo> getHistorialTraslado() {
        return historialTraslado;
    }

    /**
     * @param historialTraslado the historialTraslado to set
     */
    public void setHistorialTraslado(Collection<HistorialActivoFijo> historialTraslado) {
        this.historialTraslado = historialTraslado;
    }

    /**
     * @return the tipoactivofijo
     */
    public TipoActivoFijo getTipoactivofijo() {
        return tipoActivoFijo;
    }

    /**
     * @param tipoActivoFijo the tipoactivofijo to set
     */
    public void setTipoactivofijo(TipoActivoFijo tipoActivoFijo) {
        this.tipoActivoFijo = tipoActivoFijo;
    }

//    /**
//     * @return the producto
//     */
//    public Producto getProducto() {
//        return producto;
//    }
//
//    /**
//     * @param producto the producto to set
//     */
//    public void setProducto(Producto producto) {
//        this.producto = producto;
//    }

    /**
     * @return the producto
     */
    public Producto getProducto() {
        return producto;
    }

    /**
     * @param producto the producto to set
     */
    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    

}
