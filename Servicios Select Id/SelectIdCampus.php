<?php
$con=mysqli_init(); mysqli_ssl_set($con, NULL, NULL, {ca-cert filename}, NULL, NULL); 
mysqli_real_connect($con, "bdmysql.mysql.database.azure.com", 
					"administrador@bdmysql", 
					{Password2019}, 
					{bdmysql}, 3306);

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Operacion Erronea: ". $conn->connect_error);
}

$id_campus = $_GET["id_campus"];

$sql = "SELECT * FROM campus Where id_campus = '$id_campus'";

$result = $conn->query($sql);
$json = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

	  $json[] = $row;
    }
}

$json_string =json_encode($json);
echo $json_string;
$conn->close();
?>           
         

