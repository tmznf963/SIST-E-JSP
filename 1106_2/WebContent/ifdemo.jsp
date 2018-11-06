<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="season" value="${empty param.season ? ' ' : param.season}"/>
<form>
	Favorite Season : <input type="text" name="season"/>
	<input type="submit" value="전송"/>
</form>
<c:if test="${season eq 'spring' }">
	<c:out value="<span style='color:yellow'> 개나리 , 진달래</span>" escapeXml="false"/>
</c:if>
<c:if test="${season eq 'summer' }">
	<c:out value="<span style='color:green'> 장미, 아카시아</span>" escapeXml="false"/>
</c:if>
<c:if test="${season eq 'fall' }">
	<c:out value="<span style='color:brown'> 코스모스, 백합</span>" escapeXml="false"/>
</c:if>
<c:if test="${season eq 'winter' }">
	<c:out value="<span style='color:skyblue'> 동백, 매화</span>" escapeXml="false"/>
</c:if>