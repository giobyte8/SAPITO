/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jovic
 */
@Entity
@Table(name = "detallevacaciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Detallevacaciones.findAll", query = "SELECT d FROM Detallevacaciones d"),
    @NamedQuery(name = "Detallevacaciones.findByIddetallevacaciones", query = "SELECT d FROM Detallevacaciones d WHERE d.iddetallevacaciones = :iddetallevacaciones")})
public class Detallevacaciones implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "iddetallevacaciones")
    private Integer iddetallevacaciones;
    @JoinColumn(name = "idvacaciones", referencedColumnName = "idvacaciones")
    @ManyToOne(optional = false)
    private Vacaciones idvacaciones;
    @JoinColumn(name = "idempleado", referencedColumnName = "idempleado")
    @ManyToOne(optional = false)
    private Empleado idempleado;

    public Detallevacaciones() {
    }

    public Detallevacaciones(Integer iddetallevacaciones) {
        this.iddetallevacaciones = iddetallevacaciones;
    }

    public Integer getIddetallevacaciones() {
        return iddetallevacaciones;
    }

    public void setIddetallevacaciones(Integer iddetallevacaciones) {
        this.iddetallevacaciones = iddetallevacaciones;
    }

    public Vacaciones getIdvacaciones() {
        return idvacaciones;
    }

    public void setIdvacaciones(Vacaciones idvacaciones) {
        this.idvacaciones = idvacaciones;
    }

    public Empleado getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(Empleado idempleado) {
        this.idempleado = idempleado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (iddetallevacaciones != null ? iddetallevacaciones.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Detallevacaciones)) {
            return false;
        }
        Detallevacaciones other = (Detallevacaciones) object;
        if ((this.iddetallevacaciones == null && other.iddetallevacaciones != null) || (this.iddetallevacaciones != null && !this.iddetallevacaciones.equals(other.iddetallevacaciones))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Detallevacaciones[ iddetallevacaciones=" + iddetallevacaciones + " ]";
    }
    
}
