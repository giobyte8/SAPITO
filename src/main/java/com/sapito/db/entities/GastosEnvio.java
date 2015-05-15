package com.sapito.db.entities;

import java.io.Serializable;
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
    private String gastosEnvio;
    @NotNull
    @Column(name = "GASTOS_ALOJAMIENTO")
    private String gastosAlojamiento;
    @NotNull
    @Column(name = "CASETAS")
    private String casetas;
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @JoinColumn(name = "ID_CLIENTE")
    @ManyToOne
    private Cliente cliente;
        
    public long getId()
    {
        return id;
    }

    public void setId(long id)
    {
        this.id = id;
    }

    public String getGastosEnvio()
    {
        return gastosEnvio;
    }

    public void setGastosEnvio(String gastosEnvio) 
    {
        this.gastosEnvio = gastosEnvio;
    }

    public String getGastosAlojamiento()
    {
        return gastosAlojamiento;
    }
    public void setGastosAlojamiento(String gastosAlojamiento) 
    {
        this.gastosAlojamiento = gastosAlojamiento;
    }

    public String getCasetas()
    {
        return casetas;
    }

    public void setCasetas(String casetas) 
    {
        this.casetas = casetas;
    }

    public boolean isStatus() 
    {
        return status;
    }

    public void setStatus(boolean status) 
    {
        this.status = status;
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
