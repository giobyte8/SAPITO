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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
    
    
    @NotNull
    @Size(min=1, max=500, message = "Placas deben tener 7 caracteres")
    @Column(name = "PLACAS")
    private String placas;
    
    @NotNull
    @Column(name = "TIPOTRANSPORTE")
    private String tipotransporte;
    
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "DIMENSION")
    private String dimension;
    
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "COSTODIA")
    private String costoDia;
    
    @NotNull
    @Column(name = "DISPONIBLETRANSPORTE")
    private boolean disponibleTransporte;
    
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
    @JoinColumn(name="IDEMPRESA")
    @ManyToOne
    private EmpresaTransporte empresaTransporte;

    
    public String getDimension() {
        return dimension;
    }

    public String getCostoDia() {
        return costoDia;
    }

    public void setCostoDia(String costoDia) {
        this.costoDia = costoDia;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    
    public EmpresaTransporte getEmpresaTransporte() {
        return empresaTransporte;
    }

    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
        this.empresaTransporte = empresaTransporte;
    }

    
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
