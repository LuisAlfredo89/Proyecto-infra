<?php
header('Content-Type: application/json');
$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$IdSesion = $_GET["IdSesion"];

$sql = "UPDATE sesion  SET  FechaFin = NOW() WHERE IdSesion = '$IdSesion'";


if ($conn->query($sql) === TRUE) {
    header('Location: ../Formularios/InicioSesion.html');
} else {
    header('Location: ../Formularios/InicioSesion.html');
}
$conn->close();

?> 
