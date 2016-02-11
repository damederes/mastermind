package isen.jee.mastermind;

import static org.assertj.core.api.Assertions.assertThat;


import org.junit.Test;



public class CombinationTest {
	
	/*
	 Dans ce test, nous voulons vérifier que si une combinaison contient plusieurs fois la même couleur 
	 alors celle ci sera modifiée de manière à ne plus avoir de doublon de couleur suite à l'utilisation 
	 de la fonstion checkThatTherIsNoDoublonInRandomCombination()
	 */
	@Test
	public void it_can_change_a_color_if_doublon() throws Exception{
		
		Combination combination = new Combination("red","red","white","purple");
		combination.checkThatThereIsNoDoublonInRandomCombination();
		assertThat(combination.colors[0]).isNotEqualTo(combination.colors[1]);
	}
	
	
	
}
