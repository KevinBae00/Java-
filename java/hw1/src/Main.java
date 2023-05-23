public class Main {
    public static void main(String[] args) {
//        for (int i = 1; i <= 11; i++) {
//            for (int j = 1; j <= 11; j++) {
//                if (i <= 6) {
//                    if (j <= i && j <= 6) System.out.print("*");
//                    else if (11 - i >= j) System.out.print(" ");
//                    else System.out.print("*");
//                } else {// i>=7
//                    if (j <= 12 - i) System.out.print("*");
//                    else if (j <= i - 1) System.out.print(" ");
//                    else System.out.print("*");
//                }
//            }
//            System.out.println();
//        }

        int start = 2;
        int i = 1;
        for (; ; ) {
            for (int j = start; j <= start + 2; j++) {
                if (j > 9) continue;
                System.out.printf("%d*%d=%-2d", j, i, i * j);
                System.out.print("  ");
            }
            System.out.println();
            i++;

            if (i > 3) {
                if (start + 3 > 9) break;
                System.out.println();
                i = 1;
                start += 3;
            }
        }
    }
}