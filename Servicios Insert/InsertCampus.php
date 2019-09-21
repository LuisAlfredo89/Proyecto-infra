<?php
$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
    
$nombre = $_GET["nombre"];
$activo = $_GET["activo"];

$sql = "INSERT INTO campus ( nombre, activo)
VALUES ('$nombre', '$activo') ";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":"Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje":"Operacion Erronea: '.$conn->error.'"}]'; 
}

$conn->close();
?> 



