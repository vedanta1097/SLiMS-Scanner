<?php 
require_once('dbConnect.php');

$response = array();

if ($_SERVER['REQUEST_METHOD']=='POST') 
{
	$real_name = $_POST['real_name'];
	$itemCode = $_POST['item_code'];

	$_item_q = mysqli_query($conn, "SELECT status 
								FROM stock_take_item 
								WHERE item_code = '{$itemCode}'");
	$item_info = $_item_q->fetch_assoc();

	if ($item_info['status'] == 'l') 
	{
		$response['message'] = "Item " . $itemCode . " is currently on LOAN.";
	}
	else if ($item_info['status'] == 'e')
	{
		$response['message'] = "Item " . $itemCode . " is already SCANNED.";
	}
	else if ($item_info['status'] == 'm')
	{
		$curr_time = date('Y-m-d H:i:s');

		$update = mysqli_query($conn, 
				"UPDATE stock_take_item
				SET status='e', checked_by='{$real_name}', last_update='{$curr_time}'
				WHERE item_code='{$itemCode}'");

		$update = mysqli_query($conn, 
				"UPDATE stock_take 
				SET total_item_lost=total_item_lost-1 
				WHERE is_active=1");

		$response['message'] = "Item " . $itemCode . " successfully added.";
	}
	echo json_encode($response);
}
