package isen.jee.mastermind;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Piece {
	
	//public enum Colors {
	//	RED, YELLOW, GREEN, BLUE, ORANGE, WHITE, PURPLE, BLACK
	//}
	
	public  List<String> colors = new ArrayList<>();
	
	public Piece(){
		this.color = this.chooseRandomColor();
	}
	
	public Piece(String color ){
		this.color = color;
	}
	
	
	
	private String color;

	public String chooseRandomColor(){
		colors.add("RED");
		colors.add("YELLOW");
		colors.add("GREEN");
		colors.add("BLUE");
		colors.add("ORANGE");
		colors.add("WHITE");
		colors.add("PURPLE");
		colors.add("BLACK");
		Random rand = new Random();
		int nombre = rand.nextInt(8); //Entre 0 et 7
		
		//int pick = new Random().nextInt(Colors.values().length);
		return colors.get(nombre);
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
}
