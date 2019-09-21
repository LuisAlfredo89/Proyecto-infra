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

$id_area = $_GET["id_area"];
$nombre_usuario= $_GET["nombre_usuario"];


$sql = "INSERT INTO usuario_area (id_area, nombre_usuario)
VALUES ('$id_area', '$nombre_usuario')";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":"Operacion existosa"}]';
 } else {
     echo '[{"Mensaje":"Operacion Erronea: '.$conn->error.' "}]' ;
 }

$conn->close();
?> 