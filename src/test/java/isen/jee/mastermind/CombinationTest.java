package isen.jee.mastermind;

import static org.assertj.core.api.Assertions.assertThat;


import org.junit.Test;



public class CombinationTest {
	
	/*
	 Dans ce test, nous voulons v�rifier que si une combinaison contient plusieurs fois la m�me couleur 
	 alors celle ci sera modifi�e de mani�re � ne plus avoir de doublon de couleur suite � l'utilisation 
	 de la fonstion checkThatTherIsNoDoublonInRandomCombination()
	 */
	@Test
	public void it_can_change_a_color_if_doublon() throws Exception{
		
		Combination combination = new Combination("red","red","white","purple");
		combination.checkThatThereIsNoDoublonInRandomCombination();
		assertThat(combination.colors[0]).isNotEqualTo(combination.colors[1]);
	}
	
	
	
}
