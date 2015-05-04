/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Emmanuel
 */
@Entity
@Table(name = "TRANSPORTE")
public class Transporte implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    
    @Column(name = "PLACAS")
    private String placas;
    
    @Column(name = "TIPOTRANSPORTE")
    private String tipotransporte;
    
    @Column(name = "DIMENSION")
    private String dimension;
    
    @Column(name = "DISPONIBLETRANSPORTE")
    private boolean disponibleTransporte;
    
//    @ManyToOne
//    @JoinColumn(name="IDEMPRESA")
//    private EmpresaTransporte empresaTransporte;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPlacas() {
        return placas;
    }

    public void setPlacas(String placas) {
        this.placas = placas;
    }

    public String getTipotransporte() {
        return tipotransporte;
    }

    public void setTipotransporte(String tipotransporte) {
        this.tipotransporte = tipotransporte;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }

    public boolean isDisponibleTransporte() {
        return disponibleTransporte;
    }

    public void setDisponibleTransporte(boolean disponibleTransporte) {
        this.disponibleTransporte = disponibleTransporte;
    }

//    public EmpresaTransporte getEmpresaTransporte() {
//        return empresaTransporte;
//    }
//
//    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
//        this.empresaTransporte = empresaTransporte;
//    }
    
    
    
}
