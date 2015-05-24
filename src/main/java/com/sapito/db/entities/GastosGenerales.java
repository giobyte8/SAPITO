/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author CarlosAlberto
 */
@Entity
@Table(name = "GastosGenerales")
public class GastosGenerales implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    @Column(name = "id")
    private Integer id;
    
    @NotNull
    @Size(min = 1, max = 60)
    @Pattern(regexp = RExp.letrasAcentuadas, message = RExpErrors.letrasAcentuadas)
    @Column(name = "nombreServicio")
    private String nombreServicio;
    
    @NotNull
    @Column(name = "costo")
    @Min(0)
    private float costo;
    
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public GastosGenerales() {
    }

    public GastosGenerales(Integer id, String nombreServicio, float costo, Date fecha) {
        this.id = id;
        this.nombreServicio = nombreServicio;
        this.costo = costo;
        this.fecha = fecha;
    }
    
}
