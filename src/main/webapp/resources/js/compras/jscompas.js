/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




function Confirmacion() {
    confirmar = confirm("¿Desea agregar el registro?");
    if (confirmar)
    {
// si pulsamos en aceptar
        alert('Datos Ingresados Correctamente');
        //window.location.href = "consultaproveedor";
    }
    else
    {
// si pulsamos en cancelar
        alert('Registro Cancelado');
        window.location.href = "consultaproveedor";
    }
}

function ConfirmacionP() {
    confirmar = confirm("¿Desea agregar el registro?");
    if (confirmar)
    {
// si pulsamos en aceptar
        alert('Datos Ingresados Correctamente');
        window.location.href = "ConsultaProducto";
    }
    else
// si pulsamos en cancelar
        alert('Registro Cancelado');
    window.location.href = "ConsultaProducto";
}

function Eliminar() {
    confirmar = confirm("¿Desea eliminar el registro?");
    if (confirmar)
// si pulsamos en aceptar
        alert('El Proveedor ha sido dado de baja');
    else
// si pulsamos en cancelar
        alert('Eliminación Cancelada');
} 