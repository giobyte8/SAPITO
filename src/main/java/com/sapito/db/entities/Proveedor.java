/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
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
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author pablo
 */
@Entity
@Table(name = "Proveedor")
public class Proveedor implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private long id;

    @NotNull
    @Size(min = 1, max = 500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "EMPRESA")
    private String empresa;

    @NotNull
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "PAIS")
    private String pais;

    @Column(name = "ESTADO")
    private String estado;

    @Column(name = "MUNICIPIO")
    private String municipio;

    @Column(name = "COLONIA")
    private String colonia;

    @Column(name = "CALLE")
    private String calle;

    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_INTERIOR")
    private String numeroI;

    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_EXTERIOR")
    private String numeroE;

    @Column(name = "CP")
    private int cp;

    @NotNull
    @Size(min = 12, max = 13, message = "El RFC debe tener 12 o 13 caracteres")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "RFC")
    private String rfc;

    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "TELEFONO1")
    private String telefono1;
    
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "EXTENSION1")
    private String extension1;
    
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "EXTENSION2")
    private String extension2;

    @NotNull
    @Email(message = "Ingrese una direccion de email valida")
    @Column(name = "EMAIL")
    private String email;

    @NotNull
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "NOMBRE")
    private String nombreContacto;

    @NotNull
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_PATERNO")
    private String apellidoPaternoContacto;

    @Size(min = 0, max = 100, message = "Debe tener un maximo de 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntosOrNull, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_MATERNO")
    private String apellidoMaternoContacto;

    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "TELEFONO2")
    private String telefono2;

    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proveedor")
    private Collection<ProducoProveedor> proveedorproducto;

    /**
     * @return the empresa
     */
    public String getEmpresa() {
        return empresa;
    }

    /**
     * @param empresa the empresa to set
     */
    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    /**
     * @return the pais
     */
    public String getPais() {
        return pais;
    }

    /**
     * @param pais the pais to set
     */
    public void setPais(String pais) {
        this.pais = pais;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the municipio
     */
    public String getMunicipio() {
        return municipio;
    }

    /**
     * @param municipio the municipio to set
     */
    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    /**
     * @return the colonia
     */
    public String getColonia() {
        return colonia;
    }

    /**
     * @param colonia the colonia to set
     */
    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    /**
     * @return the calle
     */
    public String getCalle() {
        return calle;
    }

    /**
     * @param calle the calle to set
     */
    public void setCalle(String calle) {
        this.calle = calle;
    }

    /**
     * @return the numeroI
     */
    public String getNumeroI() {
        return numeroI;
    }

    /**
     * @param numeroI the numeroI to set
     */
    public void setNumeroI(String numeroI) {
        this.numeroI = numeroI;
    }

    /**
     * @return the numeroE
     */
    public String getNumeroE() {
        return numeroE;
    }

    /**
     * @param numeroE the numeroE to set
     */
    public void setNumeroE(String numeroE) {
        this.numeroE = numeroE;
    }

    /**
     * @return the cp
     */
    public int getCp() {
        return cp;
    }

    /**
     * @param cp the cp to set
     */
    public void setCp(int cp) {
        this.cp = cp;
    }

    /**
     * @return the rfc
     */
    public String getRfc() {
        return rfc;
    }

    /**
     * @param rfc the rfc to set
     */
    public void setRfc(String rfc) {
        this.rfc = rfc;
    }


    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the nombreContacto
     */
    public String getNombreContacto() {
        return nombreContacto;
    }

    /**
     * @param nombreContacto the nombreContacto to set
     */
    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    /**
     * @return the apellidoPaternoContacto
     */
    public String getApellidoPaternoContacto() {
        return apellidoPaternoContacto;
    }

    /**
     * @param apellidoPaternoContacto the apellidoPaternoContacto to set
     */
    public void setApellidoPaternoContacto(String apellidoPaternoContacto) {
        this.apellidoPaternoContacto = apellidoPaternoContacto;
    }

    /**
     * @return the apellidoMaternoContacto
     */
    public String getApellidoMaternoContacto() {
        return apellidoMaternoContacto;
    }

    /**
     * @param apellidoMaternoContacto the apellidoMaternoContacto to set
     */
    public void setApellidoMaternoContacto(String apellidoMaternoContacto) {
        this.apellidoMaternoContacto = apellidoMaternoContacto;
    }

    /**
     * @return the telefono1
     */
    public String getTelefono1() {
        return telefono1;
    }

    /**
     * @param telefono1 the telefono1 to set
     */
    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the proveedorproducto
     */
    public Collection<ProducoProveedor> getProveedorproducto() {
        return proveedorproducto;
    }

    /**
     * @param proveedorproducto the proveedorproducto to set
     */
    public void setProveedorproducto(Collection<ProducoProveedor> proveedorproducto) {
        this.proveedorproducto = proveedorproducto;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * @return the telefono2
     */
    public String getTelefono2() {
        return telefono2;
    }

    /**
     * @param telefono2 the telefono2 to set
     */
    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    /**
     * @return the extension1
     */
    public String getExtension1() {
        return extension1;
    }

    /**
     * @param extension1 the extension1 to set
     */
    public void setExtension1(String extension1) {
        this.extension1 = extension1;
    }

    /**
     * @return the extension2
     */
    public String getExtension2() {
        return extension2;
    }

    /**
     * @param extension2 the extension2 to set
     */
    public void setExtension2(String extension2) {
        this.extension2 = extension2;
    }

}
