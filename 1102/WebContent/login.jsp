<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="login" class="com.example.libs.LoginBean" scope="session" />
<%
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	if(userid.equals("asdasd") &&passwd.equals("123123")){
%>
	<jsp:setProperty name="login" property="userid" value="<%=userid %>" />
	<jsp:setProperty name="login" property="verified" value="true"/>
	<script>
		alert("Login Success");
	</script>
	<a href="secure.jsp">회원 전용 페이지 이동</a>
<%} else{%>
	<script>
		alert("Login Failure");//history.back();
	</script>
	<a href="login.html">로그인 페이지 이동</a>
<%}%>