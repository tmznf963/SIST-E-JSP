<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <fmt:requestEncoding value="utf-8"/>
    <sql:setDataSource uri="jdbc:oracle:thin:@192.168.56.4:1521:orcl" driver="oracle.jdbc.driver.OracleDriver"
    user="SCOTT" password="TIGER" var="conn"/>
    <sql:update dataSource="${conn}" var="rs">
    	INSERT INTO Gesipan(idx,name,passwd,email,title,contents,writedate,readnum,grp,lev,step) 
    	VALUES(board_idx_seq.NEXTVAL,?,?,?,?,?,SYSDATE,0,board_idx_seq.CURRVAL,0,0)
    	<sql:param value="${param.name }"/>
    	<sql:param value="${param.passwd }"/>
    	<sql:param value="${param.email }"/>
    	<sql:param value="${param.title }"/>
    	<sql:param value="${param.contents }"/>
    </sql:update> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>