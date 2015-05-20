
var API_URL = 'http://localhost:8080/SAPITO/compras/';
var costos = [];

/**
 * Products to add ( id: costo, id: costo }
 * @type JSON Object
 */
var costos;

/**
 * El productoProveedor que se agrega a la orden en cierto momento
 * @type String id
 */
var idProductoProveedorToAdd = null;

// Orden compra transport
var ordenTransport = {
    formaPago: 'Contado',
    montoTotal: 0,
    productosEnOrden: []
};

function agregarAOrden()
{
    if (idProductoProveedorToAdd) {
        if (validarCantidad()) {
            var cantidad = $('#addp-cantidad').val();
            var costo    = $('#addc-costo').val();
            
            var trow = '<tr><td>' + $('#addc-nombre').val() + '</td>'
                    + '<td>' + cantidad + '</td>'
                    + '<td>' + costo + ' </td>';
            $('#tproductos > tbody:last').append(trow);

            // Agregar a la orden:
            ordenTransport.productosEnOrden.push({
                cantidad: cantidad,
                idProductoProveedor: idProductoProveedorToAdd
            });
            
            // Calcular total
            var incremento = +cantidad * +costo;
            ordenTransport.montoTotal = +ordenTransport.montoTotal + +incremento;
            $('#total-final').empty();
            $('#total-final').append('Total final: $' + ordenTransport.montoTotal);

            limpiar();
            $('#addp-modal').modal('hide');
            $('#alert-productos').addClass('hidden');
        }
    }
    else {
        $('#addp-notfound-alert').removeClass('hidden');
    }
}

function buscarProducto()
{
    var idProducto = $('#addp-cproducto').val();
    var params = {
        idp: idProducto
    };
    $.get('buscarProducto', params, function (producto) {
        if (producto.id) {
            $('#addc-nombre').val(producto.nombreProducto);
            $('#addc-categoria').val(producto.categoria);

            // Proveedores disponibles
            $('#cproveedor').empty();
            costos = {};
            for (var i = 0; i < producto.productoProveedor.length; i++) {
                var option = "<option value='" + producto.productoProveedor[i].id +
                        "'>" + producto.productoProveedor[i].proveedor.empresa + "</option>";
                $('#cproveedor').append(option);
                costos[producto.productoProveedor[i].id] = producto.productoProveedor[i].costo;
            }
            $('#addc-costo').val(producto.productoProveedor[0].costo);
            $('#addp-notfound-alert').addClass('hidden');

            idProductoProveedorToAdd = producto.productoProveedor[0].id;
        }
        else {
            limpiar();
            $('#addp-notfound-alert').removeClass('hidden');
        }
    });
}

function cancelarNvaOrdenCompra()
{
    swal({
        title: '¿Seguro que desea cancelar?',
        text: 'Esto eliminará los datos y productos de la orden de compra',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: 'Si, cancelar orden',
        cancelButtonText: 'No',
        closeOnConfirm: true
    }, function (isConfirm) {
        if (isConfirm) {
            location.reload();
        }
    });
}

function enviarOrdenCompra()
{
    if (ordenTransport.productosEnOrden.length > 0) {
        var reqUrl = '/SAPITO/compras/ordencompra';
        $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            type: "POST",
            url: reqUrl,
            data: JSON.stringify(ordenTransport),
            success: function (data) {
                if (data.id) {
                    swal({
                        title: 'Orden registrada',
                        text: 'La orden de compra ha sido registrada',
                        type: 'success',
                        showCancelButton: false
                    }, function (isConfirm) {
                        !isConfirm;
                        location.reload();
                    });
                }
            },
            dataType: 'json'
        });
    }
    else {
        $('#alert-productos').removeClass('hidden');
    }
}

function limpiar()
{
    $('#addp-notfound-alert').addClass('hidden');
    $('#addc-nombre').val('');
    $('#addc-categoria').val('');
    $('#addc-costo').val('');
    $('#addp-cproducto').val('');
    $('#addp-cantidad').val('');

    $('#cproveedor').empty();
    idProductoProveedorToAdd = null;

}

function validarCantidad()
{
    var cantidad = $('#addp-cantidad').val();
    if (/^\d+$/.test(cantidad)) {
        $('#addp-cantidad-alert').addClass('hidden');
        return true;
    }
    else {
        $('#addp-cantidad-alert').removeClass('hidden');
        return false;
    }

}

$(document).ready(function () {

    $('#cproveedor').on('change', function () {
        idProductoProveedorToAdd = this.value;
        $('#addc-costo').val(costos[idProductoProveedorToAdd]);
    });
    
    $('#forma-pago').on('change', function () {
        ordenTransport.formaPago = this.value;
    });

});