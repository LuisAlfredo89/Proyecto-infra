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
$sql = "SELECT a.id_relacion,a.nombre_usuario,b.descripcion,c.nombre
FROM herramientas_de_usuario a INNER JOIN
herramientas b ON a.id_herramientas=b.id_herramientas
INNER JOIN nivel c ON a.id_nivel=c.id_nivel
WHERE nombre_usuario ='$nombre_usuario'";
$result = $conn->query($sql);
$datos = array();

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
        $datos [] = $row;
    }
}

echo json_encode($datos);
$conn->close();
?>
