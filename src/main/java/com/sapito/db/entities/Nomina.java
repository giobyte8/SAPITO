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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "nomina")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Nomina.findAll", query = "SELECT n FROM Nomina n")})
public class Nomina implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idnomina")
    private Integer idnomina;
    @Basic(optional = false)
    @NotNull
    @Column(name = "periodo")
    private int periodo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sueldototal")
    private double sueldototal;
    @JoinColumn(name = "prestacion_idprestacion", referencedColumnName = "idprestacion")
    @ManyToOne(optional = false)
    private Prestacion prestacionIdprestacion;
    @JoinColumn(name = "empleado_idempleado", referencedColumnName = "idempleado")
    @ManyToOne(optional = false)
    private Empleado empleadoIdempleado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "nominaIdnomina")
    private Collection<Sancionempleado> sancionempleadoCollection;

    public Nomina() {
    }

    public Nomina(Integer idnomina) {
        this.idnomina = idnomina;
    }

    public Nomina(Integer idnomina, int periodo, double sueldototal) {
        this.idnomina = idnomina;
        this.periodo = periodo;
        this.sueldototal = sueldototal;
    }

    public Integer getIdnomina() {
        return idnomina;
    }

    public void setIdnomina(Integer idnomina) {
        this.idnomina = idnomina;
    }

    public int getPeriodo() {
        return periodo;
    }

    public void setPeriodo(int periodo) {
        this.periodo = periodo;
    }

    public double getSueldototal() {
        return sueldototal;
    }

    public void setSueldototal(double sueldototal) {
        this.sueldototal = sueldototal;
    }

    public Prestacion getPrestacionIdprestacion() {
        return prestacionIdprestacion;
    }

    public void setPrestacionIdprestacion(Prestacion prestacionIdprestacion) {
        this.prestacionIdprestacion = prestacionIdprestacion;
    }

    public Empleado getEmpleadoIdempleado() {
        return empleadoIdempleado;
    }

    public void setEmpleadoIdempleado(Empleado empleadoIdempleado) {
        this.empleadoIdempleado = empleadoIdempleado;
    }

    @Override
    public String toString() {
        return "com.sapito.db.entities.Nomina[ idnomina=" + idnomina + " ]";
    }
    
}
