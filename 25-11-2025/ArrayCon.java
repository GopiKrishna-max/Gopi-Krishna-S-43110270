package nov_25;

public class ArrayCon {

    public static void main(String[] args) {

        int[] arr1 = {10, 20, 30};
        int[] arr2 = {40, 50, 60, 70};

        int[] result = new int[arr1.length + arr2.length];

        int index = 0;

        for (int i = 0; i < arr1.length; i++) {
            result[index] = arr1[i];
            index++;
        }

        for (int i = 0; i < arr2.length; i++) {
            result[index] = arr2[i];
            index++;
        }

        System.out.print("Final Array: ");
        for (int value : result) {
            System.out.print(value + " ");
        }
    }
}
