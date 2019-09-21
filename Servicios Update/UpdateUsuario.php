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
$identidad = $_GET["identidad"];
$nombre = $_GET["nombre"];
$hoja_de_vida = $_GET["hoja_de_vida"];
$fecha_nacimiento = $_GET["fecha_nacimiento"];
$correo_electronico = $_GET["correo_electronico"];
$sexo = $_GET["sexo"];
$expectativa_salarial = $_GET["expectativa_salarial"];
$contrasena = $_GET["contrasena"];		
$sql = "UPDATE usuario SET  identidad = '$identidad', 
                            nombre = '$nombre', 
                            hoja_de_vida = '$hoja_de_vida', 
                            fecha_nacimiento = '$fecha_nacimiento', 
                            correo_electronico = '$correo_electronico',  
                            sexo = '$sexo', 
                            expectativa_salarial =  '$expectativa_salarial',
                            contrasena = '$contrasena'
                            WHERE nombre_usuario='$nombre_usuario'";

if ($conn->query($sql) === TRUE) {
    echo '[{"Mensaje":  "Operacion Exitosa"}]';
} else {
    echo '[{"Mensaje":  "Operacion Erronea:  '. $conn->error.'"}]'; 
}
$conn->close();
?> 