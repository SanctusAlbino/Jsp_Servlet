<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>액션 태그 Forward</h1>
	<!-- 액션태그는 JSP의 태그 형태.
		현재 JSP 페이지 => 다른 JSP페이지의 요청
		사용빈도 자체가 낮음 (Spring FrameWork) method(Java)처리를 하기때문.
		Servlet (페이지 전환을 URL을 통해요청받아서 Controller(servlet)에서 할꺼)-->
		 <jsp:forward page ="Ex01_ForwardResult.jsp"></jsp:forward>
</body>
</html>