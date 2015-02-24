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
            break;
    }
}
