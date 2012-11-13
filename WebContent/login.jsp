<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>PE4 - login page</title>
</head>
<body>
	<form action="j_security_check" method="post">
		Username : <input type="text" name="j_username" size="20"><br>
		Password : <input type="password" name="j_password"><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>