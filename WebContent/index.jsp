<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Model.Player" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clue-Less Demo by Binary Tree </title>
</head>


<% 

%>

<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>
<img src= "http://allgiftsconsidered.com/wp-content/uploads/2012/10/classic-board-game-clue.jpg"style="width:400px;height:200px;">
<img src= "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Software-Freedom-Conservancy-Logo.svg/600px-Software-Freedom-Conservancy-Logo.svg.png" style="width:100px;height:100px;">


<p>Welcome to the Game!</p>

<form name="enterName" action="gamelobby.jsp" method="post" >
	<table>
		<tbody>
		<tr>
			<td>Enter Your Name: </td>
			<td><input type="text" name="name1" value=""></td>
		</tr>		
		<tr>
			<td>Select Your Character: </td>
			<td>
			<select name="character1">
			<option value="0">Miss Scarlet</option>
			<option value="1">Col. Mustard</option>
			<option value="2">Mrs. White</option>
			<option value="3">Mr. Green</option>
			<option value="4">Ms. Peacock</option>
			<option value="5">Pro. Plum</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<p></p>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Join the Game!" name="indexSubmit"/>
</form>

</body>
</html>