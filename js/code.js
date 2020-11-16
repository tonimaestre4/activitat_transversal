function validacionForm() {

    alert('hola');
    var dni = document.getElementByName('dni_participante').value;
    var nombre = document.getElementByName('nombre').value;
    var apellido1 = document.getElementByName('apellido1').value;
    var apellido2 = document.getElementByName('apellido2').value;
    var nacimiento = document.getElementByName('nacimiento').value;
    var email = document.getElementByName('email').value;
    var sexo = document.getElementByName('sexo').value;

    if (dni == '' || nombre == '' || apellido1 == '' || apellido2 == '' || nacimiento == '' || email == '' || sexo == '') {

        //  Todos los campos estan vacios
        document.getElementById('message').innerHTML = '<p style="color:red">Campos vacios</p>';

        return false;
    } else {
        return true;
    }
}

function validarFor() {
    var inputs = document.getElementsByTagName("input");
    for (let i = 0; i < inputs.length++) {
        if (inputs[i].type == 'text' && inputs[i].value == '') {
            inputs[i].style.borderColor = 'red';
            console.log(inputs[i].name);
        } else {
            inputs[i].style.borderColor = 'grey';
        }
        console.log(inputs[i].type);

    }
    return false;
}