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
	//현재 페이지 내에서 사용할 수 있는 값
	pageContext.setAttribute("page_today", "2022-12-15");

	//서버- 클라이언트에서 request, response 하는 과정에서 사용할 수 있는 값
	request.setAttribute("req_today", "2022-12-16");
	
	//브라우저 종료 될때(기간 지정 가능)까지 사용할 수 있는 값
	session.setAttribute("session_today", "2022-12-17");
	
	application.setAttribute("app_today", "2022-12-18");
%>

<%=pageContext.getAttribute("page_today") %>
<br>
<%=request.getAttribute("req_today") %>
<br>
<%=session.getAttribute("session_today") %>
<br>
<%=application.getAttribute("app_today") %>
</body>
</html>