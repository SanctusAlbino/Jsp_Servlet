<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>반복문</h3>
	<!-- i가 홀수인지 짝수인지를 판단해서 출력해보기 ex)변수 출력 0 짝수 1홀수 -->
	<%
		for(int i =0; i<10; i++){
			//p태그가 10번 출력되게 만들어보기 (1번)
			//p태그에 i값0~9까지가 출력되게 만들어보기%>
		<%if(i%2==0){ %>
			<p>변수 출력: <%=i+"짝수" %></p>
			<%}else{ %>
			<p>변수 출력 <%=i+"홀수" %></p>
			<%} %>
		<p>태그<%=i%></p>
		
		
	<%}%>
</body>
</html>