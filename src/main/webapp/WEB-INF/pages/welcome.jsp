<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<h1>Home page</h1>
<p>This is Home page.</p>
<p>${MyModel.name}</p>
<form action="check1" method="post">
<input type="text" name="occupation">
<input type="submit" value="Submit">
</form>
</body>
</html>