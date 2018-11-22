<%@ page language="java" contentType="text/xml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  mariadb-java-client-2.3.0.jar -->

<sql:setDataSource driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://192.168.56.4:3306/world" user="root"
	password="root" var="conn" />



<sql:query dataSource="${conn}" var="rs">
		SELECT distinct CountryCode FROM city
</sql:query>

<result> 
	<c:forEach items="${rs.getRows()}" var="row">
		<countrycode>${row.CountryCode}</countrycode>
	</c:forEach> 
</result>

<!-- CountryCode 값 받아오기 -->









