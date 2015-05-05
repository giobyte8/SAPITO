/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author pablo
 */
public class Proveedor implements Serializable{
    

@Id 
@GeneratedValue(strategy = GenerationType.SEQUENCE)
@Column(name = "ID")
private long id;

@NotNull
@Size(min=1, max=500, message = "El nombre de la instancia debe tener entre 1 y 500 caracteres")
@Column(name = "EMPRESA")
private String empresa;


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
@Size(min=12, max=13, message = "El RFC debe tener 12 o 13 caracteres") 
@Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
@Column(name = "RFC") 
private String rfc; 


@Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios)
@Column(name = "TELEFONO") 
private String telefono;


@NotNull 
@Email(message = "Ingrese una direcciÃ³n de email valida")
@Column(name = "EMAIL")
private String email;


@NotNull
@Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
@Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
@Column(name = "NOMBRE")
private String nombreContacto;


@NotNull
@Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
@Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
@Column(name = "APELLIDO_PATERNO") 
private String apellidoPaternoContacto;


@Size(min=0, max=100, message = "Debe tener un mÃ¡ximo de 100 caracteres") 
@Pattern(regexp = RExp.letrasAcentuadasPuntosOrNull, message = RExpErrors.letrasAcentuadasPuntos) 
@Column(name = "APELLIDO_MATERNO") 
private String apellidoMaternoContacto; 


@Pattern(regexp = RExp.digitosEspaciosOrNull, message = RExpErrors.digitosEspacios) 
@Column(name = "TELEFONO")
private String telefono1; 


@NotNull @Column(name = "STATUS")
private boolean status;
        
        }