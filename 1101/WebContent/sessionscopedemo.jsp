<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cnt" class="com.example.libs.CountBean" scope="session" />
																														<!-- scope="[?]"  -->
<h1>Session Scope</h1>
방문자수 : <p style="color:orange">
					<jsp:getProperty name="cnt" property="count"/>
					</p><br>
<a href="sessionscopedemo.jsp">다시 방문하기</a>