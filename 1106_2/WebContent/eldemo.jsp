<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"%>
<%-- ${ answer = "Hello, World" ; '' }	
<!-- 세미콜론 연산 앞에는 실행 안됨 -->
${ answer} --%>

${ result = (a,b) -> a+b ; ''}

${ result(4,6) }
