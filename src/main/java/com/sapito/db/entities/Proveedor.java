/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
 * @author giovanni
 */
@Entity
@Table(name = "Proveedor")
public class Proveedor implements Serializable
{

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

    @NotNull
    @Size(min = 1, max = 500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "ESTADO")
    private String estado;

    @NotNull
    @Size(min = 1, max = 500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "MUNICIPIO")
    private String municipio;

    @NotNull
    @Size(min = 1, max = 500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "COLONIA")
    private String colonia;

    @NotNull
    @Size(min = 1, max = 500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "CALLE")
    private String calle;

    @NotNull
    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_INTERIOR")
    private String numeroI;

    @NotNull
    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_EXTERIOR")
    private String numeroE;

    @NotNull
    @Column(name = "CP")
    private int cp;

    @NotNull
    @Size(min = 12, max = 13, message = "El RFC debe tener 12 o 13 caracteres")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "RFC")
    private String rfc;

    @NotNull
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "TELEFONO1")
    private String telefono1;

    @NotNull
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "EXTENSION1")
    private String extension1;
    
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "TELEFONO2")
    private String telefono2;

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

    @NotNull
    @Size(min = 0, max = 100, message = "Debe tener un maximo de 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasDigitosEspacios, message = RExpErrors.letrasAcentuadasDigitosEspacios)
    @Column(name = "APELLIDO_MATERNO")
    private String apellidoMaternoContacto;

    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    
/* --- --- --- RELACIONES --- --- --- */
/* --- --- --- --- --- --- --- --- -- */

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proveedor")
    @JsonIgnore
    private Collection<ProductoProveedor> productoProveedor;    
    
/* --- --- --- --- --- --- --- --- -- */
/* --- --- --- --- --- --- --- --- -- */

    public long getId()
    {
        return id;
    }

    public void setId(long id)
    {
        this.id = id;
    }

    public String getEmpresa()
    {
        return empresa;
    }

    public void setEmpresa(String empresa)
    {
        this.empresa = empresa;
    }

    public String getPais()
    {
        return pais;
    }

    public void setPais(String pais)
    {
        this.pais = pais;
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

    public String getColonia()
    {
        return colonia;
    }

    public void setColonia(String colonia)
    {
        this.colonia = colonia;
    }

    public String getCalle()
    {
        return calle;
    }

    public void setCalle(String calle)
    {
        this.calle = calle;
    }

    public String getNumeroI()
    {
        return numeroI;
    }

    public void setNumeroI(String numeroI)
    {
        this.numeroI = numeroI;
    }

    public String getNumeroE()
    {
        return numeroE;
    }

    public void setNumeroE(String numeroE)
    {
        this.numeroE = numeroE;
    }

    public int getCp()
    {
        return cp;
    }

    public void setCp(int cp)
    {
        this.cp = cp;
    }

    public String getRfc()
    {
        return rfc;
    }

    public void setRfc(String rfc)
    {
        this.rfc = rfc;
    }

    public String getTelefono1()
    {
        return telefono1;
    }

    public void setTelefono1(String telefono1)
    {
        this.telefono1 = telefono1;
    }

    public String getExtension1()
    {
        return extension1;
    }

    public void setExtension1(String extension1)
    {
        this.extension1 = extension1;
    }

    public String getTelefono2()
    {
        return telefono2;
    }

    public void setTelefono2(String telefono2)
    {
        this.telefono2 = telefono2;
    }

    public String getExtension2()
    {
        return extension2;
    }

    public void setExtension2(String extension2)
    {
        this.extension2 = extension2;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getNombreContacto()
    {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto)
    {
        this.nombreContacto = nombreContacto;
    }

    public String getApellidoPaternoContacto()
    {
        return apellidoPaternoContacto;
    }

    public void setApellidoPaternoContacto(String apellidoPaternoContacto)
    {
        this.apellidoPaternoContacto = apellidoPaternoContacto;
    }

    public String getApellidoMaternoContacto()
    {
        return apellidoMaternoContacto;
    }

    public void setApellidoMaternoContacto(String apellidoMaternoContacto)
    {
        this.apellidoMaternoContacto = apellidoMaternoContacto;
    }

    public boolean isStatus()
    {
        return status;
    }

    public void setStatus(boolean status)
    {
        this.status = status;
    }

    public Collection<ProductoProveedor> getProductoProveedor()
    {
        return productoProveedor;
    }

    public void setProductoProveedor(Collection<ProductoProveedor> productoProveedor)
    {
        this.productoProveedor = productoProveedor;
    }

}
