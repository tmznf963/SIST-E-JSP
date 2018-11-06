<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="browser" value="${header['user-agent'] }"  scope="session" />

<c:set var="username" value="${param.username }"/>

<c:set var="age">${param.age}</c:set>

<h1>Set Demo 1</h1>
User-Agent = ${browser} <br>
Name : ${username}<br>
Age : ${age}