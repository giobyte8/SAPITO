/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
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
import javax.validation.constraints.Pattern;
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
    @Size(min = 18, max = 18, message = "Deben ser 18 digitos")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "claveInterBancaria")
    private String claveInterBancaria;

    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "nombre")
    private String nombre;

    @NotNull
    @Column(name = "deber")
    private float deber;

    @NotNull
    @Column(name = "haber")
    private float haber;

    @NotNull
    @Column(name = "nacional")
    private boolean nacional;

    @JoinColumn(name = "empresa")
    @ManyToOne(optional = false)
    private Empresa empresa;

    public Integer getIdCatalogoCuenta() {
        return idCatalogoCuenta;
    }

    public void setIdCatalogoCuenta(Integer idCatalogoCuenta) {
        this.idCatalogoCuenta = idCatalogoCuenta;
    }

    public String getClaveInterBancaria() {
        return claveInterBancaria;
    }

    public void setClaveInterBancaria(String claveInterBancaria) {
        this.claveInterBancaria = claveInterBancaria;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getDeber() {
        return deber;
    }

    public void setDeber(float deber) {
        this.deber = deber;
    }

    public float getHaber() {
        return haber;
    }

    public void setHaber(float haber) {
        this.haber = haber;
    }

    public boolean getNacional() {
        return nacional;
    }

    public void setNacional(boolean nacional) {
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

    public CatalogoCuenta(Integer idCatalogoCuenta, String nombre, float deber, float haber, boolean nacional, Empresa empresa) {
        this.idCatalogoCuenta = idCatalogoCuenta;
        this.nombre = nombre;
        this.deber = deber;
        this.haber = haber;
        this.nacional = nacional;
        this.empresa = empresa;
    }

}
