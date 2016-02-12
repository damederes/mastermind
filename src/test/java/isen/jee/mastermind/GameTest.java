package isen.jee.mastermind;

import static org.junit.Assert.*;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class GameTest {
	/*
	 * Nous voulons ici tester le bon fonctionnement d'une partie:
	 * lorsque nous comparons deux combinaisons identiques
	 *  le resultat final est true sinon il s'agit de false
	 */
	@Test
	public void it_can_play_a_game() throws Exception{
		
		
		Game game = new Game("red","orange","white","black");
		
		game.testNewCombination(new Combination("red","orange","white","purple"));
		assertFalse(game.isEnded());
				
		game.testNewCombination(new Combination("red","orange","white","black"));
		assertTrue(game.isEnded());
		
	}
		
	/*
	 * Dans ce test, nous voulons v�rifie que le tableau result 
	 * renvoi bien les bonnes valeurs suite � la comparaison de 
	 * deux combinations
	 */
	@Test
	public void it_can_compare_two_combinations() throws Exception{
		
		Game game = new Game("red","yellow","white","purple");
		
		
		
		Combination combination1 = new Combination("red","yellow","white","purple");
		Combination combination2 = new Combination("black","orange","green","blue");
		Combination combination3 = new Combination("red","yellow","purple","white");
		Combination combination4 = new Combination("yellow","red","purple","white");
		
		game.testNewCombination(combination1);
		assertThat(game.result[0]).isEqualTo(4);
		assertThat(game.result[1]).isEqualTo(0);
		
		game.testNewCombination(combination2);
		assertThat(game.result[0]).isEqualTo(0);
		assertThat(game.result[1]).isEqualTo(0);
	
		game.testNewCombination(combination3);
		assertThat(game.result[0]).isEqualTo(2);
		assertThat(game.result[1]).isEqualTo(2);
		
		game.testNewCombination(combination4);
		assertThat(game.result[0]).isEqualTo(0);
		assertThat(game.result[1]).isEqualTo(4);
	}
	
}