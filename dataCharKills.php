<?php
error_reporting(0);
require_once("/includes/config.php");
header('Content-Type: application/json');
$array = array();
$connection = mysqli_connect(SERVER, USER, PASSWORD, DATABASE);
$sql="SELECT * FROM tbl_set, tbl_data WHERE set_id='2' AND data_set=set_id";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)){
$json[] = array(
    'label' => $row['data_label'],
    'value' => $row['data_value'],
    'tooltip' => $row['data_tooltip'],
    'setName' => $row['set_name']
    );
    array_push($array,$json);
}

echo json_encode($json, true);
?>
