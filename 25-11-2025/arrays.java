package nov_25;

import java.util.Arrays;

public class arrays {

    public static void main(String[] args) {

        int[] arr = {5, 2, 8, 1, 9};
        System.out.println("Original: " + Arrays.toString(arr));

        Arrays.sort(arr);
        System.out.println("Sorted:   " + Arrays.toString(arr));

        int[] copy1 = Arrays.copyOf(arr, 7);
        System.out.println("Copy (len7): " + Arrays.toString(copy1));

        int[] copyRange = Arrays.copyOfRange(arr, 1, 4);
        System.out.println("Range [1..3]: " + Arrays.toString(copyRange));

        int[] filled = new int[4];
        Arrays.fill(filled, 100);
        System.out.println("Filled:   " + Arrays.toString(filled));

        int[] arr2 = {1, 2, 5, 8, 9};
        System.out.println("Equals arr vs arr2? " + Arrays.equals(arr, arr2));

        int idx = Arrays.binarySearch(arr, 8);
        System.out.println("Index of 8: " + idx);

        int[][] twoD = {{1, 2}, {3, 8}};
        System.out.println("2D array: " + Arrays.deepToString(twoD));

        int mismatchIndex = -1;
        for (int i = 0; i < Math.min(arr.length, arr2.length); i++) {
            if (arr[i] != arr2[i]) {
                mismatchIndex = i;
                break;
            }
        }
        System.out.println("First mismatch index: " + mismatchIndex);
    }
}
