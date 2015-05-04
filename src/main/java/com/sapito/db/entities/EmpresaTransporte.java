/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
    
    @NotNull
    @Size(min=1, max=500, message = "El nombre de la empresa debe tener entre 1 y 250 caracteres")
    @Column(name = "NOMBREEMPRESA")
    private String nombreEmpresa;
    
    
    @NotNull
    @Size(min=12, max=13, message = "El RFC debe tener 12 o 13 caracteres")
    //@Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "RFC")
    private String rfc;
    
    @NotNull
    @Column(name = "TIPO")
    private boolean tipo;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    //@Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "PAIS")
    private String pais;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Column(name = "CIUDAD")
    private String ciudad;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Column(name = "CALLE")
    private String calle;
    
    
    //@Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO")
    private int numero;
    
    @OneToMany(mappedBy="empresaTransporte",cascade= CascadeType.ALL)
    private Collection<Transporte> transportes;          

    public Collection<Transporte> getTransportes() {
        return transportes;
    }

    public void setTransportes(Collection<Transporte> transportes) {
        this.transportes = transportes;
    }
    
    
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
