/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author Jorge Muñoz
 * @author Giovanni
 */
@Entity
@Table(name = "empleado")
public class Empleado implements Serializable
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idempleado")
    private Integer idempleado;
    
    @NotNull
    @Pattern(regexp=RExp.letrasAcentuadasPuntos, message=RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "NOMBRE")
    private String nombre;
    
    @NotNull
    @Pattern(regexp=RExp.letrasAcentuadasPuntos, message=RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "apaterno")
    private String apaterno;
    
    @Pattern(regexp=RExp.letrasAcentuadasPuntos, message=RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "amaterno")
    private String amaterno;
    
    @Size(min=12, max=45, message="El RFC debe tener 12 o 13 caracteres")
    @Pattern(regexp=RExp.letrasBasicasDigitosOrNull, message=RExpErrors.letrasBasicasDigitos)
    @Column(name = "rfc")
    private String rfc;
    
    @Column(name = "calle")
    private String calle;
    
    @Column(name = "colonia")
    private String colonia;
    
    @NotNull
    @Column(name = "estado")
    private String estado;
    
    @NotNull
    @Column(name = "municipio")
    private String municipio;
    
    @NotNull
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="dd-mm-yyyy")
    private Date fechaNacimiento;
    
    @Size(max = 45)
    @Column(name = "sexo")
    private String sexo;
    
    @Size(max = 45)
    @Column(name = "estado_civil")
    private String estadoCivil;
    
    @Pattern(regexp=RExp.digitosOrNull, message=RExpErrors.digitos)
    @Column(name = "num_seguro")
    private String numSeguro;
    
    @Pattern(regexp=RExp.digitosEspaciosOrNull, message=RExpErrors.digitosEspacios)
    @Column(name = "telefono")
    private String telefono;
    
    @Column(name = "codigo_postal")
    private Integer codigoPostal;
    
    @Email
    @Column(name = "email")
    private String email;
    
    
/** *** *** *** *** *** RELACIONES *** *** *** *** *** */
// *************************************************** //    
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoIdempleado")
    @JsonIgnore
    private Collection<Capacitacion> capacitacionCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleadoIdempleado")
    @JsonIgnore
    private Collection<Nomina> nominaCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "nombreref")
    @JsonIgnore
    private Collection<HistorialActivoFijo> empleadoActual;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "nombreref2")
    @JsonIgnore
    private Collection<HistorialActivoFijo> empleadoAnterior;
    
// *************************************************** //
    
    @JoinColumn(name = "ID_PUESTO")
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private Puesto puesto;

    @JoinColumn(name = "ID_DEPARTAMENTO")
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonBackReference
    private Departamento departamento;
    
    @JoinColumn(name = "ID_CREDENCIAL")
    @OneToOne
    private Credencial credencial;

/* ******************************************************/
/* ******************************************************/

    public Integer getIdempleado()
    {
        return idempleado;
    }

    public void setIdempleado(Integer idempleado)
    {
        this.idempleado = idempleado;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nomre)
    {
        this.nombre = nomre;
    }

    public String getApaterno()
    {
        return apaterno;
    }

    public void setApaterno(String apaterno)
    {
        this.apaterno = apaterno;
    }

    public String getAmaterno()
    {
        return amaterno;
    }

    public void setAmaterno(String amaterno)
    {
        this.amaterno = amaterno;
    }

    public String getRfc()
    {
        return rfc;
    }

    public void setRfc(String rfc)
    {
        this.rfc = rfc;
    }

    public String getCalle()
    {
        return calle;
    }

    public void setCalle(String calle)
    {
        this.calle = calle;
    }

    public String getColonia()
    {
        return colonia;
    }

    public void setColonia(String colonia)
    {
        this.colonia = colonia;
    }

    public String getEstado()
    {
        return estado;
    }

    public void setEstado(String estado)
    {
        this.estado = estado;
    }

    public String getMunicipio()
    {
        return municipio;
    }

    public void setMunicipio(String municipio)
    {
        this.municipio = municipio;
    }

    public Date getFechaNacimiento()
    {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento)
    {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo()
    {
        return sexo;
    }

    public void setSexo(String sexo)
    {
        this.sexo = sexo;
    }

    public String getEstadoCivil()
    {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil)
    {
        this.estadoCivil = estadoCivil;
    }

    public String getNumSeguro()
    {
        return numSeguro;
    }

    public void setNumSeguro(String numSeguro)
    {
        this.numSeguro = numSeguro;
    }

    public String getTelefono()
    {
        return telefono;
    }

    public void setTelefono(String telefono)
    {
        this.telefono = telefono;
    }

    public Integer getCodigoPostal()
    {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal)
    {
        this.codigoPostal = codigoPostal;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public Collection<Capacitacion> getCapacitacionCollection()
    {
        return capacitacionCollection;
    }

    public void setCapacitacionCollection(Collection<Capacitacion> capacitacionCollection)
    {
        this.capacitacionCollection = capacitacionCollection;
    }

    public Collection<Nomina> getNominaCollection()
    {
        return nominaCollection;
    }

    public void setNominaCollection(Collection<Nomina> nominaCollection)
    {
        this.nominaCollection = nominaCollection;
    }

    public Collection<HistorialActivoFijo> getEmpleadoActual()
    {
        return empleadoActual;
    }

    public void setEmpleadoActual(Collection<HistorialActivoFijo> empleadoActual)
    {
        this.empleadoActual = empleadoActual;
    }

    public Collection<HistorialActivoFijo> getEmpleadoAnterior()
    {
        return empleadoAnterior;
    }

    public void setEmpleadoAnterior(Collection<HistorialActivoFijo> empleadoAnterior)
    {
        this.empleadoAnterior = empleadoAnterior;
    }

    public Departamento getDepartamento()
    {
        return departamento;
    }

    public void setDepartamento(Departamento departamento)
    {
        this.departamento = departamento;
    }

    public Credencial getCredencial()
    {
        return credencial;
    }

    public void setCredencial(Credencial credencial)
    {
        this.credencial = credencial;
    }

    public Puesto getPuesto()
    {
        return puesto;
    }

    public void setPuesto(Puesto puesto)
    {
        this.puesto = puesto;
    }

}