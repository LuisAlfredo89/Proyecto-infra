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
$buscar= $_GET["buscar"];

$tipo_de_usuario = $_GET["tipo_de_usuario"];
$id_objeto= $_GET["id_objeto"];
$activo = $_GET["activo"];

$sql = "UPDATE accesos SET tipo_de_usuario='$tipo_de_usuario',activo='$activo',id_objeto='$id_objeto' WHERE id_acceso = ' $buscar' ";

if ($conn->query($sql) === TRUE) {
    echo '[{Mensaje:  "Operacion Exitosa"}]';
} else {
    echo '[{Mensaje:  "Operacion Erronea:  '. $conn->error.'"}]'; 
}
$conn->close();
?>