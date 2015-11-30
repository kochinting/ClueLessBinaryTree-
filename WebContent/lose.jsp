<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Model.ServerGame" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#header {
    text-align:center;
}
</style>
<%
String playerName= request.getParameter("playerName");
String suspect= request.getParameter("suspect");
String weapon= request.getParameter("weapon");
String room= request.getParameter("room");

ServerGame Solution= new ServerGame();
String roomSolution= Solution.getroomSolution();
String suspectSolution= Solution.getsuspectSolution();
String weaponSolution= Solution.getweaponSolution();
String checkSuspect;
String checkRoom;
String checkWeapon;
if(suspect.equals(suspectSolution)){
	checkSuspect="Correct";
}else {checkSuspect="Incorrect";}

if(room.equals(roomSolution)){
	checkRoom="Correct";
}else {checkRoom="Incorrect";}

if(weapon.equals(weaponSolution)){
	checkWeapon="Correct";
}else {checkWeapon="Incorrect";}
%>

<body bgcolor="#BED661">
<div id="header">
<h1> Sorry, you lose!</h1>
<h2>You accused: </h2>
<h2><%=suspect %> of committing the crime in the <%=room %> with the <%=weapon %>. </h2>
<%  if (suspect.equals("Scarlet")){%>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<%} %>
<%  if (suspect.equals("Mustard")){%>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<%} %>
<%  if (suspect.equals("White")){%>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<%} %>
<%  if (suspect.equals("Green")){%>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%} %>
<%  if (suspect.equals("Peacock")){%>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%} %>
<%  if (suspect.equals("Plum")){%>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%} %>


<%  if (room.equals("Study")){%>
<img src= "http://www.cluedofan.com/cards/brEscritorio.jpg">
<%} %>
<%  if (room.equals("Hall")){%>
<img src= "http://www.cluedofan.com/cards/brHall.jpg">
<%} %>

<%  if (room.equals("Lounge")){%>
<img src= "http://www.cluedofan.com/cards/brEstar.jpg">
<%} %>

<%  if (room.equals("DiningRoom")){%>
<img src= "http://www.cluedofan.com/cards/brJantar.jpg">
<%} %>

<%  if (room.equals("Kitchen")){%>
<img src= "http://www.cluedofan.com/cards/brCozinha.jpg">
<%} %>

<%  if (room.equals("Ballroom")){%>
<img src= "http://www.cluedofan.com/cards/brFestas.jpg">
<%} %>

<%  if (room.equals("Conservatory")){%>
<img src= "http://www.cluedofan.com/cards/brMusica.jpg">
<%} %>

<%  if (room.equals("Library")){%>
<img src= "http://www.cluedofan.com/cards/brBiblioteca.jpg">
<%} %>
<%  if (room.equals("BilliardRoom")){%>
<img src= "http://www.cluedofan.com/cards/brJogos.jpg">
<%} %>



<%  if (weapon.equals("Rope")){%>
<img src= "http://www.cluedofan.com/cards/brCorda.jpg">
<%} %>
<%  if (weapon.equals("Pipe")){%>
<img src= "http://www.cluedofan.com/cards/brCano.jpg">
<%} %>
<%  if (weapon.equals("Knife")){%>
<img src= "http://www.cluedofan.com/cards/brPunhal.jpg">
<%} %>
<%  if (weapon.equals("Wrench")){%>
<img src= "http://www.cluedofan.com/cards/brChave.jpg">
<%} %>
<%  if (weapon.equals("Candlestick")){%>
<img src= "http://www.cluedofan.com/cards/brCastical.jpg">
<%} %>
<%  if (weapon.equals("Revolver")){%>
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<%} %>
<p></p>

<p>The correct answer is: <%= suspectSolution %>, <%= roomSolution %>, <%= weaponSolution %></p>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<img src= "http://www.cluedofan.com/cards/brEscritorio.jpg">
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<p></p>
<img src="http://cdn.meme.am/instances/500x/53286795.jpg">
<p></p>
<form name="index" action="index.jsp" method="post" >
	<input type="submit" value="Restart the Game!" name="restart"/>
</form>
<p></p>
</div>
</body>
</html>