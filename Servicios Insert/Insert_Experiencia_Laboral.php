<?php

$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$lugar_de_trabajo = $_GET["lugar_de_trabajo"];
$fecha_de_inicio = $_GET["fecha_de_inicio"];
$fecha_de_fin = $_GET["fecha_de_fin"];
$salario = $_GET["salario"];
$nombre_usuario=$_GET["nombre_usuario"];



$sql = "INSERT INTO experiencia_laboral(lugar_de_trabajo,fecha_de_inicio,fecha_de_fin,salario,nombre_usuario)
VALUES ('$lugar_de_trabajo','$fecha_de_inicio','$fecha_de_fin','$salario','$nombre_usuario')";



if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje": "Ingresado con Exito"}]';
} else {
    echo '[{"Mensaje": "error al insertar'.$conn->error.'"}]';
}

$conn->close();
?>
