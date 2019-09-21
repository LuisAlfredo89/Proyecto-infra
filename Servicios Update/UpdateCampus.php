<?php
$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Coneccion Erronea: " . $conn->connect_error);
}

$nombre = $_GET["nombre"];
$activo = $_GET["activo"];
$buscar = $_GET["buscar"];

$sql = "UPDATE campus SET nombre='$nombre', activo='$activo' WHERE id_campus = '$buscar'";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":  "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje":  "Operacion Erronea:  '. $conn->error.'"}]'; 
}
$conn->close();

?> 