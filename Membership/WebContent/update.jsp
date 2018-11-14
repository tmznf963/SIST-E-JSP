<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="uc" class="com.example.libs.controller.UpdateController" />
<jsp:useBean id="member" class="com.example.libs.model.MemberVO" />

<jsp:setProperty name="member" property="userid" value="${sessionScope.userid}"/><!-- <input>  name 값 -->
<jsp:setProperty name="member" property="email" value="${param.email}" />
<jsp:setProperty name="member" property="zipcode" value="${param.zippost1}-${param.zippost2}" />
<jsp:setProperty name="member" property="address1" value="${param.address1}" />
<jsp:setProperty name="member" property="address2" value="${param.address2}" />
<c:set var="row" value="${uc.updateMember(member)}" />
<c:if test="${row eq 1}">
	<c:redirect url="index.html" />
</c:if>
<c:if test="${row ne 1}">
	<script>
		history.back();
	</script>
</c:if>