package isen.jee.mastermind;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Piece {

	// C'est dommage de ne pas utiliser d'enum, ça vous simplifierait
    // la vie globalement, une pièce c'est une couleur.
    // J'ai créé une enum Colors avec en cadeau un méthode qui vous en
    // tire une au hasard. 
    // Le fait de typer un couleur et de ne pas en faire un String
    // vous aidera par la suite (dans la signature des méthodes par exemple)
	
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
		colors.add("red");
		colors.add("yellow");
		colors.add("green");
		colors.add("blue");
		colors.add("orange");
		colors.add("white");
		colors.add("purple");
		colors.add("black");
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
