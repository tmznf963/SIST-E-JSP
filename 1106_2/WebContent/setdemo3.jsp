<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %>

<c:set var="DBDRIVER" value="org.mariadb.jdbc.Driver" scope="page"/>
<c:set var="DBURL" value="jdbc:mariadb://192.168.56.4/world" scope="request"></c:set>
<c:set var="DBUSER" value="root" scope="session"></c:set>
<c:set var="DBPWD" value="root" scope="application"></c:set>

<for:forward page="setdemo4.jsp"/>