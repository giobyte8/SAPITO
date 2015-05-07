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
<<<<<<< HEAD
@Entity 
@Table(name="GastosEnvio")
public class GastosEnvio implements Serializable
=======
@Entity
@Table(name = "GastosEnvio")
public class GastosEnvio
>>>>>>> origin/master
{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    
    @NotNull
    @Column(name = "GASTOS_ENVIO")
<<<<<<< HEAD
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
=======
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
>>>>>>> origin/master
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

<<<<<<< HEAD
    public void setGastosEnvio(long gastosEnvio) 
=======
    public void setGastosEnvio(double gastosEnvio)
>>>>>>> origin/master
    {
        this.gastosEnvio = gastosEnvio;
    }

    public double getGastosAlojamiento()
    {
        return gastosAlojamiento;
    }

<<<<<<< HEAD
    public void setGastosAlojamiento(long gastosAlojamiento) 
=======
    public void setGastosAlojamiento(double gastosAlojamiento)
>>>>>>> origin/master
    {
        this.gastosAlojamiento = gastosAlojamiento;
    }

    public double getCasetas()
    {
        return casetas;
    }

<<<<<<< HEAD
    public void setCasetas(long casetas) 
=======
    public void setCasetas(double casetas)
>>>>>>> origin/master
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

<<<<<<< HEAD
    public boolean isStatus() 
    {
        return status;
    }

    public void setStatus(boolean status) 
    {
        this.status = status;
=======
    public Cliente getCliente()
    {
        return cliente;
    }

    public void setCliente(Cliente cliente)
    {
        this.cliente = cliente;
>>>>>>> origin/master
    }
}
