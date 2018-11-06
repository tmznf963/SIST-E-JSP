<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="pd" class ="com.example.libs.ProductBean" />
<c:set target="${pd }" property="name" value="신라멘" />
<c:set target="${pd }" property="price" value="1000" />

<ul>
	<li>상품이름 : <jsp:getProperty property="name" name="pd"/></li>
	<li>상품이름 : ${pd.price }</li>
</ul>