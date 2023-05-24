public class HW_Mul {
    public static void main(String[] args) {
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
