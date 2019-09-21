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

$id=$_GET['Id'];
$nombre_usuario=$_GET['nombre_usuario'];
$sql = "SELECT * FROM herramientas_de_usuario WHERE id_relacion=$id and nombre_usuario='$nombre_usuario'" ;

$result = $conn->query($sql);
$json = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

	  $json[] = array(
    'id_herramientas'=>$row['id_herramientas'],
    'id_nivel'=>$row['id_nivel'],
    );
    }
}

$json_string =json_encode($json);
echo $json_string;
$conn->close();

 ?>
