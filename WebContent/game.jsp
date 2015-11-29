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

<% 


String location= request.getParameter("location");
ServerGame test= new ServerGame();
String Name1= test.getValue();

String playerName= request.getParameter("playerName");
System.out.println(playerName);

int playerCharacter= Integer.parseInt(request.getParameter("playerCharacter"));
System.out.println(playerCharacter);

String newLocation= request.getParameter("newLocation");

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

response.setHeader("Refresh" , "15; url=game.jsp?playerCharacter="+playerCharacter+"&playerName="+playerName+"&location="+location); 
%>

<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>
<h2>Welcome <%=playerName%> !</h2>
<%  if (playerCharacter==0){
	resultSet0=selectPlayer0.executeQuery();
	resultSet0.next();
	String usercharacter=resultSet0.getString("CHARACTER");
	location=resultSet0.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<%  if (playerCharacter==1){
	resultSet1=selectPlayer1.executeQuery();
	resultSet1.next();		
	String usercharacter=resultSet1.getString("CHARACTER");
	location=resultSet1.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<%  if (playerCharacter==2){
	resultSet2=selectPlayer2.executeQuery();
	resultSet2.next();
	String usercharacter=resultSet2.getString("CHARACTER");
	location=resultSet2.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<% if (playerCharacter==3){
	resultSet3=selectPlayer3.executeQuery();
	resultSet3.next();
	String usercharacter=resultSet3.getString("CHARACTER");
	location=resultSet3.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<% if (playerCharacter==4){
	resultSet4=selectPlayer4.executeQuery();
	resultSet4.next();
	String usercharacter=resultSet4.getString("CHARACTER");
	location=resultSet4.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<% if (playerCharacter==5){
	resultSet5=selectPlayer5.executeQuery();
	resultSet5.next();
	String usercharacter=resultSet5.getString("CHARACTER");
	location=resultSet5.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
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
<p>Your location is: <%= location%></p>
<% }%>

<form name="playerMove" action="game.jsp?playerName=<%= playerName %>&playerCharacter=<%= playerCharacter %>&location=<%= location %>" method="post" >
	<table>
		<tbody>		
		<tr>
			<td>Make Your Move: </td>
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
	<input type="submit" value="Move" name="submit"/>
</form>
<p></p>


<jsp:include page="suggestion.jsp"/>

<jsp:include page="gamestatus.jsp"/>


</body>
</html>