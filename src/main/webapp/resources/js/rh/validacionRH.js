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

function validaDecimales(e,id){
    e=e||event;    
    if(e.which===46){
        var val=document.getElementById(id).value;        
        var pos=val.indexOf(".");        
        if (val.length===0||pos>-1) {
            return false;
        }
    }else{
        return soloNumeros(e);
    }
}

function validaPass(id, id2) {
    var pass1 = document.getElementById(id).value;
    var pass2 = document.getElementById(id2).value;

    if (pass1 !== pass2) {
        alert("Las Contraseñas No Coinciden");
        return false;
    }
    return true;

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

function fechaMayorActual(id) {
    var fecha = document.getElementById(id).value;    
    var date = new Date();
    var d = date.getFullYear()+ "-" +(date.getMonth() + 1)+ "-" + date.getDate()   ;        
    if (fecha < d) {
        alert("La fecha debe de ser igual o mayor a la fecha actual");
        return 0;
    }
}



function isNumeric(val) {
    return !isNaN(val) && isFinite(val);
}

function getChar(event) {

    if (event.which === null) {
        return String.fromCharCode(event.keyCode);
    } else if (event.which !== 0 && event.charCode !== 0) {
        return String.fromCharCode(event.which); 
    } else {
        return null;
    }
}


function validarRFC(id, n) {

    var f = document.getElementById(id).value;
    if (f.length !== n) {
        alert("La longitud es  incorrecta");
        return false;
    }
    return true;
}

function validarDropDown(id) {
    var c = document.getElementById(id).selectedIndex;    
    if (c === 0) {
        alert("No ha seleccionado una opción");
        return 0;
    }   
}

function noFuncional(){
    alert("Esta función no esta disponible por el momento");
    return false;
}






