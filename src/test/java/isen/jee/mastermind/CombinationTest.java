package isen.jee.mastermind;

import static org.junit.Assert.*;

import org.junit.Test;

public class CombinationTest {
	
	@Test
		Combination cb = new Combination();
		cb.createCombination();
		
		for (int i = 0; i < cb.combinationArray.length; i++){
			
		}
	}
	
	@Test
	public void it_can_compare_combinations() throws Exception{
		
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
