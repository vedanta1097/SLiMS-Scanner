<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<form action="login.php" method="POST">
		<input type="text" name="username">
		<input type="password" name="password">
		<input type="submit" value="login">
	</form>
	<form action="stock_take_action.php" method="POST">
		<input type="text" name="item_code" placeholder="item code">
		<input type="text" name="real_name" placeholder="real name">
		<input type="submit" value="test stock">
	</form>
	<a href="stock_take_item_exist.php" style="display:block;">view item exist</a>
	<a href="stock_take_item_lost.php" style="display:block;">view item lost</a>
	<a href="stock_take_report.php" style="display:block;">view report</a>
</body>
</html>