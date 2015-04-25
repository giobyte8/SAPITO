/* 
 * Ventas.js
 */

/**
 * Marca como activos los elementos de la barrade navegación lateral
 * @param {type} nbtoactivate id del elemento a marcar como activo
 */
function activatenb(nbtoactivate)
{
    switch (nbtoactivate)
    {
        case 'nb-dashboard':
            $('#nb-dashboard').addClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-vendedores').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').removeClass('active');
            break;
        case 'nb-clientes':
            $('#nb-clientes').addClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-vendedores').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').removeClass('active');
            break;
        case 'nb-vendedores':
            $('#nb-vendedores').addClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').removeClass('active');
            break;
        case 'nb-nvaorden':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').addClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-histventas':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').addClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-ordenesp':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').addClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-facturas':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').addClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-ofertas':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').addClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-devoluciones':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').addClass('active');
            $('#nb-cambios').removeClass('active');
            $('#nb-ventas').addClass('active');
            break;
        case 'nb-cambios':
            $('#nb-vendedores').removeClass('active');
            $('#nb-dashboard').removeClass('active');
            $('#nb-clientes').removeClass('active');
            $('#nb-nvaorden').removeClass('active');
            $('#nb-histventas').removeClass('active');
            $('#nb-ordenesp').removeClass('active');
            $('#nb-facturas').removeClass('active');
            $('#nb-ofertas').removeClass('active');
            $('#nb-devoluciones').removeClass('active');
            $('#nb-cambios').addClass('active');
            $('#nb-ventas').addClass('active');
            break;
    }
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
        closeOnCancel: false
    }, function(isConfirm) {
        if (isConfirm) {
            swal('Listo', 'El cambio ha sido cancelada', 'success');
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
        closeOnCancel: false
    }, function(isConfirm) {
        if (isConfirm) {
            swal('Listo', 'La devolución ha sido cancelada', 'success');
        }
    });
}

function cancelarNvaOrdenVenta()
{
    swal({
        title: '¿Seguro que desea cancelar?',
        text: 'Esto eliminará los datos y productos de la orden de venta',
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: 'Si, cancelar orden',
        cancelButtonText: 'No',
        closeOnConfirm: true
    }, function () {
        console.log('Limpiar el formulario de la orden de venta');
    });
}

function guardarCambio()
{
    swal('Guardado', 'El cambio ha sido registrado exitosamente', 'success');
}

function guardarDevolucion()
{
    swal('Guardada', 'La devolución ha sido registrada exitosamente', 'success');
}

function guardarNvaOrdenVenta()
{
    swal({
        title: '¿Generar factura?',
        text: 'Indique si desea generar la factura de la orden de venta',
        type: 'info',
        showCancelButton: true,
        confirmButtonColor: '#2ECC71',
        confirmButtonText: 'Generar',
        cancelButtonText: 'Ahora no',
        closeOnConfirm: false,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
            swal({
                title: 'Generada',
                text: 'La factura ha sido generada con exito',
                type: 'success',
                showCancelButton: true,
                confirmButtonColor: '#2ECC71',
                confirmButtonText: 'Descargar',
                cancelButtonText: 'Descargar luego',
                closeOnConfirm: false,
                closeOnCancel: false
            }, function () {
                swal({
                    title: '¿Imprimir ticket?',
                    text: 'Indique si desea imprimir el ticket de la orden de venta',
                    type: 'info',
                    showCancelButton: true,
                    confirmButtonColor: '#2ECC71',
                    confirmButtonText: 'Imprimir',
                    cancelButtonText: 'No imprimir',
                    closeOnConfirm: false,
                    closeOnCancel: true
                }, function (isConfirm) {
                    if (isConfirm) {
                        swal("Listo", "El ticket ha sido impreso", "success");
                    }
                });
            });
        }
        else {
            swal({
                title: '¿Imprimir ticket?',
                text: 'Indique si desea imprimir el ticket de la orden de venta',
                type: 'info',
                showCancelButton: true,
                confirmButtonColor: '#2ECC71',
                confirmButtonText: 'Imprimir',
                cancelButtonText: 'No imprimir',
                closeOnConfirm: false,
                closeOnCancel: true
            }, function (isConfirm) {
                if (isConfirm) {
                    swal("Listo", "El ticket ha sido impreso", "success");
                }
            });
        }
    })
}

function imprimirTicketCambio()
{
    swal('Listo', 'El ticket del cambio ha sido impreso', 'success');
}

function imprimirTicket()
{
    swal('Listo', 'El ticket de la devolución ha sido impreso', 'success');
}

function submitNvoCliente()
{
    swal("Guardado", "El cliente ha sido registrado", "success");
}