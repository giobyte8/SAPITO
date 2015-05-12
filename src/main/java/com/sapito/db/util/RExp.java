/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.util;

/**
 * Regular expressions to validate entities
 * 
 * @author giovanni
 */
public class RExp
{
    /**
     * Letras acentuadas (Mayusculas y minusculas).
     * y espacios
     */
    public static final String letrasAcentuadas = "^[A-Za-zÑñÁáÉéÍíÓóÚúü/\\s/]+$";
    
    /**
     * Letras acentuadas (Mayúsculas y minusculas) o vacio.
     */
    public static final String letrasAcentuadasOrNull = "^[A-Za-zÑñÁáÉéÍíÓóÚúü/\\s/]*$";
    
    /**
     * Letras acentuadas (Mayusculas y minusculas), espacios y puntos
     */
    public static final String letrasAcentuadasPuntos = "^[A-Za-zÑñÁáÉéÍíÓóÚúü./\\s/]+$";
    
    /**
     * Letras acentuadas (Mayusculas y minusculas), espacios y puntos | vacio
     */
    public static final String letrasAcentuadasPuntosOrNull = 
            "^[A-Za-zÑñÁáÉéÍíÓóÚúü./\\s/]*$";
    
    /**
     * Letras acentuadas (Mayusculas y minusculas), digitos y espacios
     */
    public static final String letrasAcentuadasDigitosEspacios = 
            "^[A-Za-z0-9ÑÁÉÍÓÚñáéíóú/\\s/]+$";
    
    /**
     * Solo caracteres A-Z o a-z (Al menos uno)
     */
    public static final String letrasBasicas = "^[A-Za-z]+$";
    
    public static final String letrasBasicasEspacios = "^[A-Za-z/\\s/]+$";
    
    /**
     * Solo caracteres A-Z o a-z (Al menos uno) | Vacio
     */
    public static final String letrasBasicasOrNull = "^[A-Za-z]*$";
    
    /**
     * Solo caracteres A-Z, a-z y 0-9 (Al menos uno)
     */
    public static final String letrasBasicasDigitos = "^[A-Za-z0-9]+$";
    
    /**
     * Solo caracteres A-Z, a-z y 0-9 (Al menos uno) | Vacio
     */
    public static final String letrasBasicasDigitosOrNull = "^[A-Za-z0-9]*$";
    
    /**
     * Almenos un número
     */
    public static final String digitos = "^[0-9]+$";
    
    /**
     * Almenos un número | Vacio
     */
    public static final String digitosOrNull = "^[0-9]*$";
    
    /**
     * Primero números despues espacios <br>
     * Usar para teléfonos y similares.
     */
    public static final String digitosEspacios = "^([0-9]+\\s*)+$";
    
    /**
     * Primero números despues espacios <br>
     * Usar para teléfonos y similares. | Vacio
     */
    public static final String digitosEspaciosOrNull = "^([0-9]*\\s*)*$";
    
    
    /**
     * Validacion para la fecha (chequenlo antes de implementarlo)
     *
     */
    public static final String fecha = "^(0?[1-9]|[12][0-9]|3[01])[\\/](0?[1-9]|1[012])[\\/](19|20)\\d{2}$";
    
}
