<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%
String Name= request.getParameter("name");
String suspect= request.getParameter("suspect1");
String weapon= request.getParameter("weapon1");
String room= request.getParameter("room1");
%>

<body bgcolor="#BED661">
<p> Oops! You lose!</p>
<p>You accused: </p>
<p><%=suspect %> of committing the crime in the <%=room %> with the <%=weapon %>. </p>
<p></p>
<img src="http://cdn.meme.am/instances/500x/53286795.jpg">
<p></p>
<form name="index" action="index.jsp" method="post" >
	<input type="submit" value="Restart the Game!" name="restart"/>
</form>

</body>
</html>