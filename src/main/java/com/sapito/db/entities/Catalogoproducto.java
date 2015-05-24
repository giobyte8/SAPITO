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
@Table(name = "catalogoproducto")
public class Catalogoproducto implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idcatalogoproducto")
    private Integer idcatalogoproducto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "codigo")
    private String codigo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "noserie")
    private String noserie;
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
    @Basic(optional = false)
    @NotNull
    @Column(name = "costo")
    private double costo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private double precio;
    @Basic(optional = false)
    @NotNull
    @Column(name = "volumen")
    private int volumen;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "catalogoproductoIdcatalogoproducto")
    private Collection<Ordentrabajo> ordentrabajoCollection;
    @JoinColumn(name = "lineaproduccion_idlineaproduccion", referencedColumnName = "idlineaproduccion")
    @ManyToOne(optional = false)
    private Lineaproduccion lineaproduccionIdlineaproduccion;

    public Catalogoproducto() {
    }

    public Catalogoproducto(Integer idcatalogoproducto) {
        this.idcatalogoproducto = idcatalogoproducto;
    }

    public Catalogoproducto(Integer idcatalogoproducto, String codigo, String noserie, String nombre, String descripcion, double costo, double precio, int volumen) {
        this.idcatalogoproducto = idcatalogoproducto;
        this.codigo = codigo;
        this.noserie = noserie;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.costo = costo;
        this.precio = precio;
        this.volumen = volumen;
    }

    public Integer getIdcatalogoproducto() {
        return idcatalogoproducto;
    }

    public void setIdcatalogoproducto(Integer idcatalogoproducto) {
        this.idcatalogoproducto = idcatalogoproducto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNoserie() {
        return noserie;
    }

    public void setNoserie(String noserie) {
        this.noserie = noserie;
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

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getVolumen() {
        return volumen;
    }

    public void setVolumen(int volumen) {
        this.volumen = volumen;
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
        hash += (idcatalogoproducto != null ? idcatalogoproducto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Catalogoproducto)) {
            return false;
        }
        Catalogoproducto other = (Catalogoproducto) object;
        if ((this.idcatalogoproducto == null && other.idcatalogoproducto != null) || (this.idcatalogoproducto != null && !this.idcatalogoproducto.equals(other.idcatalogoproducto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Catalogoproducto[ idcatalogoproducto=" + idcatalogoproducto + " ]";
    }
    
}
