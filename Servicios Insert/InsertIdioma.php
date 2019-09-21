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
$nombre_del_idioma = $_GET["nombre_del_idioma"];
$activo = $_GET["activo"];


$sql = "INSERT INTO Idioma(nombre_del_idioma, activo)
VALUES ('$nombre_del_idioma', '$activo')";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje": "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje": "Operacion Erronea: '.$conn->error.'"}]';
}
$conn->close();
?> 