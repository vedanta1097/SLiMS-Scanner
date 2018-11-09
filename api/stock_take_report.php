<?php

require_once('dbConnect.php');

$response = array();

$_report_q = mysqli_query($conn, "SELECT stock_take_name, start_date, total_item_stock_taked, total_item_lost, total_item_loan  
                                FROM stock_take
                                WHERE is_active = 1");

$report_info = $_report_q->fetch_assoc();

$response["stock_take_name"] = $report_info["stock_take_name"];
$response["start_date"] = $report_info["start_date"];
$response["total_item"] = $report_info["total_item_stock_taked"];
$response["total_item_lost"] = $report_info["total_item_lost"];
$response["total_item_loan"] = $report_info["total_item_loan"];

echo json_encode($response);
