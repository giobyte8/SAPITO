/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jovic
 */
@Entity
@Table(name = "metastopes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Metastopes.findAll", query = "SELECT m FROM Metastopes m")})
public class Metastopes implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idmetastopes")
    private Integer idmetastopes;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "dep")
    private String dep;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechai")
    @Temporal(TemporalType.DATE)
    private Date fechai;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaf")
    @Temporal(TemporalType.DATE)
    private Date fechaf;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "status")
    private String status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "metastopesIdmetastopes")
    private Collection<Departamento> departamentoCollection;

    public Metastopes() {
    }

    public Metastopes(Integer idmetastopes) {
        this.idmetastopes = idmetastopes;
    }

    public Metastopes(Integer idmetastopes, String dep, String descripcion, Date fechai, Date fechaf, String status) {
        this.idmetastopes = idmetastopes;
        this.dep = dep;
        this.descripcion = descripcion;
        this.fechai = fechai;
        this.fechaf = fechaf;
        this.status = status;
    }

    public Integer getIdmetastopes() {
        return idmetastopes;
    }

    public void setIdmetastopes(Integer idmetastopes) {
        this.idmetastopes = idmetastopes;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechai() {
        return fechai;
    }

    public void setFechai(Date fechai) {
        this.fechai = fechai;
    }

    public Date getFechaf() {
        return fechaf;
    }

    public void setFechaf(Date fechaf) {
        this.fechaf = fechaf;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


 
}
