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
String suspect= request.getParameter("suspect");
String weapon= request.getParameter("weapon");
String room= request.getParameter("room");
%>

<body bgcolor="#BED661">
<h1> Congratulations! You win!</h1>
<h2>You accused: </h2>
<h2><%=suspect %> of committing the crime in the <%=room %> with the <%=weapon %>. </h2>
<p></p>
<img src="http://cdn.meme.am/instances/500x/65133469.jpg">
<p></p>
<form name="index" action="index.jsp" method="post" >
	<input type="submit" value="Restart the Game!" name="restart"/>
</form>

</body>
</html>