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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "CuentaBancaria")
public class CuentaBancaria implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    @Column(name = "id")
    private int id;

    @NotNull
    @Size(min = 18, max = 18, message = "Deben ser 18 digitos")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "claveInterBancaria")
    private String claveInterBancaria;

    @NotNull
    @Size(min = 16, max = 16, message = "Deben ser 16 digitos")
    @Pattern(regexp = RExp.digitos, message = RExpErrors.digitos)
    @Column(name = "claveBanco")
    private String claveBanco;

    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "nombreBanco")
    private String nombreBanco;

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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClaveInterBancaria() {
        return claveInterBancaria;
    }

    public void setClaveInterBancaria(String claveInterBancaria) {
        this.claveInterBancaria = claveInterBancaria;
    }

    public String getClaveBanco() {
        return claveBanco;
    }

    public void setClaveBanco(String claveBanco) {
        this.claveBanco = claveBanco;
    }

    public String getNombreBanco() {
        return nombreBanco;
    }

    public void setNombreBanco(String nombreBanco) {
        this.nombreBanco = nombreBanco;
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

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresa) {
        this.empresa = empresa;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    public CuentaBancaria() {
    }

    public CuentaBancaria(Integer id, String claveInterBancaria, String claveBanco, String nombreBanco, float deber, float haber, Empresa empresa, Departamento departamento) {
        this.id = id;
        this.claveInterBancaria = claveInterBancaria;
        this.claveBanco = claveBanco;
        this.nombreBanco = nombreBanco;
        this.deber = deber;
        this.haber = haber;
        this.empresa = empresa;
        this.departamento = departamento;
    }

}
