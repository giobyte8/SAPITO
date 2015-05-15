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
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "cuentabancaria")
public class Cuentabancaria implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @NotNull
    @Size(min = 18, max = 18, message = "Deben ser 18 digitos")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "claveinterbancaria")
    private String claveinterbancaria;
    @NotNull
    @Size(min = 16, max = 16, message = "Deben ser 16 digitos")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "clave")
    private String clave;
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombrebanco")
    private String nombrebanco;
    @NotNull
    @Column(name = "deber")
    private float deber;
    @NotNull
    @Column(name = "haber")
    private float haber;
    @JoinColumn(name = "empresa")
    @ManyToOne(optional = false)
    private Empresa empresa;
    @OneToOne
    @JoinColumn(name = "departamento")
    private Departamento departamento;
    public Cuentabancaria() {
    }

    public Cuentabancaria(Integer id, String claveinterbancaria, String clave, String nombrebanco, float deber, float haber, Empresa empresa, Departamento departamento) {
        this.id = id;
        this.claveinterbancaria = claveinterbancaria;
        this.clave = clave;
        this.nombrebanco = nombrebanco;
        this.deber = deber;
        this.haber = haber;
        this.empresa = empresa;
        this.departamento = departamento;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public Cuentabancaria(Integer idcuentabancaria) {
        this.id = idcuentabancaria;
    }
    public String getClaveinterbancaria() {
        return claveinterbancaria;
    }

    public void setClaveinterbancaria(String claveinterbancaria) {
        this.claveinterbancaria = claveinterbancaria;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombrebanco() {
        return nombrebanco;
    }

    public void setNombrebanco(String nombrebanco) {
        this.nombrebanco = nombrebanco;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresaIdempresa) {
        this.empresa = empresaIdempresa;
    }

    public Cuentabancaria(Integer id, String claveinterbancaria, String clave, String nombrebanco, float deber, float haber, Empresa empresa) {
        this.id = id;
        this.claveinterbancaria = claveinterbancaria;
        this.clave = clave;
        this.nombrebanco = nombrebanco;
        this.deber = deber;
        this.haber = haber;
        this.empresa = empresa;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
}
