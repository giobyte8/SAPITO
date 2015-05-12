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
import javax.persistence.FetchType;
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
@Table(name = "departamento")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Departamento.findAll", query = "SELECT d FROM Departamento d")})
public class Departamento implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "iddepartamento")
    private Integer iddepartamento;
    @Basic(optional = false)
    @NotNull
    @Column(name = "presupuesto")
    private double presupuesto;
    @Size(min = 1, max = 45)
    @Column(name = "nombre_departamento")
    private String nombreDepartamento;
    @Basic(optional = false)
    @NotNull
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "departamentoIddepartamento")
    private Collection<Empleado> empleadoCollection;
    @JoinColumn(name = "metastopes_idmetastopes")
    @ManyToOne(fetch = FetchType.EAGER)
    private Metastopes metastopesIdmetastopes;
    @JoinColumn(name = "empresa_idempresa")
    @ManyToOne(fetch = FetchType.EAGER)
    private Empresa empresaIdempresa;
    @JoinColumn(name = "cuentabancaria_idcuentabancaria")
    @ManyToOne(fetch = FetchType.EAGER)
    private Cuentabancaria cuentabancariaIdcuentabancaria;

    public Departamento() {
    }

    public Departamento(Integer iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public Departamento(Integer iddepartamento, double presupuesto) {
        this.iddepartamento = iddepartamento;
        this.presupuesto = presupuesto;
    }

    public Integer getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(Integer iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public double getPresupuesto() {
        return presupuesto;
    }

    public void setPresupuesto(double presupuesto) {
        this.presupuesto = presupuesto;
    }

    public String getNombreDepartamento() {
        return nombreDepartamento;
    }

    public void setNombreDepartamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }

    @XmlTransient
    public Collection<Empleado> getEmpleadoCollection() {
        return empleadoCollection;
    }

    public void setEmpleadoCollection(Collection<Empleado> empleadoCollection) {
        this.empleadoCollection = empleadoCollection;
    }

    public Metastopes getMetastopesIdmetastopes() {
        return metastopesIdmetastopes;
    }

    public void setMetastopesIdmetastopes(Metastopes metastopesIdmetastopes) {
        this.metastopesIdmetastopes = metastopesIdmetastopes;
    }

    public Empresa getEmpresaIdempresa() {
        return empresaIdempresa;
    }

    public void setEmpresaIdempresa(Empresa empresaIdempresa) {
        this.empresaIdempresa = empresaIdempresa;
    }

    public Cuentabancaria getCuentabancariaIdcuentabancaria() {
        return cuentabancariaIdcuentabancaria;
    }

    public void setCuentabancariaIdcuentabancaria(Cuentabancaria cuentabancariaIdcuentabancaria) {
        this.cuentabancariaIdcuentabancaria = cuentabancariaIdcuentabancaria;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Departamento[ iddepartamento=" + iddepartamento + " ]";
    }

}
