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
String Name= request.getParameter("name");
String Character= request.getParameter("character");
String Location= request.getParameter("location");

%>

<body bgcolor="#BED661">
<form name="makeSuggestion" action="guess.jsp" method="post" >
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
			<td>Location: </td>
			<td>
			<select name="location1">
			<option ><%=Location %></option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<p></p>

	<input type="radio" value="Suggested" name="action" checked>Suggestion
	<input type="radio" value="Accused" name="action">Accusation
	<input type="reset" value="Clear" name="clear">
	<INPUT TYPE=SUBMIT VALUE="submit">
	
</form>
</body>
</html>
