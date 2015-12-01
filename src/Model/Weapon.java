package Model;
import java.sql.*;


public class Weapon {
	String URL="jdbc:mysql://cluelessbinarytree.cyfolv83fu3j.us-west-2.rds.amazonaws.com:3306/ClueLessBinaryTree";
	String USERNAME= "BinaryTree";
	String PASSWORD= "BinaryTree";
	
	Connection connection=null;
	PreparedStatement selectWeapons= null;
	ResultSet rsWeapon= null;
	
	public Weapon() {

		// Connect to MySQL
		try {
			connection=DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("Player connected to database");
			String sql2="SELECT *FROM ClueLessBinaryTree.Weapon";
			selectWeapons= connection.prepareStatement(sql2);
			
		} catch (SQLException e) {
			System.out.println("ERROR: Player could not connect to the database");
			e.printStackTrace();
		}
	}	
	public ResultSet getWeapons(){
		
		try {
			rsWeapon= selectWeapons.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return rsWeapon;
	}	
}
