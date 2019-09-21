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

$id_herramientas = $_GET["id_herramientas"];
$nombre_usuario = $_GET["nombre_usuario"];
$id_nivel = $_GET["id_nivel"];


$sql = "INSERT INTO herramientas_de_usuario 
        (id_herramientas,nombre_usuario,id_nivel) 
        values 
        ('$id_herramientas','$nombre_usuario','$id_nivel')";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":  "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje":  "Operacion Erronea:  '. $conn->error.'"}]'; 
}
$conn->close();
?> 