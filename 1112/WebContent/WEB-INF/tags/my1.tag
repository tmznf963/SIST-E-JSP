<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless"%>
<%@ tag import="java.util.Calendar" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Calendar now = Calendar.getInstance();
	String greeting = now.get(Calendar.HOUR_OF_DAY) < 12 ? "Good Morning" : 
											now.get(Calendar.HOUR_OF_DAY) < 18 ? "Good Afternoon" : "Good Evening";
	request.setAttribute("greeting",greeting);
%>

<c:set var="greeting" value="${greeting }" />
<div style="color:green;font-size:1.5em;font-wegiht:900">${greeting}</div>
<jsp:doBody />
<span style="color:gray;font-size:2em;font-wegiht:900"> 님! 반가워요~</span>