public class HW_Star {

    public static void main(String[] args) {
        for (int i = 1; i <= 11; i++) {
            for (int j = 1; j <= 11; j++) {
                if (i <= 6) {
                    if (j <= i && j <= 6) System.out.print("*");
                    else if (11 - i >= j) System.out.print(" ");
                    else System.out.print("*");
                } else {// i>=7
                    if (j <= 12 - i) System.out.print("*");
                    else if (j <= i - 1) System.out.print(" ");
                    else System.out.print("*");
                }
            }
            System.out.println();
        }
    }

}
