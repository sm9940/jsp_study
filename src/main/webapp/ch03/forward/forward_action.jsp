<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	//데이터 이동시 한글이 깨지지 않도록 인코딩 처리
	request.setCharacterEncoding("UTF-8"); 
	%>
	<jsp:forward page="page_control_end.jsp">
	<jsp:param value="010-0000-0000" name="tel"/>
	</jsp:forward>
</body>
</html>