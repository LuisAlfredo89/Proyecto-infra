<?php
header('Content-type: application/json');
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


$Tipo_de_usuario =$_GET["Tipo_de_usuario"];
$objeto =$_GET["objeto"];

$sql = "SELECT count(1) valido, a.tipo_de_usuario, b.Ruta
FROM accesos a INNER JOIN objeto b ON a.Id_objeto=b.Id_objeto
WHERE a.tipo_de_usuario ='$Tipo_de_usuario' AND b.Ruta ='$objeto'
			";

$result = $conn->query($sql);
$datos = array();
if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {

	  $datos[] = $row;
    }

}
$json_string =json_encode($datos);
echo $json_string;
$conn->close();


?>
