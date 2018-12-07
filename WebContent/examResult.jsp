<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<%
		String value = request.getParameter("language");
	
		Cookie cookie = Cookies.createCookie("language", value , "/", 60*60);
		response.addCookie(cookie);
		%>
		<script>
			location.href="examForm.jsp"
		</script>
		<%
	%>
</body>
</html>