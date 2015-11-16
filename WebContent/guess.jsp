<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="Model.ServerGame" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clue-Less Demo by Binary Tree</title>
</head>

<%
String Name= request.getParameter("name");
String Character= request.getParameter("character");
String Location= request.getParameter("location");

%>

<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>
<p>Welcome <%=Name %>! You are <%=Character %> </p>
<p>Your location is <%=Location %> </p>

<form name="playerMove" action="guess.jsp" method="post" >
	<table>
		<tbody>		
		<tr>
			<td>Make Your Move: </td>
			<td>
			<select name="location">
			<option value="Lounge">Lounge</option>
			<option value="Hall">Hall</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="submit" value="Move" name="submit"/>
</form>
<p></p>

<form name="makeSuggestion" action="win.jsp" method="post" >
	<table>
		<tbody>		
		<tr>
			<td>Suspect: </td>
			<td>
			<select name="suspect1">
			<option value="Miss Scarlet">Miss Scarlet</option>
			<option value="Col. Mustard">Col. Mustard</option>
			<option value="Mrs. White">Mrs. White</option>
			<option value="Mr. Green">Mr. Green</option>
			<option value="Ms. Peacock">Ms. Peacock</option>
			<option value="Pro. Plum">Pro. Plum</option>
			</select>
			</td>
		</tr>
		</tbody>
		<tbody>		
		<tr>
			<td>Weapon: </td>
			<td>
			<select name="weapon1">
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
				<tbody>		
		<tr>
			<td>Room: </td>
			<td>
			<select name="room1">
			<option value="Lounge">Lounge</option>
			<option value="Hall">Hall</option>
			<option value="Study">Study</option>
			<option value="Library">Library</option>
			<option value="Billiard Room">Billiard Room</option>
			<option value="Dining Room">Dining Room</option>
			<option value="Conservatory">Conservatory</option>
			<option value="Ballroom">Ballroom</option>
			<option value="Kitchen">Kitchen</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<p></p>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Suggestion" name="suggestion"/>
	<input type="submit" value="Accusation" name="acussation"/>
</form>
<p></p>

<jsp:include page="gamestatus.jsp"/>


</body>
</html>