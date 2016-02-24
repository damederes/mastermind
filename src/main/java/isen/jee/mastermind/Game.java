package isen.jee.mastermind;

import java.util.ArrayList;

import isen.jee.mastermind.Combination.Colors;

public class Game {
	String status="0";
	int[] result = new int[2];
	int numberOfTry = -1; 

	


	public int getNumberOfTry() {
		return numberOfTry;
	}
	public void setNumberOfTry(int numberOfTry) {
		this.numberOfTry = numberOfTry;
	}

	Combination referenceCombination;

	public Game(String color1, String color2, String color3, String color4) {
		referenceCombination = new Combination(color1,color2,color3,color4);
		
	}
	public Game() {
		referenceCombination = new Combination();
	}
	
	
	
	
	public String endingStatus() {
		
		if (numberOfTry>8 && result[0]!=4){   // number of try commence a -1 donc en allant jusque 8 nous avons 10 essais.
			status = "perdu";
		}
		else if (result[0] == 4){
			status = "gagné";
		}
		return status;
	}
	
	public void testNewCombination(Combination combination){
		result[0]=0;
		result[1]=0;
		for (int i = 0 ; i < 4 ; i++){
			for (int j = 0 ; j < 4 ; j++){
				if(combination.colors[i] == referenceCombination.colors[j]){
					if(i==j){
						result[0]++;
					}
					else{
						result[1]++;
					}
				}
			}
		}

		numberOfTry++;
		
	}
	
	
	

	
}
