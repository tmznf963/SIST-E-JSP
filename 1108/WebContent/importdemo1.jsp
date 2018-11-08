<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="header.jsp" var="myheader">
	<c:param name="userid" value="GamMa"/>
</c:url>
<c:url value="footer.html" var="myfooter" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
	<c:import url="${myheader}" />
		<p class="text-success text-center">안녕하십니까~ 부트스트랩 점보트론 연습입니다.</p>
	<c:import url="${myfooter }"/>
</body>
</html>