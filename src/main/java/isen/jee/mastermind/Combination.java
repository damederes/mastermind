package isen.jee.mastermind;



public class Combination {

	Piece combinationArray[] = new Piece[4];
	int responseArray[] = new int[2];

	public void createCombination() {
		for (int i = 0; i < 4; i++) {
			combinationArray[i] = new Piece();
		}
	}
	
	
	public void createCombination(String color[]) {
		for (int i = 0; i < 4; i++) {
			combinationArray[i] = new Piece(color[i]);	
		}
	}

	
	public void compareCombination(Combination otherCombi) {
		int goodColorGoodPlace = 0;
		int goodColorBadPlace = 0;
		for (int i = 0; i < 4; i++){
			for (int j = 0; j < 4; j++){
				if(i == j){
					if(otherCombi.combinationArray[i].getColor() == combinationArray[j].getColor()){
						goodColorGoodPlace+=1;
					}		
				}
				else{
					if(otherCombi.combinationArray[i].getColor() == combinationArray[j].getColor()){
						goodColorBadPlace+=1;
					}
				}
			}
		}
		responseArray[0] = goodColorGoodPlace;
		responseArray[1] = goodColorBadPlace;
	}
	
	public void isThereAWinner(){
		if(responseArray[0] == 4){
			// There is a winnerrrrrrr   !!!!!
		}
	}

}
