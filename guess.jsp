<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clue-Less Demo by Binary Tree</title>
</head>

<%
String Name= request.getParameter("name");
String Character= request.getParameter("character");
%>


<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>

<p>Player Status:</p>
	<table border="1">
		<tbody>
			<tr>
				<td>Player</td>
				<td>Character</td>
				<td>Location</td>
			</tr>
			<tr>
				<td><%= Name %></td>
				<td><%= Character  %></td>
				<td>Location1</td>
			</tr>
			<tr>
				<td>Player2</td>
				<td>Character2</td>
				<td>Location2</td>
			</tr>
		</tbody>
	</table>
	
<p></p>	
<img src="http://info.articleonepartners.com/wp-content/uploads/2013/06/Clue.jpg">
</body>
</html>