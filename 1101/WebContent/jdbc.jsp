<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error/error.jsp"%>
<%@ page import="java.sql.DriverManager, java.sql.Connection" %>
<%@ page import="java.sql.Statement, java.sql.ResultSet" %>
<%@ page import="java.util.Properties, java.io.FileInputStream" %>
<%@ page import="java.sql.PreparedStatement"%>
<%
	String countrycode = request.getParameter("countrycode");
	ResultSet rs =null, rs1=null;
	Statement stmt = null; PreparedStatement pstmt = null;
		Properties dbinfo = new Properties();
		String path = application.getRealPath(".") + "/resources/dbinfo.properties";
		dbinfo.load(new FileInputStream(path));
		Class.forName(dbinfo.getProperty("DBDRIVER"));
		Connection conn = DriverManager.getConnection(dbinfo.getProperty("DBURL"),
																		dbinfo.getProperty("DBUSER"),
																		dbinfo.getProperty("DBPWD"));
	if(countrycode == null){
		stmt = conn.createStatement();
		String sql = "SELECT DISTINCT CountryCode FROM city ORDER BY CountryCode ASC";
		rs = stmt.executeQuery(sql);
	}else{//submit 버튼을 한 번 이상 누를 경우
		String sql = "SELECT * FROM city WHERE CountryCode =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, countrycode);
		rs1 = pstmt.executeQuery();
	}
%>
<form method="post">
	CountryCode : 
	<select name="countrycode">
		<option>--선택--</option>
		<% if(rs != null){ %>
			<%
				while(rs.next()){
					String code = rs.getString(1);
					out.println("<option value='" + code +"'>" + code + "</option>");
				}
			%>
		<% }  %>
	</select><br>
	<input type="submit" value="검색"/>
</form>
<hr>

<% if(countrycode != null){ %>
<table border='1'>
	<thead>
		<tr>
			<th>ID</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th>
		</tr>
	</thead>
	<tbody>
		<% while(rs1.next()){ %>
			<tr>
				<td><%=rs1.getInt("ID") %></td>
				<td><%=rs1.getString("Name") %></td>
				<td><%=rs1.getString("CountryCode") %></td>
				<td><%=rs1.getString("District") %></td>
				<td><%=rs1.getInt("Population") %></td>
			</tr>
		<% } %>
	</tbody>
</table>
<%} %>
<%
	if(rs != null) rs.close();    if(rs1 != null) rs1.close();
	if(stmt != null) stmt.close();  if(pstmt != null) pstmt.close();
	conn.close();
%>