package com.sapito.db.entities;


import com.sapito.db.entities.Conductor;
import com.sapito.db.entities.Transporte;
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
import javax.validation.constraints.Size;

@Entity 
@Table(name="OrdenEnvio")
public class OrdenEnvio implements Serializable
{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @NotNull
    @Column(name = "ID")
    private long id;
    @NotNull
    @Future
    @Column(name = "HORA_ENTREGA")
    private Date horaEntrega;
    @NotNull
    @Future
    @Column(name = "TIEMPO_ENTREGA")
    private Date tiempoEntrega;
    @NotNull
    @Size(min=1, max=50, message = "El nombre de la empresa debe tener entre 1 y 50 caracteres")
    @Column(name = "NOMBRE_RECIBE")
    private String nombreRecibe;
    @NotNull
    @Column(name = "STATUS")
    private boolean status;
    @OneToOne(cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Transporte idTransporte;
    @OneToOne(cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Conductor idConductor;

    public long getId() 
    {
        return id;
    }

    public void setId(long id) 
    {
        this.id = id;
    }

    public Date getHoraEntrega() 
    {
        return horaEntrega;
    }

    public void setHoraEntrega(Date horaEntrega) 
    {
        this.horaEntrega = horaEntrega;
    }

    public Date getTiempoEntrega() 
    {
        return tiempoEntrega;
    }

    public void setTiempoEntrega(Date tiempoEntrega) 
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
}