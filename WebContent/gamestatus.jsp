<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%// @ page import="Model.ServerGame" %>
<%@ page import="Model.Player" %> 
<%@ page import="Model.Weapon" %> 
<%@ page import="java.sql.*" %>

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

<% 
	Player player = new Player();
	ResultSet players= player.getPlayers();
	
	Weapon weapon = new Weapon();
	ResultSet weapons= weapon.getWeapons();
%>

<body bgcolor="#BED661">

<p>Player Status:</p>
	<table border="2">
		<tbody>
			<tr>
				<td>id</td>
				<td>Player</td>
				<td>Character</td>
				<td>Location</td>
			</tr>	
			<% while (players.next()) { %>
			<tr>
				<td><%= players.getInt("ID") %></td>
				<td><%= players.getString("NAME")%></td>
				<td><%= players.getString("CHARACTER")%></td>
				<td><%= players.getString("LOCATION")%></td>
			</tr>
			<% }%>	
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
				<% while (weapons.next()) { %>
			<tr>
				<td><%= weapons.getString("WEAPON") %></td>
				<td><%= weapons.getString("WEAPON_LOCATION")%></td>
				
			</tr>
			<% }%>	
		</tbody>
	</table>
	
<p></p>	

<img src="http://info.articleonepartners.com/wp-content/uploads/2013/06/Clue.jpg">

</body>
</html>