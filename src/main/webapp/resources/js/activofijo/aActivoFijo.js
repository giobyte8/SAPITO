
$(document).ready(function () {
    $('#combo-dpto').on('change', function () {
        
        var url = "http://localhost:8080/SAPITO/activofijo/buscarempleados";
        var idDpto = this.value;
        var params = {
            idDpto: idDpto
        };
        $.get(url, params, function(empleados) {
            console.log(empleados);
            $('#combo-empleados').empty();
            for (var i=0; i<empleados.length; i++) {
                var option = '<option value="' + empleados[i].idempleado
                        + '">' + empleados[i].nombre + "</option>";
                $('#combo-empleados').append(option);
            }
        });
    });
});

