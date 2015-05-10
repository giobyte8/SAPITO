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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author CarlosAlberto
 */
@Entity
@Table(name = "tipomodena")
public class Tipomodena implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idtipomodena")
    private Integer idtipomodena;
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "nombremodena")
    private String nombremodena;
    @NotNull
    @Column(name = "valorV")
    private double valorV;
    @NotNull
    @Column(name = "valorC")
    private double valorC;
    public Tipomodena() {
    }

    public Tipomodena(Integer idtipomodena) {
        this.idtipomodena = idtipomodena;
    }

    public Integer getIdtipomodena() {
        return idtipomodena;
    }

    public void setIdtipomodena(Integer idtipomodena) {
        this.idtipomodena = idtipomodena;
    }

    public String getNombremodena() {
        return nombremodena;
    }

    public void setNombremodena(String nombremodena) {
        this.nombremodena = nombremodena;
    }

    public double getValorV() {
        return valorV;
    }

    public void setValorV(double valorV) {
        this.valorV = valorV;
    }

    public double getValorC() {
        return valorC;
    }

    public void setValorC(double valorC) {
        this.valorC = valorC;
    }
}
