<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>상품 목록</h2>
 <hr>
 <table border="1">
 <tr>
 <th>번호</th>
 <th>상품명</th>
 <th>가격</th>
 </tr>
 <!-- 컨트롤러에서 전달해준 상품 리스트를 가지고 온다.  -->
 <!-- var: product 객체,items: 상품객체 들어있는 ArrayList -->
 <c:forEach var="p" items="${products}" varStatus="i">
  <tr>
  <td>${i.count}</td>
  <td><a href="/jsp_study/pcontrol?action=info&id=${p.id}">${p.name}</a></td>
  <td>${p.price}</td>
  </tr>
 </c:forEach>
 </table>
</body>
</html>