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
$nombre_area = $_GET["nombre_area"];
$activo = $_GET["activo"];


$sql = "INSERT INTO area(nombre_area,activo)
VALUES ('$nombre_area', '$activo')";

if ($conn->query($sql) === TRUE) {
   echo '[{"Mensaje":"Operacion existosa"}]';
} else {
    '[{"Mensaje":"Operacion Erronea: '.$conn->error.' "}]' ;
}

$conn->close();
?> 

