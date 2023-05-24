package chapter07;

public class MathTest {
    public static void main(String[] args) {
        int[] arr = {1, -3, 4, 3, 34, -3};
        Math math = new Math();
        System.out.println("Max : " + math.max(arr));
        System.out.println("Min : " + math.min(arr));
    }
}
