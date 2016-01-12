package isen.jee.mastermind;



import static org.junit.Assert.*;

import org.junit.Test;

public class CombinationTest {
	
	@Test
	public void it_can_create_a_combination() throws Exception{
		Boolean isRightColor = false;
		Combination cb = new Combination();
		cb.createCombination();
		
		for (int i = 0; i < cb.combinationArray.length; i++){
			for (int j = 0; j < 8; j++){
				if(Piece.Colors.values()[j] == cb.combinationArray[i].getColor()){
					isRightColor = true;
				}
			}
			assertTrue(isRightColor);
			isRightColor = false;
			
		}
		
	}
	
	@Test
	public void it_can_compare_combinations() throws Exception{
		
	}

}
