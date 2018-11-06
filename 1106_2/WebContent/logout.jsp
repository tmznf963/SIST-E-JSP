<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="login" class="com.example.libs.LoginBean" scope="session" /> 
<%
if(!login.isVerified()){%>
	<script>
		alert("로그인을 먼저 해주세요.");
		location.href="login.html";
	</script>
<% } else{%>
	<script>
		alert("<%= login.getUserid()%>님! 안녕히가세요~ 다음에 또 오세용");
		location.replace("login.html");
	</script>
<%} 
	response.setHeader("Cache-Control","no-chache");
	response.addHeader("Cache-Control","no-chache");
	response.setHeader("Pargma","No-cache");
	response.setDateHeader("Expires",1L);
%>







