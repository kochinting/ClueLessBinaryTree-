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
String playerName= request.getParameter("name1");
int playerCharacter= Integer.parseInt(request.getParameter("character1"));
Player player = new Player();

String location= request.getParameter("location");
ServerGame test= new ServerGame();
String Name1= test.getValue();

	String URL="jdbc:mysql://localhost:3306/ClueLessBinaryTree";
	String USERNAME= "root";
	String PASSWORD= "root";
	Connection connection=null;
	PreparedStatement insertPlayers= null;
	PreparedStatement selectPlayers= null;
	PreparedStatement selectPlayer0= null;
	PreparedStatement selectPlayer1= null;
	PreparedStatement selectPlayer2= null;
	PreparedStatement selectPlayer3= null;
	PreparedStatement selectPlayer4= null;
	PreparedStatement selectPlayer5= null;
	ResultSet resultSet= null;
	ResultSet resultSet0= null;
	ResultSet resultSet1= null;
	ResultSet resultSet2= null;
	ResultSet resultSet3= null;
	ResultSet resultSet4= null;
	ResultSet resultSet5= null;
	connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
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

%>
<body bgcolor="#BED661">
<h1>Clue-Less Demo by Binary Tree</h1>

<h2>Welcome <%=playerName%> !</h2>

<%  
	if (playerCharacter==0){
	resultSet0=selectPlayer0.executeQuery();
	resultSet0.next();
	String usercharacter=resultSet0.getString("CHARACTER");
	location=resultSet0.getString("LOCATION");%>
<p>You are <%= usercharacter%></p>
<img src= "http://www.cluedofan.com/cards/uscScarlet92.jpg">
<% }%>

<% if (playerCharacter==1){
	resultSet1=selectPlayer1.executeQuery();
	resultSet1.next();		
	location=resultSet1.getString("LOCATION");%>
<p>You are <%=resultSet1.getString("CHARACTER")%></p>
<img src= "http://www.cluedofan.com/cards/uscMustard92.jpg">
<% }%>

<%  if (playerCharacter==2){
	resultSet2=selectPlayer2.executeQuery();
	resultSet2.next();
	location=resultSet2.getString("LOCATION");%>
<p>You are <%=resultSet2.getString("CHARACTER")%></p>
<img src= "http://www.cluedofan.com/cards/uscWhite92.jpg">
<% }%>

<% if (playerCharacter==3){
	resultSet3=selectPlayer3.executeQuery();
	resultSet3.next();
	location=resultSet3.getString("LOCATION");%>
<p>You are <%=resultSet3.getString("CHARACTER")%></p>
<img src= "http://www.cluedofan.com/cards/uscGreen92.jpg">
<% }%>

<% if (playerCharacter==4){
	resultSet4=selectPlayer4.executeQuery();
	resultSet4.next();
	location=resultSet4.getString("LOCATION");%>
<p>You are <%=resultSet4.getString("CHARACTER")%></p>
<img src= "http://www.cluedofan.com/cards/uscPeacock92.jpg">
<% }%>

<% if (playerCharacter==5){
	resultSet5=selectPlayer5.executeQuery();
	resultSet5.next();
	location=resultSet5.getString("LOCATION");%>
<p>You are <%=resultSet5.getString("CHARACTER")%></p>
<img src= "http://www.cluedofan.com/cards/uscPlum92.jpg">
<% }%>


<p>Please wait others join... </p>

<form name="playerMove" action="game.jsp?playerName=<%= playerName %>&playerCharacter=<%= playerCharacter %>&location=<%= location %>" method="post" >
	<input type="submit" value="Start the Game!" name="submit"/>
</form>
<input name="playerName" type="hidden" value="playerName"/>
<input name="playerCharater" type="hidden" value="playerCharacter"/>
<input name="location" type="hidden" value="location"/>
<p></p>

<%
System.out.println(Name1);
System.out.println(playerName);
System.out.println(playerCharacter);
System.out.println(location);
%>

</body>
</html>