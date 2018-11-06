<?php 
require_once('dbConnect.php');

$response = array();

if ($_SERVER['REQUEST_METHOD']=='POST') 
{
	$name = $_POST['username'];
	$pass = $_POST['password'];

	$_user_q = mysqli_query($conn, "SELECT user_id, username, realname, passwd, email 
									FROM user 
									WHERE username='{$name}'");
	$user_info = $_user_q->fetch_assoc();

	$user_verified = password_verify($pass , $user_info['passwd']);

	if (!$user_verified) 
	{
		$response['error'] = true;
		$response['message'] = "username atau password salah.";
	}
	else 
	{
		$response['error'] = false;
		$response['message'] = "Login sukses.";
		$response['user'] = [
			'user_id' => $user_info['user_id'],
			'username' => $user_info['username'],
			'real_name' => $user_info['realname'],
			'email' => $user_info['email']
		];
	}
}

echo json_encode($response);
