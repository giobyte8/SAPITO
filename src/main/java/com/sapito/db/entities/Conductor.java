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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author Emmanuel
 */
@Entity
@Table(name = "CONDUCTOR")
public class Conductor implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "NOMBRE")
    private String nombre;
    
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_PATERNO")
    private String apellidoPaterno;
    
    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "APELLIDO_MATERNO")
    private String apellidoMaterno;
    
    @NotNull
    @Column(name = "LICENCIA")
    private String licencia;
    
    @NotNull
    @Pattern(regexp = RExp.letrasBasicasDigitos, message = RExpErrors.letrasBasicasDigitos)
    @Column(name = "PAGODIA")
    private String pagoDia;
    
    @NotNull
    @Column(name = "DISPONIBLECONDUCTOR")
    private boolean disponibleConductor;
    @NotNull
    @Column(name = "STATUS")
    private boolean status;

    @OneToOne(mappedBy = "idConductor")
    private OrdenEnvio ordenEnvio;

    public OrdenEnvio getOrdenEnvio() {
        return ordenEnvio;
    }

    public void setOrdenEnvio(OrdenEnvio ordenEnvio) {
        this.ordenEnvio = ordenEnvio;
    }
    
    
    
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    public String getPagoDia() {
        return pagoDia;
    }

    public void setPagoDia(String pagoDia) {
        this.pagoDia = pagoDia;
    }
    
    /**
     * @return the id
     */
    public long getId() {
        return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }
    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellidoPaterno
     */
    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    /**
     * @param apellidoPaterno the apellidoPaterno to set
     */
    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    /**
     * @return the apellidoMaterno
     */
    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    /**
     * @param apellidoMaterno the apellidoMaterno to set
     */
    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    /**
     * @return the licencia
     */
    public String getLicencia() {
        return licencia;
    }

    /**
     * @param licencia the licencia to set
     */
    public void setLicencia(String licencia) {
        this.licencia = licencia;
    }
    /**
     * @return the disponibleConductor
     */
    public boolean isDisponibleConductor() {
        return disponibleConductor;
    }
    /**
     * @param disponibleConductor the disponibleConductor to set
     */
    public void setDisponibleConductor(boolean disponibleConductor) {
        this.disponibleConductor = disponibleConductor;
    }
}
