<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie1 = new Cookie("path1",URLEncoder.encode("경로:/chapter09/path1","utf-8"));

	cookie1.setPath("/chapter09/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2", URLEncoder.encode("경로: ","utf-8"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3",URLEncoder.encode("경로:/","utf-8")); //루트로 지정했기때문에 어디서든 볼수있음

	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4",URLEncoder.encode("경로:/chapter09/path2","utf-8"));//path2에 저장되었기때문에 1에서는 확인안됨

	cookie4.setPath("/chapter09/path2");
	response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키생성완료
</body>
</html>