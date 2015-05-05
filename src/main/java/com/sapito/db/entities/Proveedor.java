/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author pablo
 */
//CREATE TABLE IF NOT EXISTS mydb.Proveedor
//( idProveedor INT NOT NULL,
//Nombre VARCHAR(45) NOT NULL, 
//Direccion VARCHAR(45) NOT NULL, 
//RFC VARCHAR(45) NOT NULL, 
//NombreContacto VARCHAR(45) NOT NULL,
//Telefono INT NOT NULL,
//TelefonoContacto INT NOT NULL, 
//Activo SMALLINT NOT NULL, 
//PRIMARY KEY (idProveedor)) ;
@Entity
@Table(name = "Proveedor")
public class Proveedor {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "IdProveedor")
    private long id;

    @Column(name = "Nombre")
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @NotNull
    private String nombre;

    @Column(name = "Direccion")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    @NotNull
    private String direccion;

    @Column(name = "RFC")
    @Pattern(regexp = "[A-Z]{4}[0-9]{6}[A-Z0-9]{3}", message = "RFC incorrecto.")
    @NotNull
    private String rfc;

    @Column(name = "NombreContacto")
    @NotNull
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Size(min = 2, max = 100, message = "Debe tener entre 2 y 100 caracteres")
    private String nombreContacto;

    @Column(name = "Telefono")
    @Pattern(regexp = RExp.digitosEspacios, message = RExpErrors.digitosEspacios)
    @NotNull
    private String telefono;

    @Column(name = "TelefonoContacto")
    @Pattern(regexp = RExp.digitosEspacios, message = RExpErrors.digitosEspacios)
    @NotNull
    private String telefonoContacto;

    @Column(name = "Activo")
    @NotNull
    private int activo;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTelefonoContacto() {
        return telefonoContacto;
    }

    public void setTelefonoContacto(String telefonoContacto) {
        this.telefonoContacto = telefonoContacto;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }

}
