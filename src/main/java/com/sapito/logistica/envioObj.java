/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.logistica;

import com.sapito.db.entities.OrdenEnvio;
import com.sapito.db.entities.OrdenVenta;

/**
 *
 * @author Emmanuel
 */
public class  envioObj extends Object
{
    OrdenEnvio ordenEnvio;
    OrdenVenta ordenVenta;

    public envioObj() {
    }

    public OrdenEnvio getOrdenEnvio() {
        return ordenEnvio;
    }

    public void setOrdenEnvio(OrdenEnvio ordenEnvio) {
        this.ordenEnvio = ordenEnvio;
    }

    public OrdenVenta getOrdenVenta() {
        return ordenVenta;
    }

    public void setOrdenVenta(OrdenVenta ordenVenta) {
        this.ordenVenta = ordenVenta;
    }
    
}
