<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="Model.ServerGame" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="Model.Player" %> 
<%@ page import="java.sql.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Clue-Less Demo by Binary Tree</title>
</head>
<style>
#header {
    background-color:DarkGreen;
    color:white;
    text-align:center;
    padding:1px;
}
#nav {
    line-height:30px;
    background-color:Gold ;
    height:1080px;
    width:300px;
    float:left;
    padding:5px; 
}
#section {
    width:350px;
    float:left;
    padding:10px; 
}
#footer {
    background-color:DarkGreen;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
<% 


String location= request.getParameter("location");
String playerName= request.getParameter("playerName");
System.out.println(playerName);
String playerCharacter= request.getParameter("playerCharacter");
System.out.println(playerCharacter);
String newLocation= request.getParameter("newLocation");
int card1= Integer.parseInt(request.getParameter("card1"));
int card2= Integer.parseInt(request.getParameter("card2"));
int card3= Integer.parseInt(request.getParameter("card3"));

String URL="jdbc:mysql://localhost:3306/ClueLessBinaryTree";
String USERNAME= "root";
String PASSWORD= "root";
Connection connection=null;
PreparedStatement movePlayer= null;
ResultSet resultSet= null;
connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);

PreparedStatement insertPlayers= null;
PreparedStatement selectPlayers= null;
PreparedStatement selectPlayer0= null;
PreparedStatement selectPlayer1= null;
PreparedStatement selectPlayer2= null;
PreparedStatement selectPlayer3= null;
PreparedStatement selectPlayer4= null;
PreparedStatement selectPlayer5= null;
ResultSet resultSet0= null;
ResultSet resultSet1= null;
ResultSet resultSet2= null;
ResultSet resultSet3= null;
ResultSet resultSet4= null;
ResultSet resultSet5= null;

String sql0="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(0)";
String sql1="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(1)";
String sql2="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(2)";
String sql3="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(3)";
String sql4="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(4)";
String sql5="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(5)";
selectPlayer0= connection.prepareStatement(sql0);
selectPlayer1= connection.prepareStatement(sql1);
selectPlayer2= connection.prepareStatement(sql2);
selectPlayer3= connection.prepareStatement(sql3);
selectPlayer4= connection.prepareStatement(sql4);
selectPlayer5= connection.prepareStatement(sql5);

response.setHeader("Refresh" , "15; url=game.jsp?playerCharacter="+playerCharacter+"&playerName="+playerName+"&location="+location+"&card1="+card1+"&card2="+card2+"&card3="+card3); 
String suspect= request.getParameter("suspect");
String weapon= request.getParameter("weapon");
String room= request.getParameter("room");
String win= "win.jsp";
String lose= "lose.jsp";

%>

<body bgcolor="#BED661">
<div id="header">
<h2>Clue-Less Board Game Demo </h2>  
<h3>Welcome <%=playerName%> !</h3>
</div>
<body bgcolor="#BED661">

