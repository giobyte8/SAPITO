/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.logistica;

import java.util.Date;

/**
 *
 * @author Emmanuel
 */
public class objEnvio {
    
    long idOrdenVenta;
    long idOrdenEnvio=0;
    Date fechaEntrega;
    String empresa;
    String tiempoEntrega;
    String nombreRecibe;
    String placasTransporte;
    String licenciaConductor;

    public objEnvio(long idOrdenVenta, long idOrdenEnvio, Date fechaEntrega, String empresa, String tiempoEntrega, String nombreRecibe, String placasTransporte, String licenciaConductor) {
        this.idOrdenVenta = idOrdenVenta;        
        this.fechaEntrega = fechaEntrega;
        this.empresa = empresa;
        
        
        this.idOrdenEnvio = idOrdenEnvio;
        this.nombreRecibe = nombreRecibe;
        this.tiempoEntrega = tiempoEntrega;
        this.placasTransporte = placasTransporte;
        this.licenciaConductor = licenciaConductor;
        
    }

    public objEnvio() {
    }
    

    public long getIdOrdenVenta() {
        return idOrdenVenta;
    }

    public void setIdOrdenVenta(long idOrdenVenta) {
        this.idOrdenVenta = idOrdenVenta;
    }

    public long getIdOrdenEnvio() {
        return idOrdenEnvio;
    }

    public void setIdOrdenEnvio(long idOrdenEnvio) {
        this.idOrdenEnvio = idOrdenEnvio;
    }

    public Date getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getTiempoEntrega() {
        return tiempoEntrega;
    }

    public void setTiempoEntrega(String tiempoEntrega) {
        this.tiempoEntrega = tiempoEntrega;
    }

    public String getNombreRecibe() {
        return nombreRecibe;
    }

    public void setNombreRecibe(String nombreRecibe) {
        this.nombreRecibe = nombreRecibe;
    }

    public String getPlacasTransporte() {
        return placasTransporte;
    }

    public void setPlacasTransporte(String placasTransporte) {
        this.placasTransporte = placasTransporte;
    }

    public String getLicenciaConductor() {
        return licenciaConductor;
    }

    public void setLicenciaConductor(String licenciaConductor) {
        this.licenciaConductor = licenciaConductor;
    }
    
    
    
    
    
}
