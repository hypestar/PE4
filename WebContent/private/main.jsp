<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Main</title>
</head>
<body>
<% String username = (String) request.getSession(false).getAttribute("username"); %>

<p>Hello <%out.print((String)session.getAttribute("username")); %> </p><br>
<a href="/PE4/Logout"> Logout </a> <br>
<a href="/PE4/private/carlist.jsp">Create Car List</a>

</body>
</html>