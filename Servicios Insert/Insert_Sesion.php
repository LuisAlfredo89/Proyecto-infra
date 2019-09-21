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

$sql = "INSERT INTO sesion (nombre_usuario,FechaInicio)
VALUES ('$nombre_usuario', now())";


if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje": "'.$conn->insert_id.'"}]';
} else {
    echo '[{"Mensaje": "error al insertar'.$conn->error.'"}]';
}
$conn->close();
?>
