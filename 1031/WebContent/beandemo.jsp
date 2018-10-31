<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" />
<%-- <%@ page import="com.example.model.Student" %>

<%
	Student student = new Student();
%> --%>
<jsp:useBean id="student" class="com.example.model.Student" />
<jsp:setProperty name="student" property="username" param="username" />
<jsp:setProperty name="student" property="age" param="age" />
<!-- property == Class변수명 -->
<!-- param == TagName -->

<%-- <%
	student.setUsername("김철수");
	student.setAge(24);
%> --%>
<h1>Member Info(Bean Demo)</h1>
<ul>
	<li>이름 : <jsp:getProperty name="student" property="username"/></li>
	<li>나이 : <jsp:getProperty name="student" property="age"/></li>
	<%-- <li>Name : <%=student.getUsername() %></li>
	<li>Age : <%=student.getAge() %></li> --%>
</ul>
