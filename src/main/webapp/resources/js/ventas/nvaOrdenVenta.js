/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var API_URL = 'http://localhost:8080/SAPITO/ventas/';

var costoTotalOrden = 0;
var cargosTotal = 0;

function buscarCliente()
{
    var rfc = $('#cliente-rfc').val();

    var reqUrl = API_URL + 'buscarcliente';
    var params = {
        rfc: rfc
    };
    $.get(reqUrl, params, function (data) {
        if (data.empresa) {
            $('#fcliente-empresa').val(data.empresa);
            $('#fcliente-nombre').val(data.nombreContacto);
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

function buscarProducto()
{
    $('#addp-notfound-alert').addClass('hidden');
    var codigoInventario = $('#addp-cinventario').val();

    var reqUrl = API_URL + 'buscarproducto';
    var params = {
        cinventario: codigoInventario
    };
    $.get(reqUrl, params, function (data) {
        if (data.nombre) {
            $('#addp-nombre').val(data.nombre);
            $('#addp-categoria').val(data.categoria);
            $('#addp-tipo').val(data.tipoProducto);
            $('#addp-ubicacion').val(data.ubicacion);
            $('#addp-cantidaddisp').val(data.cantidad);
            $('#addp-costo').val('41.50');
        }
        else {
            $('#addp-notfound-alert').removeClass('hidden');
            $('#addp-nombre').val('');
            $('#addp-categoria').val('');
            $('#addp-tipo').val('');
            $('#addp-ubicacion').val('');
            $('#addp-cantidaddisp').val('');
            $('#addp-costo').val('');
        }
    });
}

function agregarAOrden()
{
    var trow = '<tr><td>' + $('#addp-nombre').val() + '</td>'
            + '<td>' + $('#addp-cantidad').val() + '</td>'
            + '<td>' + $('#addp-costo').val() + ' </td>';
    $('#tproductos > tbody:last').append(trow);

    costoTotalOrden = +costoTotalOrden + (+$('#addp-costo').val() * +$('#addp-cantidad').val());
    $('#costo-totalorden').empty();
    $('#costo-totalorden').append('Total de orden: $' + costoTotalOrden);
    clearAddPForm();
}

function clearAddPForm()
{
    $('#addp-notfound-alert').addClass('hidden');
    $('#addp-nombre').val('');
    $('#addp-categoria').val('');
    $('#addp-tipo').val('');
    $('#addp-ubicacion').val('');
    $('#addp-cantidaddisp').val('');
    $('#addp-costo').val('');
    
    $('#addp-cinventario').val('');
    $('#addp-cantidad').val('1');
}

function agregarCargo()
{
    var concepto = $('#addc-concepto').val();
    var cantidad = $('#addc-cantidad').val();
    if (!concepto || !cantidad) {
        console.log('No concept');
        $('#addc-alert').removeClass('hidden');
    }
    else {
        $('#addc-alert').addClass('hidden');
        var trow = '<tr><td>' + concepto + '</td>'
            + '<td>' + cantidad + '</td>'
            + '<td><button type="button" class="btn btn-success btn-xs">Editar</button></td></tr>';
        $('#tcargos > tbody:last').append(trow);
        
        cargosTotal = +cargosTotal + +cantidad;
        $('#cargos-total').empty();
        $('#cargos-total').append('Cargo total: $' + cargosTotal);
        $('#addc-modal').modal('hide');
        clearAddCForm();
    }
}

function clearAddCForm()
{
    $('#addc-alert').addClass('hidden');
    $('#addc-concepto').val('');
    $('#addc-cantidad').val('');
}
