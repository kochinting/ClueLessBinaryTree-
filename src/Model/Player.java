package Model;

import java.sql.*;


public class Player {
	String URL="jdbc:mysql://localhost:3306/ClueLessBinaryTree";
	String USERNAME= "root";
	String PASSWORD= "root";
	
	Connection connection=null;
	PreparedStatement insertPlayers= null;
	PreparedStatement selectPlayers= null;
	ResultSet resultSet= null;
	
	public Player() {

		// Connect to MySQL
		try {
			connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("Player connected to database");
			
			String sql1="INSERT INTO ClueLessBinaryTree.Player (NAME, CHARACTER) VALUES (?, ?)";
			insertPlayers= connection.prepareStatement(sql1);
			
			String sql2="SELECT *FROM ClueLessBinaryTree.Player";
			selectPlayers= connection.prepareStatement(sql2);
			
			
			
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
	
	public int setPlayers(String name, String character){
		
		int result=0;
		try {
		insertPlayers.setString(1,name);
		insertPlayers.setString(1,character);
		result=insertPlayers.executeUpdate();
		
		} catch (SQLException e){
			e.printStackTrace();
		}
		return result;
	}	
}