<?php
$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$nombre_usuario = $_GET["nombre_usuario"];
$nivel_de_grado = $_GET["nivel_de_grado"];
$fecha_de_inicio = $_GET["fecha_de_inicio"];
$fecha_de_fin = $_GET["fecha_de_fin"];
$id_campus = $_GET["id_campus"];
$id_carrera = $_GET["id_carrera"];

$sql = "INSERT INTO educacion (nombre_usuario, nivel_de_grado, fecha_de_inicio, fecha_de_fin, id_campus, id_carrera)
VALUES ('$nombre_usuario', '$nivel_de_grado', '$fecha_de_inicio', '$fecha_de_fin', '$id_campus','$id_carrera')";


if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":  "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje":"  "Operacion Erronea:  '. $conn->error.'"}]'; 
}

$conn->close();
?> 
