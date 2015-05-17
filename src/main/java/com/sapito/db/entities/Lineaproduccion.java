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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author zgm_e_000
 */
@Entity
@Table(name = "lineaproduccion")
public class Lineaproduccion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idlineaproduccion")
    private Integer idlineaproduccion;
    
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre")
    private String nombre;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "tiempo")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="dd-mm-yyyy")
    private Date tiempo;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "activo")
    private String activo;
    
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "responsa")
    private String responsa;
    
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "lineaproduccionIdlineaproduccion")
    private Collection<Catalogoproducto> catalogoproductoCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "lineaproduccionIdlineaproduccion")
    private Collection<Estacion> estacionCollection;

    public Lineaproduccion() {
    }

    public Lineaproduccion(Integer idlineaproduccion) {
        this.idlineaproduccion = idlineaproduccion;
    }

    public Lineaproduccion(Integer idlineaproduccion, String nombre, Date tiempo, String activo, String responsa) {
        this.idlineaproduccion = idlineaproduccion;
        this.nombre = nombre;
        this.tiempo = tiempo;
        this.activo = activo;
        this.responsa = responsa;
    }

    public Integer getIdlineaproduccion() {
        return idlineaproduccion;
    }

    public void setIdlineaproduccion(Integer idlineaproduccion) {
        this.idlineaproduccion = idlineaproduccion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getTiempo() {
        return tiempo;
    }

    public void setTiempo(Date tiempo) {
        this.tiempo = tiempo;
    }

    public String getActivo() {
        return activo;
    }

    public void setActivo(String activo) {
        this.activo = activo;
    }

    public String getResponsa() {
        return responsa;
    }

    public void setResponsa(String responsa) {
        this.responsa = responsa;
    }

    @XmlTransient
    public Collection<Catalogoproducto> getCatalogoproductoCollection() {
        return catalogoproductoCollection;
    }

    public void setCatalogoproductoCollection(Collection<Catalogoproducto> catalogoproductoCollection) {
        this.catalogoproductoCollection = catalogoproductoCollection;
    }

    @XmlTransient
    public Collection<Estacion> getEstacionCollection() {
        return estacionCollection;
    }

    public void setEstacionCollection(Collection<Estacion> estacionCollection) {
        this.estacionCollection = estacionCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idlineaproduccion != null ? idlineaproduccion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lineaproduccion)) {
            return false;
        }
        Lineaproduccion other = (Lineaproduccion) object;
        if ((this.idlineaproduccion == null && other.idlineaproduccion != null) || (this.idlineaproduccion != null && !this.idlineaproduccion.equals(other.idlineaproduccion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Lineaproduccion[ idlineaproduccion=" + idlineaproduccion + " ]";
    }
    
}
