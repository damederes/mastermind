package isen.jee.mastermind;

import static org.junit.Assert.*;

import org.junit.Test;



public class CombinationTest {
	
	@Test
	public void it_can_create_a_combination() throws Exception{
		Boolean isRightColor = false;
		Combination cb = new Combination();
		cb.createCombination();
		Piece piece = new Piece();
		
		for (int i = 0; i < cb.combinationArray.length; i++){
			for (int j = 0; j < 8; j++){
				if(piece.colors.get(j) == cb.combinationArray[i].getColor()){
					isRightColor = true;
				}
			}
			assertTrue(isRightColor);
			isRightColor = false;
			
		}
		
	}
	
	@Test
	public void it_can_compare_combinations() throws Exception{
		
		Piece piece= new Piece();
		String[] color = new String[4];
		for (int i = 0; i < 4 ;i++){
			color [i] = piece.colors.get(i);
		}
		
		Combination cb1 = new Combination();
		cb1.createCombination(color);
		
		
		Combination cb2 = new Combination();
		cb2.createCombination(color);
		
		cb1.compareCombination(cb2);
		assertEquals(4, cb1.responseArray[0]);
		assertEquals(0, cb1.responseArray[1]);
		
	}

	
	@Test
	public void it_can_generate_random_combination()throws Exception {
		Combination combination1 = new Combination();
		Combination combination2 = new Combination();
		
		combination1.createCombination();
		combination2.createCombination();
		
		boolean isEquals = true;
			for (int i = 0; i<4; i++){
				if (combination1.combinationArray[i] != combination2.combinationArray[i]) {
					isEquals = false;
				}
			}
			assertFalse(isEquals);
	}
}
