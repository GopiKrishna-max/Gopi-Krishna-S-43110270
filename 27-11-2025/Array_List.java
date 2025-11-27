package nov_27;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class Array_List {

    public static void main(String[] args) {

        String[] values = {"A", "b", "@", "-", "Hii", "Gopi", "100", "!", "*", "@"};

        List<String> arrayList = new ArrayList<>();
        List<String> linkedList = new LinkedList<>();

        for (String a : values) {
            arrayList.add(a);
            linkedList.add(a);
        }

        System.out.println("ArrayList Values: " + arrayList);
        System.out.println("LinkedList Values: " + linkedList);
    }
}
