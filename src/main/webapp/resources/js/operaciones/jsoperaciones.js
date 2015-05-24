/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function soloNumeros(e) {
    e = e || event;
    var chr = getChar(e);
    
    if (e.which === 32) {
        return false;
    } else if (!isNumeric(chr) && chr !== null) {
        return false;
    }
}

function soloTexto(e) {
    e = e || event;
    var chr = getChar(e);
    
    if (e.which === 32) {
        return true;
    } else if (isNumeric(chr) && chr !== null) {
        return false;
    }
}
