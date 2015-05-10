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
@Table(name = "catalogocuenta")
public class Catalogocuenta implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idcatalogocuenta")
    private Integer idcatalogocuenta;
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nombrel")
    private String nombrel;
    @NotNull
    @Column(name = "deber")
    private double deber;
    @NotNull
    @Column(name = "haber")
    private double haber;
    @NotNull
    @Column(name = "nacional")
    private short nacional;
    @JoinColumn(name = "empresa_idempresa", referencedColumnName = "idempresa")
    @ManyToOne(optional = false)
    private Empresa empresaIdempresa;

    public Catalogocuenta() {
    }

    public Catalogocuenta(Integer idcatalogocuenta) {
        this.idcatalogocuenta = idcatalogocuenta;
    }

    public Catalogocuenta(Integer idcatalogocuenta, String nombrel, double deber, double haber, short nacional) {
        this.idcatalogocuenta = idcatalogocuenta;
        this.nombrel = nombrel;
        this.deber = deber;
        this.haber = haber;
        this.nacional = nacional;
    }

    public Integer getIdcatalogocuenta() {
        return idcatalogocuenta;
    }

    public void setIdcatalogocuenta(Integer idcatalogocuenta) {
        this.idcatalogocuenta = idcatalogocuenta;
    }

    public String getNombrel() {
        return nombrel;
    }

    public void setNombrel(String nombrel) {
        this.nombrel = nombrel;
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
}
