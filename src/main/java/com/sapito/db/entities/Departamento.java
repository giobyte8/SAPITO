/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import java.io.Serializable;
import java.util.Collection;
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
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Jorge Muñoz
 */
@Entity
@Table(name = "departamento")
public class Departamento implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "iddepartamento")
    private Integer id;
    
    @NotNull
    @Column(name = "presupuesto")
    private double presupuesto;
    
    @Size(min = 1, max = 45)
    @Column(name = "nombre_departamento")
    private String nombreDepartamento;
    
    
/** *** *** *** *** *** RELACIONES *** *** *** *** *** */
// *************************************************** //    
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "departamento")
    @JsonManagedReference
    private Collection<Empleado> empleados;
    
    @JoinColumn(name = "metastopes_idmetastopes")
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private Metastopes metastopesIdmetastopes;

    @JoinColumn(name = "ID_EMPRESA")
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private Empresa empresa;
    
    @JoinColumn(name = "ID_CUENTABANCARIA")
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    private CuentaBancaria cuentabancariaIdcuentabancaria;
    
/* ******************************************************/
/* ******************************************************/    

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public double getPresupuesto()
    {
        return presupuesto;
    }

    public void setPresupuesto(double presupuesto)
    {
        this.presupuesto = presupuesto;
    }

    public String getNombreDepartamento()
    {
        return nombreDepartamento;
    }

    public void setNombreDepartamento(String nombreDepartamento)
    {
        this.nombreDepartamento = nombreDepartamento;
    }

    public Collection<Empleado> getEmpleados()
    {
        return empleados;
    }

    public void setEmpleados(Collection<Empleado> empleados)
    {
        this.empleados = empleados;
    }

    public CuentaBancaria getCuentabancariaIdcuentabancaria()
    {
        return cuentabancariaIdcuentabancaria;
    }

    public void setCuentabancariaIdcuentabancaria(CuentaBancaria cuentabancariaIdcuentabancaria)
    {
        this.cuentabancariaIdcuentabancaria = cuentabancariaIdcuentabancaria;
    }

    public Empresa getEmpresa()
    {
        return empresa;
    }

    public void setEmpresa(Empresa empresa)
    {
        this.empresa = empresa;
    }

}