<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>계산기 서블릿</h2>
	<hr>
	<!-- action: 택배와 주소와 같은 역할, 데이터를 보낼 경로를 지정, 경로는 '프로젝트명/서블릿'  -->
	<!-- method: 택배를 착불로 보낼지 배송비를 포함해서 보낼지와 같은 역할  -->
	<form action="calc.jsp" method="post">
	<input type ="text" name = "n1" size= "10"/>
	<select name="op">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input type = "text" name="n2" size="10"/>
	<input type = "submit" value ="실행"/>
	</form>
</body>
</html>