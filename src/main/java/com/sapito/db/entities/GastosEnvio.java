package com.sapito.db.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author logistica
 */
@Entity
@Table(name = "GastosEnvio")
public class GastosEnvio
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @NotNull
    @Column(name = "GASTOS_ENVIO")
    private double gastosEnvio;
    
    @NotNull
    @Column(name = "GASTOS_ALOJAMIENTO")
    private double gastosAlojamiento;
    
    @NotNull
    @Column(name = "CASETAS")
    private double casetas;
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/

    @OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private OrdenEnvio idOrdenEnvio;
    
    @JoinColumn(name = "ID_CLIENTE")
    @ManyToOne
    private Cliente cliente;
        
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** *** *** *** *** *** *** *** *** ***/

    public long getId()
    {
        return id;
    }

    public void setId(long id)
    {
        this.id = id;
    }

    public double getGastosEnvio()
    {
        return gastosEnvio;
    }

    public void setGastosEnvio(double gastosEnvio)
    {
        this.gastosEnvio = gastosEnvio;
    }

    public double getGastosAlojamiento()
    {
        return gastosAlojamiento;
    }

    public void setGastosAlojamiento(double gastosAlojamiento)
    {
        this.gastosAlojamiento = gastosAlojamiento;
    }

    public double getCasetas()
    {
        return casetas;
    }

    public void setCasetas(double casetas)
    {
        this.casetas = casetas;
    }

    public OrdenEnvio getIdOrdenEnvio()
    {
        return idOrdenEnvio;
    }

    public void setIdOrdenEnvio(OrdenEnvio idOrdenEnvio)
    {
        this.idOrdenEnvio = idOrdenEnvio;
    }

    public Cliente getCliente()
    {
        return cliente;
    }

    public void setCliente(Cliente cliente)
    {
        this.cliente = cliente;
    }
}
