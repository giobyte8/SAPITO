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
 * @author giovanni
 */
@Entity
@Table(name = "CLIENTE")
public class Cliente implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID")
    private Long id;
    
    @NotNull
    @Size(min=1, max=500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
    @Column(name = "EMPRESA")
    private String empresa;
    
    @Column(name = "SUCURSAL")
    private String sucursal;
    
    @NotNull
    @Size(min=12, max=13, message = "El RFC debe tener 12 o 13 caracteres")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "RFC")
    private String rfc;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "NOMBRE_CONTACTO")
    private String nombreContacto;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_PATERNO")
    private String apellidoPaternoContacto;
    
    @Size(min=0, max=100, message = "Debe tener un máximo de 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntosOrNull, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_MATERNO")
    private String apellidoMaternoContacto;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "PAIS")
    private String pais;
    
    @Column(name = "ESTADO")
    private String estado;
    
    @Column(name = "MUNICIPIO")
    private String municipio;
    
    @Column(name = "COLONIA")
    private String colonia;
    
    @Column(name = "CP")
    private int cp;
    
    @Column(name = "CALLE")
    private String calle;

    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_EXTERIOR")
    private String numeroE;
    
    @Pattern(regexp = RExp.letrasBasicasDigitosOrNull, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "NUMERO_INTERIOR")
    private String numeroI;
    
    @Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
    @Column(name = "TELEFONO1")
    private String telefono1;
    
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
    @Email(message = "Ingrese una dirección de email valida")
    @Column(name = "EMAIL")
    private String email;
    
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    

/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** ***  RELACIONES  *** *** *** *** *** */
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    private Collection<OrdenVenta> ordenesVenta;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    private Collection<GastosEnvio> gastosEnvio;
    
    
    
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
/** *** *** *** *** *** *** **** *** *** *** *** *** *** */
    

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
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

    public String getSucursal()
    {
        return sucursal;
    }

    public void setSucursal(String sucursal)
    {
        this.sucursal = sucursal;
    }

    public String getRfc()
    {
        return rfc;
    }

    public void setRfc(String rfc)
    {
        this.rfc = rfc;
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

    public int getCp()
    {
        return cp;
    }

    public void setCp(int cp)
    {
        this.cp = cp;
    }

    public String getCalle()
    {
        return calle;
    }

    public void setCalle(String calle)
    {
        this.calle = calle;
    }

    public String getNumeroE()
    {
        return numeroE;
    }

    public void setNumeroE(String numeroE)
    {
        this.numeroE = numeroE;
    }

    public String getNumeroI()
    {
        return numeroI;
    }

    public void setNumeroI(String numeroI)
    {
        this.numeroI = numeroI;
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

    public boolean isStatus()
    {
        return status;
    }

    public void setStatus(boolean status)
    {
        this.status = status;
    }

    public Collection<OrdenVenta> getOrdenesVenta()
    {
        return ordenesVenta;
    }

    public void setOrdenesVenta(Collection<OrdenVenta> ordenesVenta)
    {
        this.ordenesVenta = ordenesVenta;
    }

    public Collection<GastosEnvio> getGastosEnvio()
    {
        return gastosEnvio;
    }

    public void setGastosEnvio(Collection<GastosEnvio> gastosEnvio)
    {
        this.gastosEnvio = gastosEnvio;
    }
    
}
