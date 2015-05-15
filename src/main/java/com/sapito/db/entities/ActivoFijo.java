/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
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
import javax.validation.constraints.Pattern;

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
    private Date fechaAdquisicion;  
    
    @Column(name = "TIPO_DEPRECIACION")
    private String tipoDepreciacion;
    
    @Min(value = 1, message = "Debe ser mayor de 0")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "ANOS_VIDA_UTIL")
    private String anosVidaUtil;
    
    @Column(name = "STATUS")
    private boolean status;
    
    
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** ***  RELACIONES  *** *** *** *** *** */    
    
@OneToMany(cascade = CascadeType.ALL, mappedBy = "activofijo")
private Collection<Historial> historialTraslado;

@JoinColumn(name = "ID_TIPO_ACTIVO_FIJO")
@ManyToOne
private TipoActivoFijo tipoactivofijo;

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
    public String getAnosVidaUtil() {
        return anosVidaUtil;
    }

    /**
     * @param anosVidaUtil the anosVidaUtil to set
     */
    public void setAnosVidaUtil(String anosVidaUtil) {
        this.anosVidaUtil = anosVidaUtil;
    }

    /**
     * @return the status
     */
    public boolean getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    

    /**
     * @return the historialTraslado
     */
    public Collection<Historial> getHistorialTraslado() {
        return historialTraslado;
    }

    /**
     * @param historialTraslado the historialTraslado to set
     */
    public void setHistorialTraslado(Collection<Historial> historialTraslado) {
        this.historialTraslado = historialTraslado;
    }

    /**
     * @return the tipoactivofijo
     */
    public TipoActivoFijo getTipoactivofijo() {
        return tipoactivofijo;
    }

    /**
     * @param tipoactivofijo the tipoactivofijo to set
     */
    public void setTipoactivofijo(TipoActivoFijo tipoactivofijo) {
        this.tipoactivofijo = tipoactivofijo;
    }

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
