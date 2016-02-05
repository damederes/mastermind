package isen.jee.mastermind;


public class Game {
	int[] result = new int[2];
	Combination referenceCombination;

	public Game(String color1, String color2, String color3, String color4) {
		referenceCombination = new Combination(color1,color2,color3,color4);
		
	}
	public Game() {
		referenceCombination = new Combination();
	}
	
	
	
	
	public Boolean isEnded() {
		boolean isEnded = false;
		if (result[0] == 4){
			isEnded=true;
		}
		return isEnded;
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
	}
	
	
	
	

	
}
