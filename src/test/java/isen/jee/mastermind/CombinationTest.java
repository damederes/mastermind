package isen.jee.mastermind;

import static org.junit.Assert.*;

import org.junit.Test;



public class CombinationTest {

	@Test
	public void it_can_create_a_combination() throws Exception{

		//Quel est l'objectf de ce test ? Combination est un objet, le créer
        //veut dire appeler sont constructeur, c'est tout.

		Boolean isRightColor = false;
		Combination cb = new Combination();
		cb.createCombination();
		Piece piece = new Piece();

		//Là je ne vois pas ce que vous tester :
        // * voulez vous tester que vous pouvez itérer sur le tableau
        // * voulez vous tester que chaque case est initialisée à une couleur ?
        // La deuxième proposition est plus orienté métier
        //
        //assertNotNull(cb.getCouleur(0));
        //assertNotNull(cb.getCouleur(1));
        //assertNotNull(cb.getCouleur(2));
        //assertNotNull(cb.getCouleur(3));

		for (int i = 0; i < cb.combinationArray.length; i++){
			for (int j = 0; j < 8; j++){
				if(piece.colors.get(j) == cb.combinationArray[i].getColor()){
					isRightColor = true;
				}
			}
			assertTrue(isRightColor);
			isRightColor = false;

		}

	}

	@Test
	public void it_can_compare_combinations() throws Exception{

		//Pour comparer deux combinaisons, créez deux combinaisons... et comparez les
        // Combination cb1 = new Combination(RED, WHITE, YELLOW, ORANGE);
        // Combination cb2 = new Combination(RED, WHITE, YELLOW, PURPLE);
        // Combination cb3 = new Combination(RED, WHITE, YELLOW, ORANGE);
        // assertFalse(cb1.equals(cb2));
        // assertTrue(cb1.equals(cb3));

		Piece piece= new Piece();
		String[] color = new String[4];
		String[] secondColor = new String[4];
		String[] thirdColor = new String[4];
		String[] fourthColor = new String[4];


		for (int i = 0; i < 4 ;i++){
			color [i] = piece.colors.get(i);
			secondColor[3-i] = piece.colors.get(i);
			fourthColor[i] = piece.colors.get(i+4);
		}

		thirdColor[0]=piece.colors.get(0);
		thirdColor[1]=piece.colors.get(1);
		thirdColor[2]=piece.colors.get(3);
		thirdColor[3]=piece.colors.get(2);

		Combination cb1 = new Combination();
		cb1.createCombination(color);


		Combination cb2 = new Combination();
		cb2.createCombination(color);

		Combination cb3 = new Combination();
		cb3.createCombination(secondColor);

		Combination cb4 = new Combination();
		cb4.createCombination(thirdColor);

		Combination cb5 = new Combination();
		cb5.createCombination(fourthColor);


		cb1.compareCombination(cb2);
		cb3.compareCombination(cb2);
		cb4.compareCombination(cb2);
		cb5.compareCombination(cb2);

		assertEquals(4, cb1.responseArray[0]);
		assertEquals(0, cb1.responseArray[1]);

		assertEquals(0, cb3.responseArray[0]);
		assertEquals(4, cb3.responseArray[1]);

		assertEquals(2, cb4.responseArray[0]);
		assertEquals(2, cb4.responseArray[1]);

		assertEquals(0, cb5.responseArray[0]);
		assertEquals(0, cb5.responseArray[1]);
	}


	@Test
	public void it_can_generate_random_combination()throws Exception {

		// Ce genre de test peux être aléatoire. La probabilité de tirage de deux
		// combinaison égales n'est pas nulle.
		Combination combination1 = new Combination();
		Combination combination2 = new Combination();

		combination1.createCombination();
		combination2.createCombination();

		boolean isEquals = true;
			for (int i = 0; i<4; i++){
				if (combination1.combinationArray[i] != combination2.combinationArray[i]) {
					isEquals = false;
				}
			}
			assertFalse(isEquals);
	}
}
