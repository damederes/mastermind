package isen.jee.mastermind;

import java.util.Random;

public enum Colors {
    RED, YELLOW, GREEN, BLUE, ORANGE, WHITE, PURPLE, BLACK;

    public static Colors random() {
        return values()[new Random().nextInt(values().length)];
    }
}