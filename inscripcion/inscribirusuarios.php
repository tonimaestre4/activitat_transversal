<?php

    require_once '../model/connection.php';
    try {
        $pdo->beginTransaction();
        $query = "INSERT INTO tbl_participante (dni_participante,nombre,apellido1,apellido2,nacimiento,email,sexo) VALUES (?,?,?,?,?,?,?)";
        $sentencia=$pdo->prepare($query);

        $dni=$_POST['dni_participante'];
        $nombre=$_POST['nombre']; 
        $apellido1=$_POST['apellido1'];
        $apellido2=$_POST['apellido2'];
        $nacimiento=$_POST['nacimiento'];
        $email=$_POST['email'];
        $sexo=$_POST['sexo']; 
        
        $sentencia->bindParam(1,$dni);
        $sentencia->bindParam(2,$nombre);
        $sentencia->bindParam(3,$apellido1);
        $sentencia->bindParam(4,$apellido2);
        $sentencia->bindParam(5,$nacimiento);
        $sentencia->bindParam(6,$email);
        $sentencia->bindParam(7,$sexo);
        $sentencia->execute();

        $query = "INSERT INTO tbl_inscripcion (dni_participante,id_cursa,id_categoria) VALUES (?,'1',?)";
        $sentencia=$pdo->prepare($query);
   
        //$id_cursa=$_POST['id_cursa'];
        $dni=$_POST['dni_participante'];
        $id_categoria=$_POST['id_categoria'];

        $sentencia->bindParam(1,$dni);
        $sentencia->bindParam(2,$id_categoria);
        $sentencia->execute();

        header ('Location:../inscripcion.php');
        $pdo->commit();
    } catch (Exception $ex) {
        echo $ex->getMessage();
    }
?>