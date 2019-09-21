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
   
$tipo_de_usuario = $_GET["tipo_de_usuario"];     
$id_objeto =$_GET["id_objeto"];
$activo=$_GET["activo"];

$sql = "INSERT INTO accesos (tipo_de_usuario,id_objeto,activo)
VALUES ('$tipo_de_usuario','$id_objeto','$activo')";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje": "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje": "Operacion Erronea: '.$conn->error.'"}]';
}

$conn->close();
?> 