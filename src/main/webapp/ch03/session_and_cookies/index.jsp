<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
html, body {
height : 100%;
margin : 0;
}
form {
	height: 100%;
	display: flex;
	/* justify-content: center; */
	align-items: center;
}
label {
	width: 70px;
	display: inline-block;
}
div {
	width: 300px;
	margin: 0 auto;
}

h1 {
	font-size : 20px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

</head>
<body>
<form action="login.jsp" method ="post">
<div>
<h1>관리시스템 로그인</h1>
<label for="id">아이디</label>
<input type = "text" name ="id" id= "id"/>
<br>
<label for = "pw">비밀번호</label>
<input type="password" id="pw" name="pw"/>
<br>
<br>
<input type="checkbox" name = "loginChk" id ="loginChk">아이디 기억
<br>
<input type ="submit" value = "로그인">
<input type ="reset" value = "취소">
</div>
</form>

<%
	Cookie[] c = request.getCookies(); //사용자 pc에 저장된 쿠키를 가져온다
		
	if(c != null){ //저장된 쿠키가 있다면
		for(Cookie cf : c){
			System.out.println("저장된 쿠키값:"+ cf.getValue());
			//쿠키에 null값을 저장했다면 값을 가지고 올때는 빈문자열을 가져온다.	
			if(cf.getName().equals("id")){//쿠키의name이 id라면
				if(!cf.getValue().equals("")){
					%>
					<script>
					//user 출력
					$("#id").val("<%=cf.getValue()%>");
					//check박스 체크
					$("#loginChk").prop("checked",true);
					</script>
					<%
				} else{
					%>
					<script>
					//user 출력
					$("#id").val("");
					//check박스 체크
					$("#loginChk").prop("checked",false);
					</script>
					<%
				}
			}
		}
	}
%>
</body>
</html>