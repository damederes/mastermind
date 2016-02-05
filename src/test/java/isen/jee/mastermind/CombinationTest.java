package isen.jee.mastermind;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;

import org.junit.Test;



public class CombinationTest {
	@Test
	public void it_can_change_a_color_if_doublon() throws Exception{
		
		Combination combination = new Combination("red","red","white","purple");
		combination.checkThatTherIsNoDoublonInRandomCombination();
		assertThat(combination.colors[0]).isNotEqualTo(combination.colors[1]);
	}
}
