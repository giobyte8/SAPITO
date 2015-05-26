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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author zgm_e_000
 */
@Entity
@Table(name = "ordentrabajo")
public class Ordentrabajo implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idordentrabajo")
    private Integer idordentrabajo;
    
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechapedido")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="dd-mm-yyyy")
    private Date fechapedido;
    
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 60)
    @Column(name = "descripcion")
    private String descripcion;
    
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaentrega")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="dd-mm-yyyy")
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
    
    
    @JoinColumn(name = "lineaproduccion_idlineaproduccion", referencedColumnName = "idlineaproduccion")
    @ManyToOne(optional = false)
    private Lineaproduccion lineaproduccionIdlineaproduccion;

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

    public Lineaproduccion getLineaproduccionIdlineaproduccion() {
        return lineaproduccionIdlineaproduccion;
    }

    public void setLineaproduccionIdlineaproduccion(Lineaproduccion lineaproduccionIdlineaproduccion) {
        this.lineaproduccionIdlineaproduccion = lineaproduccionIdlineaproduccion;
    }
    
}
