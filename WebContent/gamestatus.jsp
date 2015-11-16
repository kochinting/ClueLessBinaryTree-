<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Model.ServerGame" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Game Status</title>
</head>

<%
String Name= request.getParameter("name");
String Character= request.getParameter("character");
String Location= request.getParameter("location");
%>
<body bgcolor="#BED661">

<p>Player Status:</p>
	<table border="2">
		<tbody>
			<tr>
				<td>Player</td>
				<td>Character</td>
				<td>Location</td>
			</tr>
			<tr>
				<td><%= Name %></td>
				<td><%= Character %></td>
				<td><%= Location %></td>
			</tr>
			<tr>
				<td>Player2</td>
				<td>Character2</td>
				<td>Location2</td>
			</tr>
		</tbody>
	</table>
	
<p></p>	

<p>Weapon Status:</p>
	<table border="2">
		<tbody>
			<tr>
				<td>Weapon</td>
				<td>Location</td>
			</tr>
			<tr>
				<td>Rope</td>
				<td>Hall</td>
			</tr>
			<tr>
				<td>Lead Pipe</td>
				<td>Study</td>
			</tr>
			<tr>
				<td>Knife</td>
				<td>Library</td>
			</tr>
			<tr>
				<td>Wrench</td>
				<td>Conservatory</td>
			</tr>
			<tr>
				<td>Candlestick</td>
				<td>Ballroom</td>
			</tr>
			<tr>
				<td>Revolver</td>
				<td>Kitchen</td>
			</tr>
		</tbody>
	</table>
	
<p></p>	

<img src="http://info.articleonepartners.com/wp-content/uploads/2013/06/Clue.jpg">

</body>
</html>