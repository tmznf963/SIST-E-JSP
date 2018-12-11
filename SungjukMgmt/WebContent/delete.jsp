<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="com.example.dao.StudentDAOImpl"/>
<!-- dao 생성자 호출 -->
<%
	String hakbun = request.getParameter("hakbun");//이전 페이지에서 넘기는 name값
	dao.delete(hakbun);
	response.sendRedirect("/SungjukMgmt/");
%>