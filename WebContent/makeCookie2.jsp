<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("onon", "1time"); //한글로 넣으면 500에러, 영어는 작동
	cookie.setMaxAge(60*60);//초단위로 입력 60*60은 한시간
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
	<%= cookie.getName() %> 쿠키의 값 = "<%=cookie.getValue() %>"
</body>
</html>