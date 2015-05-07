package com.sapito.db.entities;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 *
 * @author logistica
 */
@Entity 
@Table(name="GastosEnvio")
public class GastosEnvio implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    @NotNull
    @Column(name = "GASTOS_ENVIO")
    private long gastosEnvio;
    @NotNull
    @Column(name = "GASTOS_ALOJAMIENTO")
    private long gastosAlojamiento;
    @NotNull
    @Column(name = "CASETAS")
    private long casetas;
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    @OneToOne(cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private OrdenEnvio idOrdenEnvio;

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

    public void setGastosEnvio(long gastosEnvio) 
    {
        this.gastosEnvio = gastosEnvio;
    }

    public double getGastosAlojamiento() 
    {
        return gastosAlojamiento;
    }

    public void setGastosAlojamiento(long gastosAlojamiento) 
    {
        this.gastosAlojamiento = gastosAlojamiento;
    }

    public double getCasetas() 
    {
        return casetas;
    }

    public void setCasetas(long casetas) 
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

    public boolean isStatus() 
    {
        return status;
    }

    public void setStatus(boolean status) 
    {
        this.status = status;
    }
}
