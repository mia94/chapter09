<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookies cookie = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		String cookie = <%=cookie.getValue("language") %>
		if(cookie=="eng"){
			$("#title").html("Hello, This is Cookie example");
		}
	})
</script>
</head>
<body>
	<h1 id="title">이것은 쿠키예제입니다.</h1>
	
	<form action="examResult.jsp" method="post">
		<input type="radio" name="language" value="kor"> 한국어 페이지 보기
		<input type="radio" name="language" value="eng"> 영어 페이지 보기
		<input type="submit" value="설정">
	</form>
</body>
</html>