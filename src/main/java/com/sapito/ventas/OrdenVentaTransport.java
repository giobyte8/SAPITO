/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.ventas;

import java.util.List;

/**
 *
 * @author giovanni
 */
public class OrdenVentaTransport
{

    private Long clientId;
    private List<CargoExtra> cargosExtra;
    private List<ProductoEnOrden> productosEnOrden;
    private double monto;
    private double montoConCargos;

    public Long getClientId()
    {
        return clientId;
    }

    public void setClientId(Long clientId)
    {
        this.clientId = clientId;
    }

    public List<CargoExtra> getCargosExtra()
    {
        return cargosExtra;
    }

    public void setCargosExtra(List<CargoExtra> cargosExtra)
    {
        this.cargosExtra = cargosExtra;
    }

    public List<ProductoEnOrden> getProductosEnOrden()
    {
        return productosEnOrden;
    }

    public void setProductosEnOrden(List<ProductoEnOrden> productosEnOrden)
    {
        this.productosEnOrden = productosEnOrden;
    }

    public double getMonto()
    {
        return monto;
    }

    public void setMonto(double monto)
    {
        this.monto = monto;
    }

    public double getMontoConCargos()
    {
        return montoConCargos;
    }

    public void setMontoConCargos(double montoConCargos)
    {
        this.montoConCargos = montoConCargos;
    }
}

class CargoExtra
{

    private String concepto;
    private double cantidad;

    public String getConcepto()
    {
        return concepto;
    }

    public void setConcepto(String concepto)
    {
        this.concepto = concepto;
    }

    public double getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(double cantidad)
    {
        this.cantidad = cantidad;
    }
}

class ProductoEnOrden
{

    private int idInventario;
    private int cantidad;

    public int getIdInventario()
    {
        return idInventario;
    }

    public void setIdInventario(int idInventario)
    {
        this.idInventario = idInventario;
    }

    public int getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(int cantidad)
    {
        this.cantidad = cantidad;
    }
}
