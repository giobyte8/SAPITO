
var API_URL = 'http://localhost:8080/SAPITO/compras/';
var costos = [];

/**
 * El productoProveedor que se agrega a la orden en cierto momento
 * @type String id
 */
var idProductoProveedorToAdd = null;

function agregarAOrden()
{
    if (idProductoProveedorToAdd) {
        var cantidad = $('#addp-cantidad').val();
        var trow = '<tr><td>' + $('#addc-nombre').val() + '</td>'
                + '<td>' + cantidad + '</td>'
                + '<td>' + $('#addc-costo').val() + ' </td>';
        $('#tproductos > tbody:last').append(trow);
        $('#addp-modal').modal('hide');
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
    $.get(API_URL + 'buscarProducto', params, function (data) {
        if (data.id) {
            $('#addc-nombre').val(data.nombreProducto);
            $('#addc-categoria').val(data.categoria);

            // Proveedores disponibles
            $('#cproveedor').empty();
            for (var i = 0; i < data.productoProveedor.length; i++) {
                var option = "<option value='" + data.productoProveedor[i].id +
                        "'>" + data.productoProveedor[i].proveedor.empresa + "</option>";
                $('#cproveedor').append(option);
            }
            $('#addc-costo').val(data.productoProveedor[0].costo);
            $('#addp-notfound-alert').addClass('hidden');

            idProductoProveedorToAdd = data.productoProveedor[0].id;
        }
        else {
            limpiar();
            $('#addp-notfound-alert').removeClass('hidden');
        }
    });
}

function limpiar()
{
    $('#addp-notfound-alert').addClass('hidden');
    $('#addc-nombre').val('');
    $('#addc-categoria').val('');
    $('#addc-costo').val('');
    $('#addp-cproducto').val('');

    $('#cproveedor').empty();
    idProductoProveedorToAdd = null;

}

$(document).ready(function () {

    $('#cproveedor').on('change', function () {
        alert(this.value);
        idProductoProveedorToAdd = this.value;
    });

});