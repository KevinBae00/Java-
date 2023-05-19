import java.util.Scanner;

public class LoopEx {
    public static void main(String[] args) {
//        int sum = 0;
//        for (int i = 1; i < 11; i++) {
//            if (i % 2 == 1) sum += i;
//            else sum -= i;
//        }
//        System.out.println(sum);

//        int sum = 0;
//        int num = 0;
//        int s = 1;
//        for (int i = 1; i <= 10; i++, s = -s) {
//            num = s * i;
//            sum += num;
//        }
//        System.out.println(sum);

        // 방정식 2x+4y=10의 모든 해를 구하시오
        // 0<=x<=10, 0<=y<=10

//        for (int x = 0; x <= 10; x++) {
//            for (int y = 0; y <= 10; y++) {
//                if (2 * x + 4 * y == 10)
//                    System.out.println("x: " + x + ", y: " + y);
//            }
//        }

//        double sum = 0;
//        double n = 1;
//
//        while (n <= 10) {
//            sum += (n - 1) / n;
//            n++;
//        }
//
//        System.out.println(sum);


//        int k = 12345;
//        int sum = 0;

//        while (true) {
//            sum += k % 10;
//            k /= 10;
//            if (k < 1) break;
//        }

//        System.out.println(sum);

//        for (int i = 0; i <= 10; i++) {
//            if (i % 2 == 0) continue;
//            System.out.println(i + "hello");
//        }

        for (int i = 5; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
