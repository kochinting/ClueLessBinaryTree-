<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%
String playerName= request.getParameter("playerName");
//int playerCharacter= Integer.parseInt(request.getParameter("playerCharacter"));
String location= request.getParameter("location");
String suspect= request.getParameter("suspect");
String weapon= request.getParameter("weapon");
String room= request.getParameter("room");

%>

<body bgcolor="#BED661">
<h1>You accused: </h1>
<h1><%=suspect %> of committing the crime in the <%=room %> with the <%=weapon %>. </h1>
<p></p>
<p></p>


</body>
</html>