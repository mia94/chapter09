<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 여부 검사</h1>
	<%
		if(cookies.exists("AUTH")){
			out.println("로그인한 상태입니다.<br>");
			out.println(cookies.getValue("AUTH")+"님 반갑습니다.");
		}else{
			out.println("로그인하지 않은 상태입니다.<br>");
		}
	%>
</body>
</html>