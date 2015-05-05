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
@Table(name = "sancionempleado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sancionempleado.findAll", query = "SELECT s FROM Sancionempleado s")})
public class Sancionempleado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "idsancionempleado")
    private Integer idsancionempleado;
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
    @Column(name = "monto")
    private double monto;
    @JoinColumn(name = "nomina_idnomina", referencedColumnName = "idnomina")
    @ManyToOne(optional = false)
    private Nomina nominaIdnomina;

    public Sancionempleado() {
    }

    public Sancionempleado(Integer idsancionempleado) {
        this.idsancionempleado = idsancionempleado;
    }

    public Sancionempleado(Integer idsancionempleado, String nombre, String descripcion, double monto) {
        this.idsancionempleado = idsancionempleado;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.monto = monto;
    }

    public Integer getIdsancionempleado() {
        return idsancionempleado;
    }

    public void setIdsancionempleado(Integer idsancionempleado) {
        this.idsancionempleado = idsancionempleado;
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

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public Nomina getNominaIdnomina() {
        return nominaIdnomina;
    }

    public void setNominaIdnomina(Nomina nominaIdnomina) {
        this.nominaIdnomina = nominaIdnomina;
    }


    @Override
    public String toString() {
        return "com.sapito.db.entities.Sancionempleado[ idsancionempleado=" + idsancionempleado + " ]";
    }
    
}
