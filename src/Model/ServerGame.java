/**
 * 
 */
package Model;


/**
 * @author Chin-Ting Ko
 *
 */
public class ServerGame {

	private int value;
	String Name= "Miss Scarlet";
	String Weapon= "Rope";
	String Location= "Lounge";
	
	/**
	 * @return the value
	 */
	public int getValue() {
		return value;
	}

	/**
	 * @param value the value to set
	 */
	public void setValue(int value) {
		if (value<0){
			this.value=0;
			} else{
			this.value = value;
			}
	}


	
}
