/**
 * 
 */
package Model;

import java.util.Random;

/**
 * @author Chin-Ting Ko
 *
 */
public class ServerGame {

	private String suspectSolution= "Professor Plum";
	
	public int randomCard() {
		Random rand = new Random();
		int  n = rand.nextInt(20) + 1;
		return n;
	}
	
	public String getsuspectSolution() {
		return suspectSolution;
	}

	private String weaponSolution= "Revolver";

	public String getweaponSolution() {
		return weaponSolution;
	}
	private String roomSolution= "Study";

	public String getroomSolution() {
		return roomSolution;
	}
}

