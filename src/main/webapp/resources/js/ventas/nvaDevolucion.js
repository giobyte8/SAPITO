
/**
 * nvaDevolucion.js
 * 
 * @author Giovanni Aguirre
 */

var API_URL = '/SAPITO/ventas/';
var idOrden = null;

function buscarOrdenVenta()
{
    idOrden = $('#id-orden').val();
    var reqUrl = API_URL + 'buscarorden';
    var params = {
        idOrden: idOrden
    };

    $.get(reqUrl, params, function (cliente) {
        if (cliente.empresa) {
            var orden;
            for (var i = 0; i < cliente.ordenesVenta.length; i++) {
                if (cliente.ordenesVenta[i].id === +idOrden) {
                    orden = cliente.ordenesVenta[i];
                    break;
                }
            }

            // Datos de cliente
            $('#orden-empresa').val(cliente.empresa);
            $('#orden-cliente').val(cliente.nombreContacto + ' ' + cliente.apellidoPaternoContacto);

            // Totales
            $('#alert-orden-notfound').addClass('hidden');
            $('#total-orden').empty();
            $('#total-orden').append('Total de orden: $' + orden.monto);
            $('#total-orden-devuelta').empty();
            $('#total-orden-devuelta').append('Total de la orden devuelta: $' + orden.monto);
            $('#total-orden-devuelta-cargos').empty();
            $('#total-orden-devuelta-cargos').append('Total con otros cargos: $' + orden.montoConCargos);
            $('#total-final').empty();
            $('#total-final').append('Total final: $' + orden.montoConCargos);

            // Productos en la orden
            console.log(orden.productosVendidos.length);
            for (var i = 0; i < orden.productosVendidos.length; i++) {
                var trow = '<tr><td>' + orden.productosVendidos[i].productoInventario.nombre + '</td>'
                        + '<td>' + orden.productosVendidos[i].cantidad + '</td>'
                        + '<td>' + orden.productosVendidos[i].productoInventario.precioUnitario + '</td>'
                        + '</tr>';
                $('#tproductos > tbody:last').append(trow);
            }
        }
        else {
            idOrden = null;
            $('#alert-orden-notfound').removeClass('hidden');
            $('#tproductos > tbody').empty();

            // Datos de cliente
            $('#orden-empresa').val('');
            $('#orden-cliente').val('');

            // Totales
            $('#total-orden').empty();
            $('#total-orden').append('Total de orden: $00.00');
            $('#total-orden-devuelta').empty();
            $('#total-orden-devuelta').append('Total de la orden devuelta: $00.00');
            $('#total-orden-devuelta-cargos').empty();
            $('#total-orden-devuelta-cargos').append('Total con otros cargos: $00.00');
            $('#total-final').empty();
            $('#total-final').append('Total final: $00.00');
        }
    });
}

function cancelarDevolucion()
{
    swal({
        title: '¿Desea cancelar la devolución?',
        text: 'Confirme que desea cancelar la devolución',
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Si, cancelar',
        cancelButtonText: 'No',
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
            location.reload();
        }
    });
}

function devolverOrden()
{
    if (idOrden) {
        var reqUrl = API_URL + 'devolverorden';
        var params = {
            idOrden: idOrden
        };
        $.get(reqUrl, params, function (orden) {
            if (orden.status) {
                swal({
                    title: 'La devolución ha sido registrada',
                    text: 'Desea imprimir el ticket de la devolución?',
                    type: 'success',
                    showCancelButton: true,
                    confirmButtonText: 'Imprimir',
                    cancelButtonText: 'No imprimir',
                    closeOnConfirm: false,
                    closeOnCancel: true
                }, function (isConfirm) {
                    if (isConfirm) {
                        swal({
                            title: 'Listo',
                            text: 'El ticket ha sido impreso',
                            type: 'success'
                        }, function (isConfirm) {
                            location.reload();
                        });
                    }
                    else {
                        location.reload();
                    }
                });
            }
        });
    }
}
