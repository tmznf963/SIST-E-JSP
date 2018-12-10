<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.vo.StudentVO" %>
<jsp:useBean id="dao" class="com.example.dao.StudentDAOImpl"/>
<%
	String hakbun = request.getParameter("hakbun");
	StudentVO student= dao.read(hakbun);
%>
{
	"code" : "success",
	"data" : <%=student%>
}