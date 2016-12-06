<?php
error_reporting(0);
header('Content-Type: application/json');
$array = array();
$connection = mysqli_connect('localhost', 'root', 'root', 'd3_assignment');
$sql="SELECT * FROM tbl_boxoffice";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)){
$json[] = array(
    'label' => $row['label'],
    'value' => $row['value'],
    'color' => $row['color']
    );
    array_push($array,$json);
}

echo json_encode($json, true);
?>

