<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie1 = new Cookie("id","mad");
	cookie1.setDomain("localhost"); //볼수있음
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("only","onlycookie");
	response.addCookie(cookie2); //기본값이라 볼수있음
	
	Cookie cookie3 = new Cookie("invalid","invalidcookie");
	cookie3.setDomain("javacan.tistory.com"); //볼수없음
	response.addCookie(cookie3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	도메인을 사용하여 쿠키생성완료
</body>
</html>