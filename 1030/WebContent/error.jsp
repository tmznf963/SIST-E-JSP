<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%><!-- errorPage -->
<img src="images/smok.jpg" alt="한지민" title="담배지민" width="400px" height="300px"/>
<div>서버에 잠시 오류가 생겼습니다. 양해 부탁 드립니다.</div>
<%
	if(exception instanceof ArithmeticException){
		out.println("ArithmeticException");
	}else if(exception instanceof NullPointerException){
		out.println("NullPointerException");
	}else if(exception instanceof java.io.IOException){
		out.println("java.io.IOException");
	}else if(exception instanceof java.sql.SQLException){
		out.println("java.sql.SQLException");
	}else{
		out.println("Exception");
	}
%>