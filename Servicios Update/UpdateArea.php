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

$buscar = $_GET["buscar"];
$nombre_area= $_GET["nombre_area"];
$activo= $_GET["activo"];
$sql = "UPDATE area SET nombre_area='$nombre_area',activo= '$activo' WHERE id_area ='$buscar'";

if ($conn->query($sql) === TRUE) {
    echo '[{Mensaje:  "Operacion Exitosa"}]';
} else {
    echo '[{Mensaje:  "Operacion Erronea:  '. $conn->error.'"}]'; 
}
$conn->close();
?>