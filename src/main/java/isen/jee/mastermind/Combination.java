package isen.jee.mastermind;


import java.util.Random;





public class Combination {
	Colors[] colors = new Colors[4];
	public Combination(String color1, String color2, String color3, String color4){
		colors[0] = Colors.valueOf(color1);
		colors[1] = Colors.valueOf(color2);
		colors[2] = Colors.valueOf(color3);
		colors[3] = Colors.valueOf(color4);
		
		
	}
	public Combination(){
		for(int i = 0 ; i < 4 ; i++){
			colors[i] = randomColor();
		}
	}
	
	public enum Colors {
		red, yellow, green, blue, orange, white, purple, black
	}

	public static Colors randomColor() {
		 int pick = new Random().nextInt(Colors.values().length);
		 return Colors.values()[pick];
	     }
}

