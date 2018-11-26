<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("userpasswd");
	if(userid.equals("gamma") && passwd.equals("123123")){
		session.setAttribute("userid",userid);//session에 추가
	}
%>