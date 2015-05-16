/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author CarlosAlberto
 */
@Entity
@Table(name = "TipoMoneda")
public class TipoMoneda implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "id")
    private Integer id;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "nombreMoneda")
    private String nombreMoneda;

    @NotNull
    @Min(0)
    @Column(name = "valorenPesos")
    private double valorenPesos;

    public TipoMoneda() {
    }

    public TipoMoneda(Integer id, String nombreMoneda, double valorenPesos) {
        this.id = id;
        this.nombreMoneda = nombreMoneda;
        this.valorenPesos = valorenPesos;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreMoneda() {
        return nombreMoneda;
    }

    public void setNombreMoneda(String nombreMoneda) {
        this.nombreMoneda = nombreMoneda;
    }

    public double getValorenPesos() {
        return valorenPesos;
    }

    public void setValorenPesos(double valorenPesos) {
        this.valorenPesos = valorenPesos;
    }

}
