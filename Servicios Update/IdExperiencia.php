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
$sql = "SELECT * FROM experiencia_laboral WHERE id_experiencia=$id and nombre_usuario='$nombre_usuario'" ;

$result = $conn->query($sql);
$json = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

	  $json[] = array(
    'lugar_de_trabajo'=>$row['lugar_de_trabajo'],
    'fecha_de_inicio'=>$row['fecha_de_inicio'],
    'fecha_de_fin'=>$row['fecha_de_fin'],
    'salario'=>$row['salario'],
    );
    }
}

$json_string =json_encode($json);
echo $json_string;
$conn->close();

 ?>