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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author CarlosAlberto
 */
@Entity
@Table(name = "tipomodena")
public class Tipomoneda implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "nombremodena")
    private String nombremodena;
    @NotNull
    @Column(name = "valorenpesos")
    private double valorenpesos;
    public Tipomoneda() {
    }

    public Tipomoneda(Integer id) {
        this.id = id;
    }

    public Integer getIdtipomodena() {
        return id;
    }

    public void setIdtipomodena(Integer idtipomodena) {
        this.id = idtipomodena;
    }

    public String getNombremodena() {
        return nombremodena;
    }

    public void setNombremodena(String nombremodena) {
        this.nombremodena = nombremodena;
    }

    public double getvalorenpesos() {
        return valorenpesos;
    }

    public void setvalorenpesos(double valorenpesos) {
        this.valorenpesos = valorenpesos;
    }

    public Tipomoneda(Integer id, String nombremodena, double valorenpesos) {
        this.id = id;
        this.nombremodena = nombremodena;
        this.valorenpesos = valorenpesos;
    }
    
}
