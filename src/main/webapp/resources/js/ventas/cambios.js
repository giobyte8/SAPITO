
/**
 * cambios.js
 * 
 * @author Giovanni Aguirre
 */

var API_URL = 'http://localhost:8080/SAPITO/ventas/';
var idOrden = null;
var totalDevuelto = 0;

function buscarOrdenVenta()
{
    idOrden = $('#id-orden').val();
    if (idOrden) {
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
                $('#alert-idorden').addClass('hidden');

                // Datos de cliente
                $('#orden-empresa').val(cliente.empresa);
                $('#orden-cliente').val(cliente.nombreContacto + ' ' + cliente.apellidoPaternoContacto);

                // Productos en la orden
                console.log(orden.productosVendidos.length);
                for (var i = 0; i < orden.productosVendidos.length; i++) {
                    var trow = '<tr><td>' + orden.productosVendidos[i].productoInventario.nombre + '</td>'
                            + '<td>' + orden.productosVendidos[i].cantidad + '</td>'
                            + '<td>' + orden.productosVendidos[i].productoInventario.precioUnitario + '</td>'
                            + '</tr>';
                    $('#tproductos-devueltos > tbody:last').append(trow);
                }

                // Total de la orden
                $('#total-orden-antigua').empty();
                $('#total-orden-antigua').append('Total de la orden: $' + orden.montoConCargos);
                totalDevuelto = +orden.montoConCargos;
                ordenVentaTransport.clientId = cliente.id;
                calcularTotalesCambio();
            }
            else {
                clearOrdenData();
            }
        });
    }
    else {
        clearOrdenData();
    }
}

/**
 * Calcs 'total - totalDevolution' and 'great total'
 */
function calcularTotalesCambio()
{
    var totalMenosDevuelto = +ordenVentaTransport.montoConCargos - +totalDevuelto;
    ordenVentaTransport.montoConCargos = totalMenosDevuelto;

    $('#total-menos-devuelto').empty();
    $('#total-menos-devuelto').append('Total menos total devuelto: $' + totalMenosDevuelto);

    $('#gran-total').empty();
    $('#gran-total').append('Total final: $' + totalMenosDevuelto);
}

function cancelarCambio()
{
    swal({
        title: '¿Desea cancelar el cambio?',
        text: 'Confirme que desea cancelar el cambio',
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

function clearOrdenData()
{
    $('#alert-idorden').removeClass('hidden');
    $('#tproductos-devueltos > tbody').empty();
    $('#total-orden-antigua').empty();
    $('#total-orden-antigua').append('Total de la orden: $00.00');

    // Datos de cliente
    $('#orden-empresa').val('');
    $('#orden-cliente').val('');
    idOrden = null;
}

function guardarCambio()
{
    if (idOrden) {
        if (ordenVentaTransport.productosEnOrden.length > 0) {
            var reqUrl = API_URL + 'devolverorden';
            var params = {
                idOrden: idOrden
            };
            $.get(reqUrl, params, function (orden) {
                console.log('To register new order');
                ordenVentaTransport.status = 'VENTA-CAMBIO';
                reqUrl = API_URL + 'nvaorden';
                $.ajax({
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    type: "POST",
                    url: reqUrl,
                    data: JSON.stringify(ordenVentaTransport),
                    success: function (data) {
                        nvaOrdenRegistrada(data);
                    },
                    dataType: 'json'
                });
            });
        }
        else {
            $('#alert-productos').removeClass('hidden');
        }
    }
    else {
        $('#alert-idorden').removeClass('hidden');
    }
}

function nvaOrdenRegistrada(data)
{
    swal({
        title: 'La orden de cambio ha sido registrada',
        text: 'Indique si desea imprimir el ticket',
        type: 'success',
        showCancelButton: true,
        confirmButtonText: 'Imprimir',
        cancelButtonText: 'No imprimir',
        closeOnConfirm: false,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
            swal({
                title: 'Listo',
                text: 'El ticket ha sido impreso',
                type: 'success'
            }, function (isConfirm) {
                location.reload();
            });
        } else {
            location.reload();
        }
    });
}

/**
 * Solicita al servidor que marque el status de la 
 * orden devuelta como 'DEVOLUCION'
 * @returns true si la petición tiene exito
 */
function subFDevolverOrdenAntigua()
{
    if (idOrden) {

    }
}