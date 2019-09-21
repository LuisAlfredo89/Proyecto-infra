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
$nombre_usuario=$_GET["nombre_usuario"];
$sql = "SELECT a.id_relacion,b.nombre_area,a.nombre_usuario FROM usuario_area a INNER JOIN area b ON a.id_area=b.id_area WHERE nombre_usuario='$nombre_usuario'";


$result = $conn->query($sql);
$Datos = array();

if ($result->num_rows > 0) {

 while($row = $result->fetch_assoc()) {

    $Datos [] =$row;
    }
}

echo json_encode($Datos);

$conn->close();

?>
