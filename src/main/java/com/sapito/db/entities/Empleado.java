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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "empleado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empleado.findAll", query = "SELECT e FROM Empleado e")})
public class Empleado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idempleado")
    private Integer idempleado;
    @Size(max = 45)
    @Column(name = "nomre")
    private String nomre;
    @Size(max = 45)
    @Column(name = "apaterno")
    private String apaterno;
    @Size(max = 45)
    @Column(name = "amaterno")
    private String amaterno;
    @Size(max = 45)
    @Column(name = "rfc")
    private String rfc;
    @Size(max = 45)
    @Column(name = "calle")
    private String calle;
    @Size(max = 45)
    @Column(name = "colonia")
    private String colonia;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "email")
    private String email;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoIdempleado")
    private Collection<Capacitacion> capacitacionCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoIdempleado")
    private Collection<Nomina> nominaCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoIdempleado")
    private Collection<Credencial> credencialCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoActual")
    private Collection<Historial> empleadoActual;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoAnterior")
    private Collection<Historial> empleadoAnterior;
    @JoinColumn(name = "puesto_idpuesto", referencedColumnName = "idpuesto")
    @ManyToOne(optional = false)
    private Puesto puestoIdpuesto;
    @JoinColumn(name = "departamento_iddepartamento", referencedColumnName = "iddepartamento")
    @ManyToOne(optional = false)
    private Departamento departamentoIddepartamento;

    public Empleado() {
    }

    public Empleado(Integer idempleado) {
        this.idempleado = idempleado;
    }

    public Integer getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(Integer idempleado) {
        this.idempleado = idempleado;
    }

    public String getNomre() {
        return nomre;
    }

    public void setNomre(String nomre) {
        this.nomre = nomre;
    }

    public String getApaterno() {
        return apaterno;
    }

    public void setApaterno(String apaterno) {
        this.apaterno = apaterno;
    }

    public String getAmaterno() {
        return amaterno;
    }

    public void setAmaterno(String amaterno) {
        this.amaterno = amaterno;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @XmlTransient
    public Collection<Capacitacion> getCapacitacionCollection() {
        return capacitacionCollection;
    }

    public void setCapacitacionCollection(Collection<Capacitacion> capacitacionCollection) {
        this.capacitacionCollection = capacitacionCollection;
    }

    @XmlTransient
    public Collection<Nomina> getNominaCollection() {
        return nominaCollection;
    }

    public void setNominaCollection(Collection<Nomina> nominaCollection) {
        this.nominaCollection = nominaCollection;
    }

    @XmlTransient
    public Collection<Credencial> getCredencialCollection() {
        return credencialCollection;
    }

    public void setCredencialCollection(Collection<Credencial> credencialCollection) {
        this.credencialCollection = credencialCollection;
    }

    public Puesto getPuestoIdpuesto() {
        return puestoIdpuesto;
    }

    public void setPuestoIdpuesto(Puesto puestoIdpuesto) {
        this.puestoIdpuesto = puestoIdpuesto;
    }

    public Departamento getDepartamentoIddepartamento() {
        return departamentoIddepartamento;
    }

    public void setDepartamentoIddepartamento(Departamento departamentoIddepartamento) {
        this.departamentoIddepartamento = departamentoIddepartamento;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Empleado[ idempleado=" + idempleado + " ]";
    }

    /**
     * @return the empleadoActual
     */
    public Collection<Historial> getEmpleadoActual() {
        return empleadoActual;
    }

    /**
     * @param empleadoActual the empleadoActual to set
     */
    public void setEmpleadoActual(Collection<Historial> empleadoActual) {
        this.empleadoActual = empleadoActual;
    }

    /**
     * @return the empleadoAnterior
     */
    public Collection<Historial> getEmpleadoAnterior() {
        return empleadoAnterior;
    }

    /**
     * @param empleadoAnterior the empleadoAnterior to set
     */
    public void setEmpleadoAnterior(Collection<Historial> empleadoAnterior) {
        this.empleadoAnterior = empleadoAnterior;
    }
    
}
