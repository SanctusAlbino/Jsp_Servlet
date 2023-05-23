<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청해보기</h1>
	<!-- 
		특정한 Servlet파일 (Mapping=> "/요청주소") 에 어떠한 정보를 주고 다음 작업을 요청한다.(Client)
		ex)네이버에 아이디 비밀번호를 입력하고 로그인버튼을 누른다. => 로그인 후 작업을 요청한다.
		webapp(view):눈에 보이는 영역의 작업 (Html, Jsp, xmlLayout ...)
		Java (Controller): 눈에 안보이지만 View에서 들어온 요청을 처리하는 부분.
						(Java, C++, C#, Python, Servlet ...등의 백엔드 언어) 
		request(Model) : View와 Controller 사이에서 데이터를 전송하는 목적으로 사용하는 객체. (사용하는 로직)
		MVC 패턴 - Web에서 가장 흔히 그리고 널리 사용되는 디자인 패턴 (C-> V->C->M->V->C)-->
		<!-- Get방식으로 Servlet 요청해서보기, Post방식으로 Servlet에 요청해보기
		요청받을 맵핑 => Ex01_Request <=
	 	//localhost/imp/Ex01_Request => Servlet파일이 동작
	 	
	 	폼태그 이용해서 작업해보기.
	   -->
	<h3>Get방식 요청</h3>
	<form action="../Ex01_Request" method="get">
		<input type="text" name="id" />
		<input type="text" name="pw" />
		<input type="submit">
	</form>
	<form action="../Ex01_Request" method="post">
		<input type="text" name="id" />
		<input type="text" name="pw" />
		<input type="submit">
	</form>
	
	
</body>
</html>