function validacionForm() {

    var dni = document.getElementById('dni_participante').value;
    var nombre = document.getElementById('nombre').value;
    var apellido1 = document.getElementById('apellido1').value;
    var apellido2 = document.getElementById('apellido2').value;
    var nacimiento = document.getElementById('nacimiento').value;
    var email = document.getElementById('email').value;
    var sexo = document.getElementById('sexo').value;
    
    if (dni == '' || nombre == '' || apellido1 == '' || apellido2 == '' || nacimiento == '' || email == '' || sexo == '') {

        //  Todos los campos estan vacios
        document.getElementById('message').innerHTML = '<p style="color:red">Campos vacios</p>';

        return false;
    } else {
        alert('hola');
        return true;
    }
};