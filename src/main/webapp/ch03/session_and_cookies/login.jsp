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
 	request.setCharacterEncoding("UTF-8"); //클라이언트로부터 전송되는 데이터 인코딩
 	
 	//파라메타 값 가져오기
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	String loginChk = request.getParameter("loginChk");
 	
 	//DB의 사용자 id, pw
 	String dbid = "user";
 	String dbpw = "1234";
 	if(dbid.equals(id)){//아이디가 같으면
 		if(dbpw.equals(pw)){//비밀번호가 같으면
 			//로그인 성공시 세션 생성(아이디, 비밀번호 저장)
 			session.setAttribute("id", id); //아이디 저장
 			session.setAttribute("pw", pw); //비밀번호 저장
 			//아이디 기억 체크시 사용자의 아이디를 쿠키에 저장
 			if(loginChk!=null){
 				Cookie c = new Cookie("id",id);
 				c.setMaxAge(60*60); //쿠키를 얼마동안 저장 할건지(초단위 입력)- 60분
 				c.setPath("/"); //쿠키를 사용할 경로를 지정
 				response.addCookie(c); //사용자 pc에 저장하기 위해 response객체에 담아서 응답
 			} else {
 				Cookie c = new Cookie("id",null);
 				c.setMaxAge(60*60); //쿠키를 얼마동안 저장 할건지(초단위 입력)- 60분
 				c.setPath("/"); //쿠키를 사용할 경로를 지정
 				response.addCookie(c); //사용자 pc에 저장하기 위해 response객체에 담아서 응답
 			}
 			
 			
 			
 			%>
 			<script>
 			location.href = "main.jsp"; //로그인 성공시 main.jsp로 이동
 			</script>
 			<%
 		} else{
 			//비밀번호가 같지 않을때
 			%>
 			<script>
 				alert("비밀번호가 올바르지 않습니다.");
 				location.href="index.jsp";
 			</script>
 			<%
 		}
 	}
 %>
</body>
</html>