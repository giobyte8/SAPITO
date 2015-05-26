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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Edgar
 */
@Entity
@Table(name = "estadoordendetrabajo")
public class EstadoOrdenDeTrabajo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "idEstadoOrdenDeTrabajo")
    private Long idEstadoOrdenDeTrabajo;

    public Long getIdEstadoOrdenDeTrabajo() {
        return idEstadoOrdenDeTrabajo;
    }

    public void setIdEstadoOrdenDeTrabajo(Long idEstadoOrdenDeTrabajo) {
        this.idEstadoOrdenDeTrabajo = idEstadoOrdenDeTrabajo;
    }
    
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "status")
    private String status;
    
    @OneToOne
    private Ordentrabajo idOrdenTrabajo;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Ordentrabajo getIdOrdenTrabajo() {
        return idOrdenTrabajo;
    }

    public void setIdOrdenTrabajo(Ordentrabajo idOrdenTrabajo) {
        this.idOrdenTrabajo = idOrdenTrabajo;
    }
}
