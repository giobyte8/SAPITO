/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.util;

/**
 *
 * @author giovanni
 */
public class RExpErrors
{
    /**
     * Letras acentuadas (Mayusculas y minusculas).
     * y espacios
     */
    public static final String letrasAcentuadas = 
            "Solo se admiten letras y espacios";
    
    /**
     * Letras acentuadas (Mayusculas y minusculas), espacios y puntos
     */
    public static final String letrasAcentuadasPuntos = 
            "Solo se admiten letras, espacios y puntos";
    
    /**
     * Solo caracteres A-Z o a-z (Al menos uno)
     */
    public static final String letrasBasicas = 
            "Solo se admiten letras no acentuadas";
    
    /**
     * Solo caracteres A-Z, a-z y 0-9 (Al menos uno)
     */
    public static final String letrasBasicasDigitos = 
            "Solo se admiten letras no acentuadas y digitos";
    
    /**
     * Almenos un número
     */
    public static final String digitos = "Solo se admiten digitos";
    
    /**
     * Primero números despues espacios
     * Usar para teléfonos y similares.
     */
    public static final String digitosEspacios = 
            "Solo se admiten digitos y espacios";
    
    /**
     * Validacion para la fecha (chequenlo antes de implementarlo)
     *
     */
    
    public static final String fecha =
            "Formato de fecha incorrecto";
}
