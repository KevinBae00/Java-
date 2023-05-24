public class Function {
    int add(int x, int y) {
        return x + y;
    }

    void arrVal(int[] arr) {
        arr[0] = 10;
        arr[1] = 20;
        System.out.println("메소드에서 출력");
        for (int num : arr) {
            System.out.println(num);
        }
    }
}
