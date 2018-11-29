<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>${MyModel.name}</p>
<p>${MyModel.age}</p>
<p>${MyModel.salary}</p>
<p>${t.occupation}</p>
<form action="check2" method="post">
<input type="submit" value="Submit">
</form>
</body>
</html>