<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:catch var="error">
<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
	url="jdbc:oracle:thin:@192.168.56.4:1521:orcl" user="SCOTT" 
	password="TIGER" var="mydatasource" />
<sql:query dataSource="${mydatasource}" 	sql="SELECT ENAME FROM EMP" var="rs">
	<%-- <sql:param value="KOR"/> --%>
	</sql:query>
	<%-- ROW갯수 : ${rs.getRowCount()} --%>
	<h1 style="text-align:center;color:green;">SCOTT TALBE EMP</h1>
	<table border="1" style="margin-left:auto;margin-right:auto;">
		<thead>
			<tr>
				<th>ENAME</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${rs.getRows()}" var="myrow">
				<tr>
					<td>${myrow.ENAME}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
</c:catch>

<c:if test="${not(empty error)}">
Error Message : ${error}
</c:if>