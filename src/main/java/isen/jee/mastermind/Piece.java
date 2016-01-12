package isen.jee.mastermind;

import java.util.Random;

public class Piece {

	public Piece(){
		this.color = this.chooseRandomColor();
	}
	
	public enum Colors {
		RED, YELLOW, GREEN, BLUE, ORANGE, WHITE, PURPLE, BLACK
	}
	
	private Colors color;

	public Colors chooseRandomColor(){
		int pick = new Random().nextInt(Colors.values().length);
		return Colors.values()[pick];
	}

	public Colors getColor() {
		return color;
	}

	public void setColor(Colors color) {
		this.color = color;
	}
	
}
