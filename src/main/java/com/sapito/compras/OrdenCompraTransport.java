/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.compras;

import java.util.List;

/**
 *
 * @author giovanni
 */
public class OrdenCompraTransport
{
    private List<ProductoEnOrdenCompra> productosEnOrden;

    public List<ProductoEnOrdenCompra> getProductosEnOrden()
    {
        return productosEnOrden;
    }

    public void setProductosEnOrden(List<ProductoEnOrdenCompra> productosEnOrden)
    {
        this.productosEnOrden = productosEnOrden;
    }
}

class ProductoEnOrdenCompra
{
    private int cantidad;
    private long idProductoProveedor;

    public int getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(int cantidad)
    {
        this.cantidad = cantidad;
    }

    public long getIdProductoProveedor()
    {
        return idProductoProveedor;
    }

    public void setIdProductoProveedor(long idProductoProveedor)
    {
        this.idProductoProveedor = idProductoProveedor;
    }
    
    
}
