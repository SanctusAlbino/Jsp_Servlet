<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사원 목록</h1>
	<table border="solid =1px #333">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>성별</td>
			<td>이메일</td>
			<td>번호</td>
		</tr>
	
	
	<c:forEach items="${list}" var="vo">
		
		<tr>
			<td>${vo.id}</td>
			<td><a href="detail.cu?id=${vo.id}"> ${vo.name}</a></td>
			<td>${vo.gender}</td>
			<td>${vo.email}</td>
			<td>${vo.phone}</td>
		</tr>
		
	</c:forEach>
	</table>
	<a href="insert.cu">새로입력 화면</a>
	
	
	
</body>
</html>