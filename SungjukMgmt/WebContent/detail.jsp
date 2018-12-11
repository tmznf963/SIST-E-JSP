<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.vo.StudentVO" %>
<%@ page import="java.util.Map, java.util.HashMap,java.util.List" %>
<jsp:useBean id="dao" class="com.example.dao.StudentDAOImpl"/>
<%
	String hakbun = request.getParameter("hakbun");
	Map<String,Object> map = new HashMap<String, Object>();
	map.put("hakbun",hakbun);//map.put(key, value)
	dao.read(map);
	List<StudentVO> list= (List<StudentVO>)map.get("result");//map.get(key)
	StudentVO student = list.get(0);//list.get(index)
%>
{
	"code" : "success",
	"data" : <%=student%>
}