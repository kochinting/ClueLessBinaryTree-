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
	Player player = new Player();
	ResultSet players= player.getPlayers();
	Weapon weapon = new Weapon();
	ResultSet weapons= weapon.getWeapons();
%>
<Style>
#right {
    text-align:right;
}
</Style>

<body bgcolor="#BED661">
<div id="right">
<h3>Player Status:</h3>
	<table bgcolor="#89E3F0" align="right" border="2">
		<tbody>
			<tr>
				<td>Character</td>
				<td>Location</td>
			</tr>	
			<% while (players.next()) { %>
			<tr>
				<td><%= players.getString("CHARACTER")%></td>
				<td><%= players.getString("LOCATION")%></td>
			</tr>
			<% }%>	
		</tbody>
	</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h3>Weapon Status:</h3>
	<table bgcolor="#FA8072" align="right" border="2">
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h3>Clue Detective Sheets: </h3>
<table bgcolor="#DEB887" align="right" border="2">
		<tbody>	
			<tr>
			    <th>Suspects: </th>
				<th bgcolor="#FF0000"></th>
				<th bgcolor="#FFFF00"></th>
				<th bgcolor="#FFFFFF"></th>
				<th bgcolor="#008000"></th>
				<th bgcolor="#0000FF"></th>
                <th bgcolor="#800080"></th>
			</tr>	
			<tr>
				<td>Miss Scarlet</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
                <td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Col. Mustard</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Mrs. White</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Mr. Green</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Ms. Peacock</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Pro. Plum</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<th>Weapons: </th>
			</tr>	
			
			<tr>
				<td>Rope</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Lead Pipe</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Knife</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Wrench</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Candlestick</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Revolver</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<th>Rooms: </th>
			</tr>	
			<tr>
				<td>Study</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Hall</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Lounge</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>DiningRoom</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Kitchen</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Ballroom</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
						<tr>
				<td>Conservatory</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>Library</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
			<tr>
				<td>BilliardRoom</td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
				<td><input type="checkbox"></td>
			</tr>
		</tbody>
	</table>
</div>

<p></p>	

</body>
</html>