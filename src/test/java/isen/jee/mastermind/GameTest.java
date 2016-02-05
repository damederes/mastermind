package isen.jee.mastermind;

import static org.junit.Assert.*;

import org.junit.Test;

public class GameTest {

	@Test
	public void it_can_play_a_game() throws Exception{
		
		
		Game game = new Game("red","orange","white","black");
		
		game.testNewCombination(new Combination("red","orange","white","purple"));
		assertFalse(game.isEnded());
				
		game.testNewCombination(new Combination("red","orange","white","black"));
		assertTrue(game.isEnded());
		
	}
		
	
}
