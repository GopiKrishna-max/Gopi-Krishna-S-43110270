package nov_25;

import java.util.HashSet;
import java.util.Set;

public class Array_To_Set {

    public static void main(String[] args) {

        int[] arr = {10, 20, 10, 30, 40, 20, 50};

        Set<Integer> set = new HashSet<>();

        for (int value : arr) {
            set.add(value);
        }

        System.out.println("Converted Set: " + set);
    }
}
