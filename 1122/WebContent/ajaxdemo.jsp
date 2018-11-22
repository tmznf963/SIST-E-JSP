<%@ page language="java" contentType="text/xml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  mariadb-java-client-2.3.0.jar -->

<sql:setDataSource driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://192.168.56.4:3306/world" user="root"
	password="root" var="conn" />



<sql:query dataSource="${conn}" var="rs">
		SELECT ID, Name, CountryCode, District, Population FROM city 
		WHERE CountryCode = ?
		<sql:param value="${param.code}" />
</sql:query>

<result> 
	<c:forEach items="${rs.getRows()}" var="row">
		<city id="${row.ID }"> 
			<name>${row.Name}</name>
			<countrycode>${row.CountryCode}</countrycode>
			<district>${row.District}</district>
			<population>${row.Population}</population>
		</city>
	</c:forEach> 
</result>

<!--  city 모든 값 받아오기 -->









