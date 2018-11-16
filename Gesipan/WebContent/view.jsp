<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="sc" class="com.example.libs.controller.SelectController" />
<c:set var="gesipan" value="${sc.select(param.idx)}" />  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용보기</title>
</head>
<body>
	<h1>${param.idx}번 글 내용</h1>
	<table border="1">
		<tr>
			<th>작성자</th><td>${gesipan.getName()}</td>
			<th>번호</th><td>${param.idx}</td>
		</tr>
		<tr>
			<th>작성날짜</th><td>${gesipan.getWritedate()}</td>
			<th>조회수</th><td>${gesipan.getReadnum()}</td>
		</tr>
		<tr>
			<th>첨부파일</th><td colspan="3"></td>
		</tr>
	</table>
</body>
</html>


