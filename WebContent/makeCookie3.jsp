<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie co = Cookies.createCookie("name", "우선미"); //클래스안에 인코딩을 넣어놨기때문에 한글사용가능
	Cookie co2 = Cookies.createCookie("id", "mad", "/", -1 );//무한대로 존재하게 하고싶을때 -1값을 maxAge로 설정한다.
	
	response.addCookie(co);
	response.addCookie(co2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	cookies 사용하여 쿠키 생성완료
</body>
</html>