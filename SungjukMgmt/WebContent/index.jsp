<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.example.dao.SqlSessionFactoryBean" %>
<%@ page import="java.util.List, com.example.vo.StudentVO" %>
<jsp:useBean id="dao" class="com.example.dao.StudentDAOImpl" />

<%
	List<StudentVO> list = dao.readAll();
	String str = "";
	for(StudentVO studentVo : list){
		str += studentVo.toString() + ",";
	}
	if(str.length() > 0) str = str.substring(0, str.length() - 1);
%>  
{
	"code" : "success",
	"data" : [<%=str %>]
}