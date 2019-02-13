<?php

require_once('dbConnect.php');

$response = array();

if ($_SERVER['REQUEST_METHOD']=='GET') 
{
	//ambil dari GET /stock_take_item_exist.php?real_name=""
	$real_name = $_GET['real_name'];

	//tambahkan query untuk checked_by dan sorting 
	$_item_q = mysqli_query($conn, "SELECT item_code, title, checked_by, last_update  
                                FROM stock_take_item
                                WHERE status = 'e' AND checked_by = '{$real_name}'
                                ORDER BY last_update DESC");

	while ($row = $_item_q->fetch_assoc())
	{
	    array_push($response, $row);
	}

	echo json_encode($response);
}

