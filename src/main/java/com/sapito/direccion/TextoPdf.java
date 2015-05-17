/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sapito.direccion;

import com.itextpdf.text.Paragraph;
//import edu.it.toluca.is.model.Producto;
import java.util.List;

/**
 *
 * @author Rocio
 */
public class TextoPdf {
    
    private String todoTexto= "\n\n Nombre Gerente: \n\n Observaciones:";
    
    /**;;;
     * @return the todoTexto
     */
    public String getTodoTexto() {
        return todoTexto;
    }

    /**
     * @param todoTexto the todoTexto to set
     */
    public void setTodoTexto(String todoTexto) {
        this.todoTexto = todoTexto;
    }
    
}
