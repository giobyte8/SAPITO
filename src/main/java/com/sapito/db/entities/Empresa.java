/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "Empresa")
public class Empresa implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "id")
    private Integer id;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "nombre")
    private String nombre;

    @NotNull
    @Size(min = 1, max = 13)
    @Column(name = "rfc")
    private String rfc;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "calle")
    private String calle;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "pais")
    private String pais;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "estado")
    private String estado;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "municipio")
    private String municipio;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "colonia")
    private String colonia;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "numI")
    private String numI;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "numE")
    private String numE;

    @NotNull
    @Size(min = 10, max =12 )
    @Column(name = "telefono")
    private String telefono;

    @NotNull
    @Size(min = 1, max = 60)
    @Email(message = "Ingrese una dirección de email valida")
    @Column(name = "email")
    private String email;
    
    @NotNull
    @Column(name = "capitalInicial")
    private float captalInicial;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empresa")
    private Collection<CatalogoCuenta> catalogoCuenta;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empresa")
    private Collection<CuentaBancaria> cuentaBancaria;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getNumI() {
        return numI;
    }

    public void setNumI(String numI) {
        this.numI = numI;
    }

    public String getNumE() {
        return numE;
    }

    public void setNumE(String numE) {
        this.numE = numE;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public float getCaptalInicial() {
        return captalInicial;
    }

    public void setCaptalInicial(float captalInicial) {
        this.captalInicial = captalInicial;
    }

    public Collection<CatalogoCuenta> getCatalogoCuenta() {
        return catalogoCuenta;
    }

    public void setCatalogoCuenta(Collection<CatalogoCuenta> catalogoCuenta) {
        this.catalogoCuenta = catalogoCuenta;
    }

    public Collection<CuentaBancaria> getCuentabancaria() {
        return cuentaBancaria;
    }

    public void setCuentabancaria(Collection<CuentaBancaria> cuentabancaria) {
        this.cuentaBancaria = cuentabancaria;
    }

    public Empresa() {
    }

    public Empresa(Integer id, String nombre, String rfc, String calle, String pais, String estado, String municipio, String colonia, String numI, String numE, String telefono, String email, float captalInicial, Collection<CatalogoCuenta> catalogoCuenta, Collection<CuentaBancaria> cuentabancaria) {
        this.id = id;
        this.nombre = nombre;
        this.rfc = rfc;
        this.calle = calle;
        this.pais = pais;
        this.estado = estado;
        this.municipio = municipio;
        this.colonia = colonia;
        this.numI = numI;
        this.numE = numE;
        this.telefono = telefono;
        this.email = email;
        this.captalInicial = captalInicial;
        this.catalogoCuenta = catalogoCuenta;
        this.cuentaBancaria = cuentabancaria;
    }

}
