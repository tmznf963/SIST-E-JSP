<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>여기는 includedemo.jsp 입니다.</h1>
	<%-- <% pageContext.include("/date.jsp"); %> --%>
	<%-- <%@ include file="/date.jsp" %> --%> <!-- include 디렉티브 -->
	<jsp:include page="/date.jsp" /> <!-- Action Tag -->
	<hr>
	<%-- <%@ include file="/image.html" %> --%>
	<jsp:include page="/image.html" />
	<hr>
	<h3>End</h3>
</body>
</html>