<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	int dan = Integer.parseInt(request.getParameter("dan"));
	//request내장객체 주소창querystring 값 -->  ?dan=5
%>
<%for(int i = 1 ; i <=9 ; i++) { %>
<%= dan%> x <%= i %> = <%=dan*i %> <br>
<% }%>