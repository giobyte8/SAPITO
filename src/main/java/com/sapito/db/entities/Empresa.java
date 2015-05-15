/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "empresa")
public class Empresa implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "rfc")
    private String rfc;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "calle")
    private String calle;
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "pais")
    private String pais;
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "estado")
    private String estado;
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "municipio")
    private String municipio;
    @Size(max = 45)
    @Column(name = "colonia")
    private String colonia;
    @Size(max = 45)
    @Column(name = "numI")
    private String numI;
    @Size(max = 45)
    @Column(name = "numI")
    private String numE;
    @Size(max = 45)
    @Column(name = "telefono")
    private String telefono;
    @Size(max = 45)
    @Email(message = "Ingrese una dirección de email valida")
    @Column(name = "email")
    private String email;
    @Size(max = 45)
    @Column(name = "capitalinicial")
    private double captalinicial;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empresa")
    private Collection<Catalogocuenta> catalogoCuenta;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empresa")
    private Collection<Cuentabancaria> cuentabancaria;

    public Empresa() {
    }

    public Empresa(Integer id) {
        this.id = id;
    }

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

    public double getCaptalinicial() {
        return captalinicial;
    }

    public void setCaptalinicial(double captalinicial) {
        this.captalinicial = captalinicial;
    }

    public Collection<Catalogocuenta> getCatalogoCuenta() {
        return catalogoCuenta;
    }

    public void setCatalogoCuenta(Collection<Catalogocuenta> catalogoCuenta) {
        this.catalogoCuenta = catalogoCuenta;
    }

    public Collection<Cuentabancaria> getCuentabancaria() {
        return cuentabancaria;
    }

    public void setCuentabancaria(Collection<Cuentabancaria> cuentabancaria) {
        this.cuentabancaria = cuentabancaria;
    }

    public Empresa(Integer id, String nombre, String rfc, String calle, String pais, String estado, String municipio, String colonia, String numI, String numE, String telefono, String email, double captalinicial, Collection<Catalogocuenta> catalogoCuenta, Collection<Cuentabancaria> cuentabancaria) {
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
        this.captalinicial = captalinicial;
        this.catalogoCuenta = catalogoCuenta;
        this.cuentabancaria = cuentabancaria;
    }
    
}
