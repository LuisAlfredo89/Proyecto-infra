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
$id_relacion = $_GET["id_relacion"];
$activo = $_GET["activo"];
$id_idioma = $_GET["id_idioma"];

$id_nivel = $_GET["id_nivel"];

$sql = "UPDATE idioma_por_persona SET activo= '$activo', 
                                    id_idioma='$id_idioma', 
       
                                    id_nivel='$id_nivel'
        WHERE id_relacion = '$id_relacion'";


if ($conn->query($sql) === TRUE) {
    echo '[{Mensaje: "Operación Exitosa"}]';
} else {
    echo '[{Mensaje: "Operación Erronea: '.$conn->error.'"}]';
}

$conn->close();
?> 
