<!DOCTYPE html>
<html lang="en">
<head>
<title>TORNEO FUTBOL</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/estilos.css">
<script src="./js/code.js"></script>
</head>
<body>
<div class="header">
    
    <div class="topnav">
    <div class="logo">
        <h2> TORNEO L'H</h2>
    </div>
            <a href="index.html">INICIO</a>
			<a href="clasificaciones.php">CLASIFICACIONES</a>
			<a href="inscripcion.php">INSCRIPCIONES</a>
			<a href="noticias.php">NOTICIAS</a>
			<a href="galeria.php">GALERIA</a>
    </div>

    <section class="form-register">
  <form action="inscripcion/inscribirusuarios.php" method="POST" onsubmit="return validacionForm()">
    <p>Introduce tus datos para registrarte.</p>
    <input class="controls" type="text" name="dni_participante" id="dni_participante" placeholder="DNI">
    <input class="controls" type="text" name="nombre" id="nombre" placeholder="Nombre">
    <input class="controls" type="text" name="apellido1" id="apellido1" placeholder="Apellido paterno">
    <input class="controls" type="text" name="apellido2" id="apellido2" placeholder="Apellido materno">
    <input class="controls" type="date" name="nacimiento" id="nacimiento" placeholder="Nacimiento">
    <input class="controls" type="email" name="email" id="email" placeholder="Email">
    <input class="controls" type="text" name="sexo" name="sexo" placeholder="Sexo">
    <select class="controls" name="id_categoria">
    <!-- <option value="Todas">Todas</option>  -->
      <!-- While de valores--> 
      <?php
      require_once 'model/connection.php';
      $query="SELECT DISTINCT nombre,id_categoria FROM tbl_categoria";
      $sentencia=$pdo->prepare($query);
      $sentencia->execute();
      $categoria=$sentencia->fetchALL(PDO::FETCH_ASSOC);
      foreach($categoria as $categorias) {
      echo "<option value='".$categorias["id_categoria"]."'>".$categorias['nombre']."</option>";
      }
      ?>
    </select>
    <input type="submit" value="REGISTRAR">
</form>
  </section>
  
</body>

<div id="footer">
  <footer class="page-footer font-small blue pt-4" style="background-color: #333; margin-top: 40px">
    <div class="container-fluid text-center text-md-left">
      <div class="roww">
        <div class="col-md-6 mt-md-0 mt-3">
          <p style="color: #F0A54A;" class="text-uppercase">TORNEO 2020 L'H</p>
          <p style="color: white;">Página oficial del torneo de fútbol L'H 2020.</p>
          <p style="color: white;">Para contactar con nosotros escribanos al correo torneolh@gmail.com o al número 662345634.</p>
         <p style="color: white; ">Creado por Toni Maestre Bayo</p>
        </div>
      </div>
    </div>
    <div style="color: #F0A54A;" class="footer-copyright text-center py-3">© 2019 Copyright
    </div>
  </footr>
</footer>
</html>
