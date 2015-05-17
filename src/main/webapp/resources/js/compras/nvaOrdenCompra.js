
var API_URL = 'http://localhost:8080/SAPITO/compras/';
var costos = [];

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
//            for (var i=0; i<data.productoProveedor.length; i++) {
//                var idProductoProveedor = data.productoProveedor[i];
//                var params2 = {
//                    idProductoProveedor: idProductoProveedor
//                };
//                costos.push(data.productoProveedor[i].costo);
//                $.get(API_URL + 'proveedorproducto', params2, function(proveedor){
//                    if (proveedor.id) {
//                        var option = "<option value='" + data.productoProveedor[i].id +
//                        "'>" + proveedor.empresa + "</option>";
//                        $('#cproveedor').append(option);
//                    }
//                })
//            }
            $('#addc-costo').val(costos[0]);
            $('#addp-notfound-alert').addClass('hidden');
        }
        else {
            limpiar();
            $('#addp-notfound-alert').removeClass('hidden');
        }
    });
}

function limpiar()
{
    $('#addc-nombre').val('');
    $('#addc-categoria').val('');
}
