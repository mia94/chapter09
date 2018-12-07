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
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	
	if(id.equals(pass)){ //브라우저에서 넘어온 아이디와 비밀전호가 일치하는지 확인
		Cookie cookie = Cookies.createCookie("AUTH", id,"/",60*60);
		response.addCookie(cookie);
		out.print("로그인에 성공하였습니다.");
	}else{
		%>
	<script>
		alert("로그인에 실패하였습니다.");
		history.go(-1); //이전페이지로 돌아감
		//location.href="loginForm.jsp"
	</script>
		<%
	}
%>
</body>
</html>