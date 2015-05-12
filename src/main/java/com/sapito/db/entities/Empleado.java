/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.math.BigInteger;
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
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "empleado")
@XmlRootElement
@NamedQueries(
        {
            @NamedQuery(name = "Empleado.findAll", query = "SELECT e FROM Empleado e"),
            @NamedQuery(name = "Empleado.findByIdempleado", query = "SELECT e FROM Empleado e WHERE e.idempleado = :idempleado"),
            @NamedQuery(name = "Empleado.findByNomre", query = "SELECT e FROM Empleado e WHERE e.nomre = :nomre"),
            @NamedQuery(name = "Empleado.findByApaterno", query = "SELECT e FROM Empleado e WHERE e.apaterno = :apaterno"),
            @NamedQuery(name = "Empleado.findByAmaterno", query = "SELECT e FROM Empleado e WHERE e.amaterno = :amaterno"),
            @NamedQuery(name = "Empleado.findByRfc", query = "SELECT e FROM Empleado e WHERE e.rfc = :rfc"),
            @NamedQuery(name = "Empleado.findByCalle", query = "SELECT e FROM Empleado e WHERE e.calle = :calle"),
            @NamedQuery(name = "Empleado.findByColonia", query = "SELECT e FROM Empleado e WHERE e.colonia = :colonia"),
            @NamedQuery(name = "Empleado.findByEmail", query = "SELECT e FROM Empleado e WHERE e.email = :email")
        })
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
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "estado")
    private String estado;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "municipio")
    private String municipio;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    @Size(max = 45)
    @Column(name = "sexo")
    private String sexo;
    @Size(max = 45)
    @Column(name = "estado_civil")
    private String estadoCivil;
    @Column(name = "num_seguro")
    private BigInteger numSeguro;
    @Column(name = "telefono")
    private BigInteger telefono;
    @Column(name = "codigo_postal")
    private BigInteger codigoPostal;
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

//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoActual")
//    private Collection<Historial> empleadoActual;
//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoAnterior")
//    private Collection<Historial> empleadoAnterior;
    @JoinColumn(name = "puesto_idpuesto", referencedColumnName = "idpuesto")
    @ManyToOne(fetch = FetchType.EAGER)
    private Puesto puestoIdpuesto;

    @JoinColumn(name = "departamento_iddepartamento", referencedColumnName = "iddepartamento")
    @ManyToOne(fetch = FetchType.EAGER)
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
//    public Collection<Historial> getEmpleadoActual() {
////        return empleadoActual;
//    }
    /**
     * @param empleadoActual the empleadoActual to set
     */
    public void setEmpleadoActual(Collection<Historial> empleadoActual) {
        //      this.empleadoActual = empleadoActual;
    }
    
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public BigInteger getNumSeguro() {
        return numSeguro;
    }

    public void setNumSeguro(BigInteger numSeguro) {
        this.numSeguro = numSeguro;
    }

    public BigInteger getTelefono() {
        return telefono;
    }

    public void setTelefono(BigInteger telefono) {
        this.telefono = telefono;
    }

    public BigInteger getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(BigInteger codigoPostal) {
        this.codigoPostal = codigoPostal;
    }


//    /**
//     * @return the empleadoAnterior
//     */
//    public Collection<Historial> getEmpleadoAnterior()
//    {
//        return empleadoAnterior;
//    }
//
//    /**
//     * @param empleadoAnterior the empleadoAnterior to set
//     */
//    public void setEmpleadoAnterior(Collection<Historial> empleadoAnterior)
//    {
//        this.empleadoAnterior = empleadoAnterior;
//    }
}
