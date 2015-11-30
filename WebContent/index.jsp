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
<style>

#header {
    background-color:DarkGreen;
    color:white;
    text-align:center;
    padding:1px;
}
#section {    
text-align:center;
}
#footer {
    background-color:DarkGreen;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>

<body bgcolor="#BED661">

<div id="header">
<h1>Clue-Less Board Game Demo </h1>
</div>

<div id="section">
<p></p>
<img src= "http://allgiftsconsidered.com/wp-content/uploads/2012/10/classic-board-game-clue.jpg"style="width:400px;height:200px;">
<img src= "https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/Software-Freedom-Conservancy-Logo.svg/600px-Software-Freedom-Conservancy-Logo.svg.png" style="width:100px;height:100px;">
<h2>Welcome to the Game!</h2>
<form name="enterName" action="gamelobby.jsp" method="post" >
	<table align="center">
		<tbody>
		<tr>
			<td>Enter Your Name: </td>
			<td><input type="text" name="playerName" value=""></td>
		</tr>		
		<tr>
			<td>Select Your Character: </td>
			<td>
			<select name="playerCharacter">
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
	</table>
	<p></p>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Join the Game!" name="indexSubmit"/>
</form>
<p></p>
</div>
<div id="footer">
Copyright ©2015 Binary Tree. All Rights Reserved.
</div>
</body>
</html>