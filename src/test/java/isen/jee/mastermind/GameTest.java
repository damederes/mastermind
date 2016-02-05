package isen.jee.mastermind;

import static org.junit.Assert.*;

import org.junit.Test;

public class GameTest {

	@Test
	public void it_can_play_a_game() throws Exception{
		
		
		Game game = new Game("RED","ORANGE","WHITE","BLACK");
		
		game.testNewCombination(new Combination("RED","ORANGE","WHITE","PURPLE"));
		assertFalse(game.isEnded());
				
		game.testNewCombination(new Combination("RED","ORANGE","WHITE","BLACK"));
		assertTrue(game.isEnded());
		
	}
		
	
}
