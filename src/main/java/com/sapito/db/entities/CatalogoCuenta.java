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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author CarlosAlberto
 */
@Entity
@Table(name = "CatalogoCuenta")
public class CatalogoCuenta implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idCatalogoCuenta")
    private Integer idCatalogoCuenta;

    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nombre")
    private String nombre;

    @NotNull
    @Column(name = "deber")
    private double deber;

    @NotNull
    @Column(name = "haber")
    private double haber;

    @NotNull
    @Column(name = "nacional")
    private short nacional;

    @JoinColumn(name = "empresa")
    @ManyToOne(optional = false)
    private Empresa empresa;

    public Integer getIdCatalogoCuenta() {
        return idCatalogoCuenta;
    }

    public void setIdCatalogoCuenta(Integer idCatalogoCuenta) {
        this.idCatalogoCuenta = idCatalogoCuenta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getDeber() {
        return deber;
    }

    public void setDeber(double deber) {
        this.deber = deber;
    }

    public double getHaber() {
        return haber;
    }

    public void setHaber(double haber) {
        this.haber = haber;
    }

    public short getNacional() {
        return nacional;
    }

    public void setNacional(short nacional) {
        this.nacional = nacional;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public CatalogoCuenta() {
    }

    public CatalogoCuenta(Integer idCatalogoCuenta, String nombre, double deber, double haber, short nacional, Empresa empresa) {
        this.idCatalogoCuenta = idCatalogoCuenta;
        this.nombre = nombre;
        this.deber = deber;
        this.haber = haber;
        this.nacional = nacional;
        this.empresa = empresa;
    }

}
