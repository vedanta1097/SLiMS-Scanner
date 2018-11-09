<?php

require_once('dbConnect.php');

$response = array();

$_item_q = mysqli_query($conn, "SELECT item_code, title, checked_by  
                                FROM stock_take_item
                                WHERE status = 'm'");

while ($row = $_item_q->fetch_assoc())
{
    array_push($response, $row);
}

echo json_encode($response);