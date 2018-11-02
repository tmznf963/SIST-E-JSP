<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="login" class="com.example.libs.LoginBean" scope="session" />
<%
if(login.isVerified()){%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 페이지</title>
</head>
<body style="background-color:orange">
	<jsp:getProperty name="login" property="userid" /> 님! <br>
	<p style="color:green;font-size:2em;">회원만의 서비스를 경험해보세요.</p>
	<a href="logout.jsp">Logout</a>
</body>
</html>
<% } else{%>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 페이지</title>
</head>
<body style="background-color:red">
	<script>
		alert("반드시 로그인을 하셔야 합니다.");
		location.href="login.html";//redirect
	</script>
</body>
</html>
<% }%>








