package quiz;

public class Quiz {


    public static void main(String[] args) {
        int sum = 0;
        int local = 0;

        for (int i = 1; i <= 10; i++) {
            local += i;
            sum += local;
        }

        System.out.println(sum);
    }
}
