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

$Id_objeto = $_GET["Id_objeto"];
$sql = "SELECT * FROM objeto WHERE Id_objeto='$Id_objeto'";
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