<div id="nav">
<%  if (playerCharacter.equals("Scarlet")){
	resultSet0=selectPlayer0.executeQuery();
	resultSet0.next();
	String usercharacter=resultSet0.getString("CHARACTER");
	location=resultSet0.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<% 
	if(newLocation!=null){
	String sql00="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(0)";
	movePlayer= connection.prepareStatement(sql00);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql01="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(0)";
	resultSet= movePlayer.executeQuery(sql01);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<%  if (playerCharacter.equals("Mustard")){
	resultSet1=selectPlayer1.executeQuery();
	resultSet1.next();		
	String usercharacter=resultSet1.getString("CHARACTER");
	location=resultSet1.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<% 	if(newLocation!=null){
	String sql10="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(1)";
	movePlayer= connection.prepareStatement(sql10);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql11="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(1)";
	resultSet= movePlayer.executeQuery(sql11);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<%  if (playerCharacter.equals("White")){
	resultSet2=selectPlayer2.executeQuery();
	resultSet2.next();
	String usercharacter=resultSet2.getString("CHARACTER");
	location=resultSet2.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<% 	if(newLocation!=null){
	String sql20="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(2)";
	movePlayer= connection.prepareStatement(sql20);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql21="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(2)";
	resultSet= movePlayer.executeQuery(sql21);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<% if (playerCharacter.equals("Green")){
	resultSet3=selectPlayer3.executeQuery();
	resultSet3.next();
	String usercharacter=resultSet3.getString("CHARACTER");
	location=resultSet3.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%  if(newLocation!=null){
	String sql30="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(3)";
	movePlayer= connection.prepareStatement(sql30);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql31="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(3)";
	resultSet= movePlayer.executeQuery(sql31);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<% if (playerCharacter.equals("Peacock")){
	resultSet4=selectPlayer4.executeQuery();
	resultSet4.next();
	String usercharacter=resultSet4.getString("CHARACTER");
	location=resultSet4.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%  if(newLocation!=null){
	String sql40="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(4)";
	movePlayer= connection.prepareStatement(sql40);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql41="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(4)";
	resultSet= movePlayer.executeQuery(sql41);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<% if (playerCharacter.equals("Plum")){
	resultSet5=selectPlayer5.executeQuery();
	resultSet5.next();
	String usercharacter=resultSet5.getString("CHARACTER");
	location=resultSet5.getString("LOCATION");%>
<h3>You are <%= usercharacter%></h3>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%  if(newLocation!=null){
	String sql50="UPDATE ClueLessBinaryTree.Player SET LOCATION=? WHERE ID=(5)";
	movePlayer= connection.prepareStatement(sql50);
	movePlayer.setString(1, newLocation);
	movePlayer.executeUpdate();
	String sql51="SELECT *FROM ClueLessBinaryTree.Player LOCATION WHERE ID=(5)";
	resultSet= movePlayer.executeQuery(sql51);
	resultSet.next();
	location=resultSet.getString("LOCATION");
	}%>
<h3>Your current location is: <%= location%></h3>
<% }%>

<form name="index" action="" method="post" >
	<input type="submit" value="End Turn" name="restart"/>
</form>

<form name="playerMove" action="game.jsp?playerName=<%= playerName %>&playerCharacter=<%= playerCharacter %>&location=<%= location %>&card1=<%= card1 %>&card2=<%= card2 %>&card3=<%= card3 %>" method="post" >
	<table>
		<tbody>		
		<tr>
			<td>Move to: </td>
			<td>
			<select name="newLocation">
			<option value="Study">Study</option>
			<option value="Hallway_Study_Hall">Hallway_Study_Hall</option>
			<option value="Hall">Hall</option>
			<option value="Hallway_Hall_Lounge">Hallway_Hall_Lounge</option>
			<option value="Lounge">Lounge</option>
			<option value="Hallway_Lounge_DiningRoom">Hallway_Lounge_DiningRoom</option>
			<option value="DinningRoom">DinningRoom</option>
			<option value="Hallway_DiningRoom_Kitchen">Hallway_DiningRoom_Kitchen</option>
			<option value="Kitchen">Kitchen</option>
			<option value="Hallway_Kitchen_Ballroom">Hallway_Kitchen_Ballroom</option>
			<option value="Ballroom">Ballroom</option>
			<option value="Hallway_Ballroom_Conservatory">Hallway_Ballroom_Conservatory</option>
			<option value="Conservatory">Conservatory</option>
			<option value="Hallway_Conservatory_Library">Hallway_Conservatory_Library</option>
			<option value="Library">Library</option>
			<option value="Hallway_Library_Study">Hallway_Library_Study</option>
			<option value="BilliardRoom">BilliardRoom</option>
			<option value="Hallway_BilliardRoom_Hall">Hallway_BilliardRoom_Hall</option>
			<option value="Hallway_BilliardRoom_Library">Hallway_BilliardRoom_Library</option>
			<option value="Hallway_BilliardRoom_DiningRoom">Hallway_BilliardRoom_DiningRoom</option>
			<option value="Hallway_BilliardRoom_Ballroom">Hallway_BilliardRoom_Ballroom</option>
			

															
			</select>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Make Move" name="submit"/>
</form>
<p></p>
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
			<option value="Pipe">Lead Pipe</option>
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

<form name="makeAccusation" action="lose.jsp" method="get" >
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
</div>

<div id="section">
<img src= "http://www.cluedofan.com/cluedoims/fullmap.jpg"style="width:500px;height:500px;">
<h3>Your card on-hand: </h3>
<%  if (card1==1){%>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<%} %>
<%  if (card1==2){%>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<%} %>
<%  if (card1==3){%>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<%} %>
<%  if (card1==4){%>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%} %>
<% if (card1==5){%>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%} %>
<% if (card1==6){%>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%} %>
<% if (card1==7){%>
<img src= "http://www.cluedofan.com/cards/brEscritorio.jpg">
<%} %>
<%if (card1==8){%>
<img src= "http://www.cluedofan.com/cards/brHall.jpg">
<%} %>
<%if (card1==9){%>
<img src= "http://www.cluedofan.com/cards/brEstar.jpg">
<%} %>
<% if (card1==10){%>
<img src= "http://www.cluedofan.com/cards/brJantar.jpg">
<%} %>
<% if (card1==11){%>
<img src= "http://www.cluedofan.com/cards/brCozinha.jpg">
<%} %>
<%if (card1==12){%>
<img src= "http://www.cluedofan.com/cards/brFestas.jpg">
<%} %>
<%if (card1==13){%>
<img src= "http://www.cluedofan.com/cards/brMusica.jpg">
<%} %>
<%if (card1==14){%>
<img src= "http://www.cluedofan.com/cards/brBiblioteca.jpg">
<%} %>
<%if (card1==15){%>
<img src= "http://www.cluedofan.com/cards/brJogos.jpg">
<%} %>
<%if (card1==16){%>
<img src= "http://www.cluedofan.com/cards/brCorda.jpg">
<%} %>
<%if (card1==17){%>
<img src= "http://www.cluedofan.com/cards/brCano.jpg">
<%} %>
<% if (card1==18){%>
<img src= "http://www.cluedofan.com/cards/brPunhal.jpg">
<%} %>
<%if (card1==19){%>
<img src= "http://www.cluedofan.com/cards/brChave.jpg">
<%} %>
<%if (card1==20){%>
<img src= "http://www.cluedofan.com/cards/brCastical.jpg">
<%} %>
<% if (card1==21){%>
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<%} %>

<%  if (card2==1){%>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<%} %>
<%  if (card2==2){%>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<%} %>
<%  if (card2==3){%>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<%} %>
<%  if (card2==4){%>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%} %>
<% if (card2==5){%>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%} %>
<% if (card2==6){%>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%} %>
<% if (card2==7){%>
<img src= "http://www.cluedofan.com/cards/brEscritorio.jpg">
<%} %>
<%if (card2==8){%>
<img src= "http://www.cluedofan.com/cards/brHall.jpg">
<%} %>
<%if (card2==9){%>
<img src= "http://www.cluedofan.com/cards/brEstar.jpg">
<%} %>
<% if (card2==10){%>
<img src= "http://www.cluedofan.com/cards/brJantar.jpg">
<%} %>
<% if (card2==11){%>
<img src= "http://www.cluedofan.com/cards/brCozinha.jpg">
<%} %>
<%if (card2==12){%>
<img src= "http://www.cluedofan.com/cards/brFestas.jpg">
<%} %>
<%if (card2==13){%>
<img src= "http://www.cluedofan.com/cards/brMusica.jpg">
<%} %>
<%if (card2==14){%>
<img src= "http://www.cluedofan.com/cards/brBiblioteca.jpg">
<%} %>
<%if (card2==15){%>
<img src= "http://www.cluedofan.com/cards/brJogos.jpg">
<%} %>
<%if (card2==16){%>
<img src= "http://www.cluedofan.com/cards/brCorda.jpg">
<%} %>
<%if (card2==17){%>
<img src= "http://www.cluedofan.com/cards/brCano.jpg">
<%} %>
<% if (card2==18){%>
<img src= "http://www.cluedofan.com/cards/brPunhal.jpg">
<%} %>
<%if (card2==19){%>
<img src= "http://www.cluedofan.com/cards/brChave.jpg">
<%} %>
<%if (card2==20){%>
<img src= "http://www.cluedofan.com/cards/brCastical.jpg">
<%} %>
<% if (card2==21){%>
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<%} %>

<%  if (card3==1){%>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<%} %>
<%  if (card3==2){%>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<%} %>
<%  if (card3==3){%>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<%} %>
<%  if (card3==4){%>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<%} %>
<% if (card3==5){%>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<%} %>
<% if (card3==6){%>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<%} %>
<% if (card3==7){%>
<img src= "http://www.cluedofan.com/cards/brEscritorio.jpg">
<%} %>
<%if (card3==8){%>
<img src= "http://www.cluedofan.com/cards/brHall.jpg">
<%} %>
<%if (card3==9){%>
<img src= "http://www.cluedofan.com/cards/brEstar.jpg">
<%} %>
<% if (card3==10){%>
<img src= "http://www.cluedofan.com/cards/brJantar.jpg">
<%} %>
<% if (card3==11){%>
<img src= "http://www.cluedofan.com/cards/brCozinha.jpg">
<%} %>
<%if (card3==12){%>
<img src= "http://www.cluedofan.com/cards/brFestas.jpg">
<%} %>
<%if (card3==13){%>
<img src= "http://www.cluedofan.com/cards/brMusica.jpg">
<%} %>
<%if (card3==14){%>
<img src= "http://www.cluedofan.com/cards/brBiblioteca.jpg">
<%} %>
<%if (card3==15){%>
<img src= "http://www.cluedofan.com/cards/brJogos.jpg">
<%} %>
<%if (card3==16){%>
<img src= "http://www.cluedofan.com/cards/brCorda.jpg">
<%} %>
<%if (card3==17){%>
<img src= "http://www.cluedofan.com/cards/brCano.jpg">
<%} %>
<% if (card3==18){%>
<img src= "http://www.cluedofan.com/cards/brPunhal.jpg">
<%} %>
<%if (card3==19){%>
<img src= "http://www.cluedofan.com/cards/brChave.jpg">
<%} %>
<%if (card3==20){%>
<img src= "http://www.cluedofan.com/cards/brCastical.jpg">
<%} %>
<% if (card3==21){%>
<img src= "http://www.cluedofan.com/cards/brRevolver.jpg">
<%} %>
</div>
<jsp:include page="gamestatus.jsp"/>

<div id="footer">
Copyright ©2015 Binary Tree. All Rights Reserved.
</div>
</body>
</html>