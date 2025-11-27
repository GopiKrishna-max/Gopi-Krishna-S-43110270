package nov_27;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;

public class JavaSet {

    public static void main(String[] args) {

        HashSet<Integer> set1 = new HashSet<>();
        set1.add(1);
        set1.add(2);
        set1.add(3);
        set1.add(1);
        set1.add(2);

        System.out.println("HashSet (Integers): " + set1);

        LinkedHashSet<String> set2 = new LinkedHashSet<>();
        set2.add("apple");
        set2.add("banana");
        set2.add("mango");
        set2.add("apple");

        System.out.println("LinkedHashSet (Fruits): " + set2);

        TreeSet<String> set3 = new TreeSet<>();
        set3.add("cat");
        set3.add("dog");
        set3.add("ant");
        set3.add("bat");

        System.out.println("TreeSet (Animals): " + set3);
    }
}
