/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.db.entities;

import com.sapito.db.util.RExp;
import com.sapito.db.util.RExpErrors;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 *
 * @author chef
 */
@Entity
public class OrdenCompra implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @NotNull
    @Column(name = "Folio")
    private boolean Folio;

    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaOrden")
    @Pattern(regexp = RExp.fecha, message = RExpErrors.fecha)
    @Temporal(TemporalType.DATE)
    private java.util.Date fechaOrden;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaEntrega")
    @Pattern(regexp = RExp.fecha, message = RExpErrors.fecha)
    @Temporal(TemporalType.DATE)
    private java.util.Date fechaEntrega;
    
    @NotNull
    @Column(name = "importe")
    @Pattern(regexp = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?", message = "Numero Decimal")
    private double importetotal;

    @NotNull
    @Size(min=1, max=500, message = "Seleccione una forma de pago")
    @Column(name = "formapago")
    private String formapago;
    
    @NotNull
    @Size(min=1, max=500, message = "Seleccione una forma de pago")
    @Column(name = "aprobacion")
    private String aprobacion;
    
    @NotNull
    @Column(name = "STATUSpago")
    private boolean statuspago;
    
    @OneToOne
    @JoinColumn(name = "ORDENID_PROVEEDOR")
    private RelacionProducoProveedor proveedor;
    
    @OneToOne(mappedBy = "ordendcompra")
    private DescripcionOrden describirorden;

    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the Folio
     */
    public boolean isFolio() {
        return Folio;
    }

    /**
     * @param Folio the Folio to set
     */
    public void setFolio(boolean Folio) {
        this.Folio = Folio;
    }

    /**
     * @return the fechaOrden
     */
    public java.util.Date getFechaOrden() {
        return fechaOrden;
    }

    /**
     * @param fechaOrden the fechaOrden to set
     */
    public void setFechaOrden(java.util.Date fechaOrden) {
        this.fechaOrden = fechaOrden;
    }

    /**
     * @return the fechaEntrega
     */
    public java.util.Date getFechaEntrega() {
        return fechaEntrega;
    }

    /**
     * @param fechaEntrega the fechaEntrega to set
     */
    public void setFechaEntrega(java.util.Date fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    /**
     * @return the importe
     */
    public double getImportetotal() {
        return importetotal;
    }

    /**
     * @param importe the importe to set
     */
    public void setImportetotal(double importe) {
        this.importetotal = importe;
    }

    /**
     * @return the formapago
     */
    public String getFormapago() {
        return formapago;
    }

    /**
     * @param formapago the formapago to set
     */
    public void setFormapago(String formapago) {
        this.formapago = formapago;
    }

    /**
     * @return the aprobacion
     */
    public String getAprobacion() {
        return aprobacion;
    }

    /**
     * @param aprobacion the aprobacion to set
     */
    public void setAprobacion(String aprobacion) {
        this.aprobacion = aprobacion;
    }

    /**
     * @return the statuspago
     */
    public boolean isStatuspago() {
        return statuspago;
    }

    /**
     * @param statuspago the statuspago to set
     */
    public void setStatuspago(boolean statuspago) {
        this.statuspago = statuspago;
    }

    /**
     * @return the proveedor
     */
    public RelacionProducoProveedor getProveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setProveedor(RelacionProducoProveedor proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the describirorden
     */
    public DescripcionOrden getDescribirorden() {
        return describirorden;
    }

    /**
     * @param describirorden the describirorden to set
     */
    public void setDescribirorden(DescripcionOrden describirorden) {
        this.describirorden = describirorden;
    }

}
