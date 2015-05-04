/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Emmanuel
 */
@Entity
@Table(name = "EMPRESATRANSPORTE")
public class EmpresaTransporte  implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @Column(name = "NOMBREEMPRESA")
    private String nombreEmpresa;
    
    @Column(name = "RFC")
    private String rfc;
    
    @Column(name = "TIPO")
    private boolean tipo;
    
    @Column(name = "PAIS")
    private String pais;
    
    @Column(name = "CIUDAD")
    private String ciudad;
    
    @Column(name = "CALLE")
    private String calle;
    
    @Column(name = "NUMERO")
    private int numero;
    
    //@OneToMany(mappedBy="empresaTransporte",cascade= CascadeType.ALL)
    //private Set<Transporte> transportes;          
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public boolean isTipo() {
        return tipo;
    }

    public void setTipo(boolean tipo) {
        this.tipo = tipo;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

//    public Set<Transporte> getTransportes() {
//        return transportes;
//    }
//
//    public void setTransportes(Set<Transporte> transportes) {
//        this.transportes = transportes;
//    }
    
     
}
