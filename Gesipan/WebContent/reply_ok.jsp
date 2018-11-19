<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="gesipan" class="com.example.libs.model.GesipanVO" />
<jsp:useBean id="ic" class="com.example.libs.controller.InsertController" />
<jsp:useBean id="uc" class="com.example.libs.controller.UpdateController" />
<fmt:requestEncoding value="utf-8" />
<c:set var="idx" value="${param.idx }"/>
<c:set var="grp" value="${param.grp }"/>
<c:set var="lev" value="${param.lev }"/>
<c:set var="step" value="${param.step }"/>

<!-- 답글 다는 사람의 -->
<jsp:setProperty name="gesipan" property="name" value=""/>
<jsp:setProperty name="gesipan" property="email" value=""/>
<jsp:setProperty name="gesipan" property="title" value=""/>
<jsp:setProperty name="gesipan" property="contents" value=""/>
<jsp:setProperty name="gesipan" property="grp" value="${param.grp}"/>
<jsp:setProperty name="gesipan" property="lev" value="${param.lev + 1}"/> <!-- 레벨은 1 증가 -->
${uc.updateStep(param.grp, param.step); '' }
<jsp:setProperty name="gesipan" property="step" value="${param.step + 1}"/>

<c:set var="row" value="${ic.insert(gesipan) }" />
<c:if test="${row eq 1 }">
	<script>
		location.href="idex.jsp";
	</script>
</c:if>
<c:if test="${row ne 1 }">
	<script>
		history.back();
	</script>
</c:if>