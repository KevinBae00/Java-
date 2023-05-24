package chapter07;

public class Math {
    public int max(int[] arr) {
        int m = arr[0];
        for (int i : arr) {
            if (i > m) m = i;
        }
        return m;
    }

    public int min(int[] arr) {
        int m = arr[0];
        for (int i : arr) {
            if (i < m) m = i;
        }
        return m;
    }
}
