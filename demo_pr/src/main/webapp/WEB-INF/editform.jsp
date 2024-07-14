<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update" method="post">
	ID:<input type="number" name ="id" value="${product.getId()}">
	Name:<input type="text" name="name" value="${product.getName()}">
	Cost:<input type="number" name="cost" value="${product.getCost()}">
	Quantity:<input type="number" name="quant" value="${product.getQuantity()}">
	<input type="submit" value="update"/>
</form>

</body>
</html>