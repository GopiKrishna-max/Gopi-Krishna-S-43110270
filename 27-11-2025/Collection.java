package nov_27;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

public class Collection {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();
        list.add("Alpha");
        list.add("Symbol#");
        list.add("Delta_99");

        System.out.println("ArrayList : ");
        System.out.println(list);

        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }

        System.out.println("---------------------");

        LinkedList<String> ll = new LinkedList<>();
        ll.add("Omega");
        ll.add("@Star");
        ll.add("Phoenix123");

        System.out.println("LinkedList : ");
        System.out.println(ll);

        Iterator<String> itr = ll.iterator();
        while (itr.hasNext()) {
            System.out.println(itr.next());
        }

        System.out.println("---------------------");

        long startTime = System.currentTimeMillis();
        ArrayList<String> test1 = new ArrayList<>();

        for (int i = 0; i < 100000; i++) {
            test1.add("VAL_1");
            test1.add("VAL_2");
            test1.add("VAL_3");
        }

        System.out.println("Time taken by ArrayList: " + (System.currentTimeMillis() - startTime) + "ms");

        startTime = System.currentTimeMillis();
        LinkedList<String> test2 = new LinkedList<>();

        for (int i = 0; i < 100000; i++) {
            test2.add("VAL_1");
            test2.add("VAL_2");
            test2.add("VAL_3");
        }

        System.out.println("Time taken by LinkedList: " + (System.currentTimeMillis() - startTime) + "ms");
        System.out.println();
    }
}
