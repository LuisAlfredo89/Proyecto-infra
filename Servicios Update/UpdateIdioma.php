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
$nombre_del_idioma = $_GET["nombre_del_idioma"];
$activo = $_GET["activo"];

$sql = "UPDATE idioma SET nombre_del_idioma= '$nombre_del_idioma',activo= '$activo'
WHERE id_idioma = '$buscar'";


if ($conn->query($sql) === TRUE) {
    echo '[{Mensaje: "Operación Exitosa"}]';
} else {
    echo '[{Mensaje: "Operación Erronea: '.$conn->error.'"}]';
}

$conn->close();
?>
