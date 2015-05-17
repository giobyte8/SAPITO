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
 * @author zgm_e_000
 */
@Entity
@Table(name = "estacion")
public class Estacion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idestacion")
    private Integer idestacion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tiempo")
    private int tiempo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "descripcion")
    private String descripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "estacionIdestacion")
    private Collection<Ordentrabajo> ordentrabajoCollection;
    @JoinColumn(name = "lineaproduccion_idlineaproduccion", referencedColumnName = "idlineaproduccion")
    @ManyToOne(optional = false)
    private Lineaproduccion lineaproduccionIdlineaproduccion;

    public Estacion() {
    }

    public Estacion(Integer idestacion) {
        this.idestacion = idestacion;
    }

    public Estacion(Integer idestacion, int tiempo, String nombre, String descripcion) {
        this.idestacion = idestacion;
        this.tiempo = tiempo;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Integer getIdestacion() {
        return idestacion;
    }

    public void setIdestacion(Integer idestacion) {
        this.idestacion = idestacion;
    }

    public int getTiempo() {
        return tiempo;
    }

    public void setTiempo(int tiempo) {
        this.tiempo = tiempo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @XmlTransient
    public Collection<Ordentrabajo> getOrdentrabajoCollection() {
        return ordentrabajoCollection;
    }

    public void setOrdentrabajoCollection(Collection<Ordentrabajo> ordentrabajoCollection) {
        this.ordentrabajoCollection = ordentrabajoCollection;
    }

    public Lineaproduccion getLineaproduccionIdlineaproduccion() {
        return lineaproduccionIdlineaproduccion;
    }

    public void setLineaproduccionIdlineaproduccion(Lineaproduccion lineaproduccionIdlineaproduccion) {
        this.lineaproduccionIdlineaproduccion = lineaproduccionIdlineaproduccion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idestacion != null ? idestacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Estacion)) {
            return false;
        }
        Estacion other = (Estacion) object;
        if ((this.idestacion == null && other.idestacion != null) || (this.idestacion != null && !this.idestacion.equals(other.idestacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Estacion[ idestacion=" + idestacion + " ]";
    }
    
}
