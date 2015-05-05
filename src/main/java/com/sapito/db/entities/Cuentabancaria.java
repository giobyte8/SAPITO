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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "cuentabancaria")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cuentabancaria.findAll", query = "SELECT c FROM Cuentabancaria c")})
public class Cuentabancaria implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idcuentabancaria")
    private Integer idcuentabancaria;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "claveinterbancaria")
    private String claveinterbancaria;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "clave")
    private String clave;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombrebanco")
    private String nombrebanco;
    @Basic(optional = false)
    @NotNull
    @Column(name = "saldo")
    private double saldo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tasainteres")
    private double tasainteres;
    @JoinColumn(name = "empresa_idempresa", referencedColumnName = "idempresa")
    @ManyToOne(optional = false)
    private Empresa empresaIdempresa;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cuentabancariaIdcuentabancaria")
    private Collection<Departamento> departamentoCollection;

    public Cuentabancaria() {
    }

    public Cuentabancaria(Integer idcuentabancaria) {
        this.idcuentabancaria = idcuentabancaria;
    }

    public Cuentabancaria(Integer idcuentabancaria, String claveinterbancaria, String clave, String nombrebanco, double saldo, double tasainteres) {
        this.idcuentabancaria = idcuentabancaria;
        this.claveinterbancaria = claveinterbancaria;
        this.clave = clave;
        this.nombrebanco = nombrebanco;
        this.saldo = saldo;
        this.tasainteres = tasainteres;
    }

    public Integer getIdcuentabancaria() {
        return idcuentabancaria;
    }

    public void setIdcuentabancaria(Integer idcuentabancaria) {
        this.idcuentabancaria = idcuentabancaria;
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

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public double getTasainteres() {
        return tasainteres;
    }

    public void setTasainteres(double tasainteres) {
        this.tasainteres = tasainteres;
    }

    public Empresa getEmpresaIdempresa() {
        return empresaIdempresa;
    }

    public void setEmpresaIdempresa(Empresa empresaIdempresa) {
        this.empresaIdempresa = empresaIdempresa;
    }


}
