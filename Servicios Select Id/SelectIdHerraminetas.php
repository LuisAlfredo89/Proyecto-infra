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

$id_herramientas =$_GET["id_herramientas"];

$sql = "SELECT * FROM herramientas WHERE id_herramientas='$id_herramientas'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
 
    while($row = $result->fetch_assoc()) {
        echo "descripcion: ". $row["descripcion"]. " Activo " . $row["activo"]. "";
    }
} else {
    echo "[{mensaje:operacion erronea:'$conn->error'}]";
}

echo json_encode($result);
$conn->close();
?>