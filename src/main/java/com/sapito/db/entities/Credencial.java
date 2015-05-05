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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "credencial")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Credencial.findAll", query = "SELECT c FROM Credencial c")})
public class Credencial implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
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
    @Size(min = 1, max = 45)
    @Column(name = "contrase\u00f1a")
    private String contraseña;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private short status;
    @JoinColumn(name = "empleado_idempleado", referencedColumnName = "idempleado")
    @ManyToOne(optional = false)
    private Empleado empleadoIdempleado;

    public Credencial() {
    }

    public Credencial(Integer idcredencial) {
        this.idcredencial = idcredencial;
    }

    public Credencial(Integer idcredencial, String usuario, String contraseña, short status) {
        this.idcredencial = idcredencial;
        this.usuario = usuario;
        this.contraseña = contraseña;
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

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
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
    public String toString() {
        return "com.sapito.db.entities.Credencial[ idcredencial=" + idcredencial + " ]";
    }
    
}
