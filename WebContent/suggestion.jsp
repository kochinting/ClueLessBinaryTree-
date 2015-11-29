<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="Model.ServerGame" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>suggestion</title>
</head>

<%
String playerName= request.getParameter("playerName");
int playerCharacter= Integer.parseInt(request.getParameter("playerCharacter"));
String location= request.getParameter("location");
String suspect= request.getParameter("suspect");
String weapon= request.getParameter("weapon");
String room= request.getParameter("room");
%>
suggestcheck.jsp?playerName=<%= playerName %>&playerCharacter=<%= playerCharacter %>&suspect=<%= suspect %>&weapon=<%= weapon %>&room=<%= room %>

<body bgcolor="#BED661">
<form name="makeSuggestion" action="suggestcheck.jsp" method="get" >
	<table>
		<tbody>		
		<tr>
			<td>Room: </td>
			<td>
			<select name="room">
			<option value="Study">Study</option>
			<option value="Hall">Hall</option>
			<option value="Lounge">Lounge</option>
			<option value="DiningRoom">DiningRoom</option>
			<option value="Kitchen">Kitchen</option>
			<option value="Ballroom">Ballroom</option>
			<option value="Conservatory">Conservatory</option>
			<option value="Library">Library</option>
			<option value="BilliardRoom">BilliardRoom</option>
			</select>
			</td>
		</tr>
		</tbody>
		<tbody>		
		<tr>
			<td>Suspect: </td>
			<td>
			<select name="suspect">
			<option value="Scarlet">Miss Scarlet</option>
			<option value="Mustard">Col. Mustard</option>
			<option value="White">Mrs. White</option>
			<option value="Green">Mr. Green</option>
			<option value="Peacock">Ms. Peacock</option>
			<option value="Plum">Pro. Plum</option>
			</select>
			</td>
		</tr>
		</tbody>
		<tbody>		
		<tr>
			<td>Weapon: </td>
			<td>
			<select name="weapon">
			<option value="Rope">Rope</option>
			<option value="Lead Pipe">Lead Pipe</option>
			<option value="Knife">Knife</option>
			<option value="Wrench">Wrench</option>
			<option value="Candlestick">Candlestick</option>
			<option value="Revolver">Revolver</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Make Suggestion" name="suggestion"/>
</form>
<p></p>

<form name="makeAccusation" action="win.jsp" method="get" >
	<table>
		<tbody>		
		<tr>
			<td>Room: </td>
			<td>
			<select name="room">
			<option value="Study">Study</option>
			<option value="Hall">Hall</option>
			<option value="Lounge">Lounge</option>
			<option value="DiningRoom">DiningRoom</option>
			<option value="Kitchen">Kitchen</option>
			<option value="Ballroom">Ballroom</option>
			<option value="Conservatory">Conservatory</option>
			<option value="Library">Library</option>
			<option value="BilliardRoom">BilliardRoom</option>
			</select>
			</td>
		</tr>
		</tbody>
		<tbody>		
		<tr>
			<td>Suspect: </td>
			<td>
			<select name="suspect">
			<option value="Scarlet">Miss Scarlet</option>
			<option value="Mustard">Col. Mustard</option>
			<option value="White">Mrs. White</option>
			<option value="Green">Mr. Green</option>
			<option value="Peacock">Ms. Peacock</option>
			<option value="Plum">Pro. Plum</option>
			</select>
			</td>
		</tr>
		</tbody>
		<tbody>		
		<tr>
			<td>Weapon: </td>
			<td>
			<select name="weapon">
			<option value="Rope">Rope</option>
			<option value="Lead Pipe">Lead Pipe</option>
			<option value="Knife">Knife</option>
			<option value="Wrench">Wrench</option>
			<option value="Candlestick">Candlestick</option>
			<option value="Revolver">Revolver</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Make Accusation" name="accusation"/>
</form>

</body>
</html>
