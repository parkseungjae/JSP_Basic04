<%@page import="jsp04.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result.jsp
	<hr>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setName(name);
	//dto가지고 있는 값ㅇ느 디비에 저장한다.
	%>
	<%= dto.getId() %>
	<%= dto.getPwd() %>
	<%= dto.getName() %>
	<hr>
	<jsp:useBean id = "member" class="jsp04.MemberDTO"/>
	<jsp:setProperty property="*" name = "member"/>
	태그로처리 <br>
	${member.id }
	${member.pwd }
	${member.name }
</body>
</html>