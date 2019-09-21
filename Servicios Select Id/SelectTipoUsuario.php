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

$tipo_de_usuario = $_GET["tipo_de_usuario"];

$sql = "SELECT * FROM tipo_usuario WHERE tipo_de_usuario='$tipo_de_usuario' " ;

$result = $conn->query($sql);
$json = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $json [] = $row;
    }
} 
$json_string =json_encode($json);
echo $json_string;
$conn->close();
?> 