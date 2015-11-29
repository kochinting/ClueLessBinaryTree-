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
String suspect1= request.getParameter("suspect");
String weapon1= request.getParameter("weapon");
String location= request.getParameter("location");

System.out.println(suspect1);
System.out.println(weapon1);

%>

<body bgcolor="#BED661">
<h1> Sorry <%= playerName%>, you lose!</h1>
<p>You accused: </p>
<p><%=suspect1 %> of committing the crime in the <%=location %> with the <%=weapon1 %>. </p>
<p></p>
<img src="http://cdn.meme.am/instances/500x/53286795.jpg">
<p></p>
<form name="index" action="index.jsp" method="post" >
	<input type="submit" value="Restart the Game!" name="restart"/>
	<input name="suspect" type="hidden" value="suspect"/>
	<input name="weapon" type="hidden" value="weapon"/>
	<input name="location" type="hidden" value="location"/>
</form>

</body>
</html>