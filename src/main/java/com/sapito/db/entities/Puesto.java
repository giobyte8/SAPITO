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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "puesto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Puesto.findAll", query = "SELECT p FROM Puesto p")})
public class Puesto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idpuesto")
    private Integer idpuesto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private short status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "horaentrada")
    @Temporal(TemporalType.TIMESTAMP)
    private Date horaentrada;
    @Basic(optional = false)
    @NotNull
    @Column(name = "horafin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date horafin;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sueldobase")
    private double sueldobase;
    @Basic(optional = false)
    @NotNull
    @Column(name = "presupuesto")
    private double presupuesto;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "puestoIdpuesto")
    private Collection<Empleado> empleadoCollection;
    @JoinColumn(name = "idrol", referencedColumnName = "idrol")
    @ManyToOne(fetch = FetchType.EAGER)
    private Rol idrol;

    public Puesto() {
    }

    public Puesto(Integer idpuesto) {
        this.idpuesto = idpuesto;
    }

    public Puesto(Integer idpuesto, String nombre, String descripcion, short status, double sueldobase, double presupuesto) {
        this.idpuesto = idpuesto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.status = status;
        this.sueldobase = sueldobase;
        this.presupuesto = presupuesto;
    }

    public Integer getIdpuesto() {
        return idpuesto;
    }

    public void setIdpuesto(Integer idpuesto) {
        this.idpuesto = idpuesto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getHoraentrada() {
        return horaentrada;
    }

    public void setHoraentrada(Date horaentrada) {
        this.horaentrada = horaentrada;
    }

    public Date getHorafin() {
        return horafin;
    }

    public void setHorafin(Date horafin) {
        this.horafin = horafin;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public double getSueldobase() {
        return sueldobase;
    }

    public void setSueldobase(double sueldobase) {
        this.sueldobase = sueldobase;
    }

    public double getPresupuesto() {
        return presupuesto;
    }

    public void setPresupuesto(double presupuesto) {
        this.presupuesto = presupuesto;
    }

    public Rol getIdrol() {
        return idrol;
    }

    public void setIdrol(Rol idrol) {
        this.idrol = idrol;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Puesto[ idpuesto=" + idpuesto + " ]";
    }

}
