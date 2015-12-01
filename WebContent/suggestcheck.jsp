<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.ServerGame" %>    
<%@ page import="java.sql.*" %>
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
String playerCharacter= request.getParameter("playerCharacter");
String location= request.getParameter("location");
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

String URL="jdbc:mysql://cluelessbinarytree.cyfolv83fu3j.us-west-2.rds.amazonaws.com:3306/ClueLessBinaryTree";
String USERNAME= "BinaryTree";
String PASSWORD= "BinaryTree";
Connection connection=null;
PreparedStatement moveSuspect= null;
PreparedStatement moveWeapon= null;
ResultSet resultSet= null;
connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);

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
<h2>You suggested: </h2>
<h2><%=suspect %> of committing the crime in the <%=room %> with the <%=weapon %>. </h2>

<%  if (suspect.equals("Scarlet")){%>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(0)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (suspect.equals("Mustard")){%>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(1)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>
<%  if (suspect.equals("White")){%>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(2)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>
<%  if (suspect.equals("Green")){%>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(3)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>
<%  if (suspect.equals("Peacock")){%>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(4)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>
<%  if (suspect.equals("Plum")){%>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%	
String sqlSuspect="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(5)";
moveSuspect= connection.prepareStatement(sqlSuspect);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>


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
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(1)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (weapon.equals("Pipe")){%>
<img src= "http://www.cluedofan.com/cards/brCano.jpg">
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(2)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (weapon.equals("Knife")){%>
<img src= "http://www.cluedofan.com/cards/brPunhal.jpg">
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(3)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (weapon.equals("Wrench")){%>
<img src= "http://www.cluedofan.com/cards/brChave.jpg">
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(4)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (weapon.equals("Candlestick")){%>
<img src= "http://www.cluedofan.com/cards/brCastical.jpg">
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(5)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>

<%  if (weapon.equals("Revolver")){%>
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<%
String sqlweapon="UPDATE ClueLessBinaryTree.Weapon SET WEAPON_LOCATION=? WHERE idWeapon=(6)";
moveSuspect= connection.prepareStatement(sqlweapon);
moveSuspect.setString(1, room);
moveSuspect.executeUpdate();} 
%>



<p>Hint: </p>
<p>Suspect is: <%= checkSuspect %></p>
<p>Room is: <%= checkRoom %></p>
<p>Weapon is: <%= checkWeapon %></p>

<p></p>
</div>


</body>
</html>