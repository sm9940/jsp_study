<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="forward_action.jsp" method="post">
		forward action: <input type="text" name ="username">
		<input type="submit" value = "확인">
	</form>
	<form action="response_send_redirect.jsp" method="post">
		sendRedirect action: <input type="text" name ="username">
		<input type="submit" value = "확인">
	</form>
</body>
</html>