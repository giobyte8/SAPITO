/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function confirmarAltas(){
   
        var opt=confirm("Esta a punto de agregar un nuevo Usuario\n\
                     Â¿Esta seguro de realizar esta operaciÃ³n?");
         if (opt===true) {
             alert("Operacion Realizada Exitosamente");
        }else{
            return false;
        }    
    
}

function confirmarConsultas(){
    var opt=confirm("Se eliminará la consulta realizada\n\
                     ¿Esta seguro de realizar esta operación?");
    if (opt===true) {
        alert("Operación Realizada Exitosamente");
    }else{
        return false;
    }  
}

function confirmModificaciones(){
   
     var opt=confirm("Se modificarán los datos del Cliente\n\
                      ¿Esta seguro de realizar esta operación?");
    if (opt===true) {
        alert("Operación Realizada Exitosamente");
    }else{
        return false;
    }    
}

function confirmBorrado(){
     var opt=confirm("Se eliminará un Usuario \n\
                     ¿Esta seguro de realizar esta operación?");
    if (opt===true) {
        alert("Operación Realizada Exitosamente");
    }else{
        return false;
    }  
}


function confirmCancelar(){
    var opt=confirm("¿Cancelar Operación?");
     if (opt===true) {
        alert("Operación Realizada Exitosamente");
    }else{
        return false;
    }    
}
