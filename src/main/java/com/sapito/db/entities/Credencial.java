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
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jovic
 */
@Entity
@Table(name = "credencial")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Credencial.findAll", query = "SELECT c FROM Credencial c"),
    @NamedQuery(name = "Credencial.findByIdcredencial", query = "SELECT c FROM Credencial c WHERE c.idcredencial = :idcredencial"),
    @NamedQuery(name = "Credencial.findByUsuario", query = "SELECT c FROM Credencial c WHERE c.usuario = :usuario"),
    @NamedQuery(name = "Credencial.findByContrasena", query = "SELECT c FROM Credencial c WHERE c.contrasena = :contrasena"),
    @NamedQuery(name = "Credencial.findByStatus", query = "SELECT c FROM Credencial c WHERE c.status = :status")})
public class Credencial implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idcredencial")
    private Integer idcredencial;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "usuario")
    private String usuario;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "contrasena")
    private String contrasena;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private short status;
    @JoinColumn(name = "empleado_idempleado")
    @ManyToOne(fetch = FetchType.EAGER)
    private Empleado empleadoIdempleado;

    public Credencial() {
    }

    public Credencial(Integer idcredencial) {
        this.idcredencial = idcredencial;
    }

    public Credencial(Integer idcredencial, String usuario, String contrasena, short status) {
        this.idcredencial = idcredencial;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.status = status;
    }

    public Integer getIdcredencial() {
        return idcredencial;
    }

    public void setIdcredencial(Integer idcredencial) {
        this.idcredencial = idcredencial;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public Empleado getEmpleadoIdempleado() {
        return empleadoIdempleado;
    }

    public void setEmpleadoIdempleado(Empleado empleadoIdempleado) {
        this.empleadoIdempleado = empleadoIdempleado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcredencial != null ? idcredencial.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Credencial)) {
            return false;
        }
        Credencial other = (Credencial) object;
        if ((this.idcredencial == null && other.idcredencial != null) || (this.idcredencial != null && !this.idcredencial.equals(other.idcredencial))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Credencial[ idcredencial=" + idcredencial + " ]";
    }

}
