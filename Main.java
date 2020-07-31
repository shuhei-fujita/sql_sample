import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        // Your code here!
        
        for(int i = 1; i <= 9; i++) {
            for(int j = 1; j <= 9; j++) {
                int number = i * j;
                if(String.valueOf(number).length() == 1) {
                    System.out.print("  " + i * j);
                } else {
                    System.out.print(" " + i * j);
                }
            }
            System.out.println("");
        }
    }
}
