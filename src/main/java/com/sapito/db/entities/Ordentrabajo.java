/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author zgm_e_000
 */
@Entity
@Table(name = "ordentrabajo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ordentrabajo.findAll", query = "SELECT o FROM Ordentrabajo o"),
    @NamedQuery(name = "Ordentrabajo.findByIdordentrabajo", query = "SELECT o FROM Ordentrabajo o WHERE o.idordentrabajo = :idordentrabajo"),
    @NamedQuery(name = "Ordentrabajo.findByFechapedido", query = "SELECT o FROM Ordentrabajo o WHERE o.fechapedido = :fechapedido"),
    @NamedQuery(name = "Ordentrabajo.findByDescripcion", query = "SELECT o FROM Ordentrabajo o WHERE o.descripcion = :descripcion"),
    @NamedQuery(name = "Ordentrabajo.findByFechaentrega", query = "SELECT o FROM Ordentrabajo o WHERE o.fechaentrega = :fechaentrega"),
    @NamedQuery(name = "Ordentrabajo.findByPrioridad", query = "SELECT o FROM Ordentrabajo o WHERE o.prioridad = :prioridad"),
    @NamedQuery(name = "Ordentrabajo.findByComentario", query = "SELECT o FROM Ordentrabajo o WHERE o.comentario = :comentario"),
    @NamedQuery(name = "Ordentrabajo.findByAuditor", query = "SELECT o FROM Ordentrabajo o WHERE o.auditor = :auditor")})
public class Ordentrabajo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idordentrabajo")
    private Integer idordentrabajo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechapedido")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechapedido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaentrega")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaentrega;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "prioridad")
    private String prioridad;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "comentario")
    private String comentario;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "auditor")
    private String auditor;
    @JoinColumn(name = "catalogoproducto_idcatalogoproducto", referencedColumnName = "idcatalogoproducto")
    @ManyToOne(optional = false)
    private Catalogoproducto catalogoproductoIdcatalogoproducto;
    @JoinColumn(name = "estacion_idestacion", referencedColumnName = "idestacion")
    @ManyToOne(optional = false)
    private Estacion estacionIdestacion;

    public Ordentrabajo() {
    }

    public Ordentrabajo(Integer idordentrabajo) {
        this.idordentrabajo = idordentrabajo;
    }

    public Ordentrabajo(Integer idordentrabajo, Date fechapedido, String descripcion, Date fechaentrega, String prioridad, String comentario, String auditor) {
        this.idordentrabajo = idordentrabajo;
        this.fechapedido = fechapedido;
        this.descripcion = descripcion;
        this.fechaentrega = fechaentrega;
        this.prioridad = prioridad;
        this.comentario = comentario;
        this.auditor = auditor;
    }

    public Integer getIdordentrabajo() {
        return idordentrabajo;
    }

    public void setIdordentrabajo(Integer idordentrabajo) {
        this.idordentrabajo = idordentrabajo;
    }

    public Date getFechapedido() {
        return fechapedido;
    }

    public void setFechapedido(Date fechapedido) {
        this.fechapedido = fechapedido;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaentrega() {
        return fechaentrega;
    }

    public void setFechaentrega(Date fechaentrega) {
        this.fechaentrega = fechaentrega;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getAuditor() {
        return auditor;
    }

    public void setAuditor(String auditor) {
        this.auditor = auditor;
    }

    public Catalogoproducto getCatalogoproductoIdcatalogoproducto() {
        return catalogoproductoIdcatalogoproducto;
    }

    public void setCatalogoproductoIdcatalogoproducto(Catalogoproducto catalogoproductoIdcatalogoproducto) {
        this.catalogoproductoIdcatalogoproducto = catalogoproductoIdcatalogoproducto;
    }

    public Estacion getEstacionIdestacion() {
        return estacionIdestacion;
    }

    public void setEstacionIdestacion(Estacion estacionIdestacion) {
        this.estacionIdestacion = estacionIdestacion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idordentrabajo != null ? idordentrabajo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ordentrabajo)) {
            return false;
        }
        Ordentrabajo other = (Ordentrabajo) object;
        if ((this.idordentrabajo == null && other.idordentrabajo != null) || (this.idordentrabajo != null && !this.idordentrabajo.equals(other.idordentrabajo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Ordentrabajo[ idordentrabajo=" + idordentrabajo + " ]";
    }
    
}
