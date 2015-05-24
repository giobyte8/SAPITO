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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jovic
 */
@Entity
@Table(name = "vacaciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vacaciones.findAll", query = "SELECT v FROM Vacaciones v"),
    @NamedQuery(name = "Vacaciones.findByIdvacaciones", query = "SELECT v FROM Vacaciones v WHERE v.idvacaciones = :idvacaciones"),
    @NamedQuery(name = "Vacaciones.findByFechaalta", query = "SELECT v FROM Vacaciones v WHERE v.fechaalta = :fechaalta"),
    @NamedQuery(name = "Vacaciones.findByFechabaja", query = "SELECT v FROM Vacaciones v WHERE v.fechabaja = :fechabaja"),
    @NamedQuery(name = "Vacaciones.findByAprobacion", query = "SELECT v FROM Vacaciones v WHERE v.aprobacion = :aprobacion")})
public class Vacaciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idvacaciones")
    private Integer idvacaciones;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaalta")
    @Temporal(TemporalType.DATE)
    private Date fechaalta;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechabaja")
    @Temporal(TemporalType.DATE)
    private Date fechabaja;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private String status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "aprobacion")
    private int aprobacion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idvacaciones")
    private Collection<Detallevacaciones> detallevacacionesCollection;

    public Vacaciones() {
    }

    public Vacaciones(Integer idvacaciones) {
        this.idvacaciones = idvacaciones;
    }

    public Vacaciones(Integer idvacaciones, Date fechaalta, Date fechabaja, int aprobacion) {
        this.idvacaciones = idvacaciones;
        this.fechaalta = fechaalta;
        this.fechabaja = fechabaja;
        this.aprobacion = aprobacion;
    }

    public Integer getIdvacaciones() {
        return idvacaciones;
    }

    public void setIdvacaciones(Integer idvacaciones) {
        this.idvacaciones = idvacaciones;
    }

    public Date getFechaalta() {
        return fechaalta;
    }

    public void setFechaalta(Date fechaalta) {
        this.fechaalta = fechaalta;
    }

    public Date getFechabaja() {
        return fechabaja;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setFechabaja(Date fechabaja) {
        this.fechabaja = fechabaja;
    }

    public int getAprobacion() {
        return aprobacion;
    }

    public void setAprobacion(int aprobacion) {
        this.aprobacion = aprobacion;
    }

    @XmlTransient
    public Collection<Detallevacaciones> getDetallevacacionesCollection() {
        return detallevacacionesCollection;
    }

    public void setDetallevacacionesCollection(Collection<Detallevacaciones> detallevacacionesCollection) {
        this.detallevacacionesCollection = detallevacacionesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idvacaciones != null ? idvacaciones.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vacaciones)) {
            return false;
        }
        Vacaciones other = (Vacaciones) object;
        if ((this.idvacaciones == null && other.idvacaciones != null) || (this.idvacaciones != null && !this.idvacaciones.equals(other.idvacaciones))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Vacaciones[ idvacaciones=" + idvacaciones + " ]";
    }

}
