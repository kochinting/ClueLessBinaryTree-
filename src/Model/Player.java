package Model;

import java.sql.*;


public class Player {
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
	
	public Player() {

		// Connect to MySQL
		try {
			connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("Player connected to database");
			
			//String sql1="INSERT INTO ClueLessBinaryTree.Player (ID, NAME) VALUES (?, ?)";
			insertPlayers= connection.prepareStatement("INSERT INTO Player"+" (NAME, CHARACTER)"+ " VALUES (?, ?)");
			
			String sql0="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(0)";
			//String sql1="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(1)";
			//String sql2="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(2)";
			//String sql3="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(3)";
			//String sql4="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(4)";
			//String sql5="SELECT *FROM ClueLessBinaryTree.Player WHERE ID=(5)";
			String sql="SELECT *FROM ClueLessBinaryTree.Player";
			selectPlayers= connection.prepareStatement(sql);
			selectPlayer0= connection.prepareStatement(sql0);
			//selectPlayer1= connection.prepareStatement(sql1);
			//selectPlayer2= connection.prepareStatement(sql2);
			//selectPlayer3= connection.prepareStatement(sql3);
			//selectPlayer4= connection.prepareStatement(sql4);
			//selectPlayer5= connection.prepareStatement(sql5);
			
			
		} catch (SQLException e) {
			System.out.println("ERROR: Player could not connect to the database");
			e.printStackTrace();
		}
	}	
	public ResultSet getPlayers(){
		try {
		resultSet= selectPlayers.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	public ResultSet getPlayer0(){
		try {
		resultSet0= selectPlayer0.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	public ResultSet getPlayer1(){
		try {
		resultSet1= selectPlayer1.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	
	public ResultSet getPlayer2(){
		try {
		resultSet2= selectPlayer2.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	
	public ResultSet getPlayer3(){
		try {
		resultSet3= selectPlayer3.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	public ResultSet getPlayer4(){
		try {
		resultSet4= selectPlayer4.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	public ResultSet getPlayers5(){
		try {
		resultSet5= selectPlayer5.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return resultSet;
	}	
	public int setPlayers(String name, String character){
		
		int result=0;
		try {
		insertPlayers.setString(1, name);
		insertPlayers.setString(2, character);
		result=insertPlayers.executeUpdate();
		
		} catch (SQLException e){
			e.printStackTrace();
		}
		return result;
	}	
}