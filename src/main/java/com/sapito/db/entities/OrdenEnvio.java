package com.sapito.db.entities;

import com.sapito.db.entities.Conductor;
import com.sapito.db.entities.Transporte;
import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import java.sql.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author logistica
 */
@Entity
@Table(name = "OrdenEnvio")
public class OrdenEnvio implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;

    @Column(name = "HORA_ENTREGA")
    private String horaEntrega;

    @NotNull
    @Size(min=2, max=100, message = "Debe tener entre 2 y 100 caracteres")
    @Column(name = "TIEMPO_ENTREGA")
    private String tiempoEntrega;

    @NotNull
    @Size(min=1, max=500, message = "El nombre de la empresa debe tener entre 1 y 250 caracteres")
    @Pattern(regexp = RExp.letrasAcentuadasPuntos, message = RExpErrors.letrasAcentuadasPuntos)
    @Column(name = "NOMBRE_RECIBE")
    private String nombreRecibe;

    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    

    
    
/* *** *** *** *** *** *** *** *** *** *** *** ***/
/* *** *** *** ***  RELACIONES *** *** *** *** ***/
    
    @OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Transporte idTransporte;
    
    @OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Conductor idConductor;
    
    @OneToOne(mappedBy = "ordenEnvio")
    private OrdenVenta ordenVenta;
    
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

    public String getHoraEntrega()
    {
        return horaEntrega;
    }

    public void setHoraEntrega(String horaEntrega)
    {
        this.horaEntrega = horaEntrega;
    }

    public String getTiempoEntrega()
    {
        return tiempoEntrega;
    }

    public void setTiempoEntrega(String tiempoEntrega)
    {
        this.tiempoEntrega = tiempoEntrega;
    }

    public String getNombreRecibe()
    {
        return nombreRecibe;
    }

    public void setNombreRecibe(String nombreRecibe)
    {
        this.nombreRecibe = nombreRecibe;
    }

    public Transporte getIdTransporte()
    {
        return idTransporte;
    }

    public void setIdTransporte(Transporte idTransporte)
    {
        this.idTransporte = idTransporte;
    }

    public Conductor getIdConductor()
    {
        return idConductor;
    }

    public void setIdConductor(Conductor idConductor)
    {
        this.idConductor = idConductor;
    }


    public boolean isStatus() 
    {
        return status;
    }

    public void setStatus(boolean status) 
    {
        this.status = status;
    }

    public OrdenVenta getOrdenVenta()
    {
        return ordenVenta;
    }

    public void setOrdenVenta(OrdenVenta ordenVenta)
    {
        this.ordenVenta = ordenVenta;
    }
}