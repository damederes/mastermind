package isen.jee.mastermind;

import java.util.Random;

public class Piece {

	public enum Colors {
		RED, YELLOW, GREEN, BLUE, ORANGE, WHITE, PURPLE, BLACK
	}
	
	public Colors color;

	public Colors chooseRandomColor(){
		int pick = new Random().nextInt(Colors.values().length);
		return Colors.values()[pick];
	}
}
