<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="easy" uri="/WEB-INF/tlds/state.tld" %> 
<h1>Body가 있는 SimpleTag</h1>
<esay:select> 
	<option value="${value }">${text}</option>
</esay:select>