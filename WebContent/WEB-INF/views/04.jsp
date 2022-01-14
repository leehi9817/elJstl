<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el jstl</h1>
	
	<h2>객체접근</h2>

	<h3>자바문법</h3>

	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	name = <%=userVo.getName() %> <br>
	email = <%=userVo.getEmail() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> <br>
	<br>
	num = <%=num %> <br>
	str = <%=str %> <br>	
	<br>
	<br>
	
	<h3>el문법</h3>
	no = ${requestScope.userVo.no} <br>
	name = ${requestScope.userVo.name} <br>
	email = ${requestScope.userVo.email} <br>
	<!-- requestScope, sessionScope 생략 가능 (param은 생략 불가) -->
	password = ${userVo.password} <br>
	gender = ${userVo.gender} <br>
	<br>
	
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>

</body>
</html>