/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var API_URL = 'http://localhost:8080/SAPITO/logistica/';

function buscar()
{
    
    var rfc = $('#idempresa').val();   
    showModalDialog(rfc);
    var reqUrl = API_URL + 'busca';
    var params = {
        rfc: rfc
    };
    
    $.get(reqUrl, params, function (data) {        
        if (data.nombreEmpresa) {
            $('#f-empresa').val(data.nombreEmpresa);            
            $('#alert-rfc').addClass('hidden');
        }
        else {
            swal({
                title: "Cliente no encontrado",
                text: "El cliente con rfc: " + rfc + " no existe.",
                type: "error"
            });
        }
    });
}





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
        case 'nb-nacional':
            $('#nb-nb-nacional').addClass('active');
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