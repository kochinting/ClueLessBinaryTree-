<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="Model.ServerGame" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Model.Player" %> 
<%@ page import="java.sql.ResultSet" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clue-Less Demo by Binary Tree</title>
</head>

<%
/*
if (request.getParameter("indexSubmit")!=null){
	
int result=0;
String playerName= new String();
String playerCharacter= new String();

playerName= request.getParameter("name1");
playerCharacter= request.getParameter("character1");

Player player = new Player();
result= player.setPlayers(playerName, playerCharacter);
ResultSet players= player.getPlayers();

}
*/
String Location= request.getParameter("location");
ServerGame test= new ServerGame();
String Name1= test.getValue();
System.out.println(Name1);

%>

		
<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>


<p>Welcome ! You are </p>

<p>Your location is <%=Location %> </p>

<form name="playerMove" action="guess.jsp" method="post" >
	<table>
		<tbody>		
		<tr>
			<td>Make Your Move: </td>
			<td>
			<select name="location">
			<option value="<%=Location %>"><%=Location %></option>
			<option value="Hall">Hall</option>
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="submit" value="Move" name="submit"/>
</form>
<p></p>

<input type="hidden" value="Name" name="name"/>
<input type="hidden" value="Character" name="character"/>

<jsp:include page="suggestion.jsp"/>
<jsp:include page="gamestatus.jsp"/>


</body>
</html>