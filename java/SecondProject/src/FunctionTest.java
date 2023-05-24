public class FunctionTest {
    public static void main(String[] args) {
        int x = 10, y = 20;

        Function f = new Function();
        int result = f.add(x, y);
        System.out.println(result);

        int[] arr = {1, 2, 3, 4, 5};

        for (int num : arr) {
            System.out.println(num);
        }

        f.arrVal(arr);
    }
}
